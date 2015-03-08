<?php

/* 
 * Controller for the admin module to allow for quote maintenance.
 * 
 * controllers/Admin.php
 */
class Admin extends Application {
    
    function __construct() {
        parent::__construct();
        $this->load->helper('formfields');
    }
     
    function index() {
        $this->data['pagebody'] = 'admin';
        $this->data['pagetitle'] = 'Admin Page';
        $this->data['photos'] = $this->photos->all();
        $this->data['posts'] = $this->posts->all();
        $this->render();
    }
    
    // add a new photo
    function add_photo() {
       $photo = $this->photos->create();
       $this->present_photo($photo);
    }
    
    function edit_photo() {
        $photo = $this->photos->get();
        $this->photos->update();
        $this->present_photo($photo);
    }
    
    // present a photo for adding/editing function
    function present_photo($photo) {
        
        // format any errors
        $message = '';
        if (count($this->errors) > 0) {
            foreach ($this->errors as $booboo) {
                $message .= $booboo . BR;
            }
        }
        
        // present photo info
        $today = date("Y-m-d");
        $folders = array(
            'blackwhite' => 'Black & White',
            'nature'     => 'Nature',
            'people'     => 'People',
            'places'     => 'Places'
        );

//        $this->upload->initialize($config);
//        $success = $this->upload->do_upload($photo);
//        
//        //get profile image's save path for the db
//        $profilePhoto = "";
//        if($success){
//            $fullPath = $this->upload->data('full_path');
//            $fileName = substr($fullPath, mb_strrpos($fullPath, "/")+1, strlen($fullPath));
//            $profilePhoto = "/uploads/" . $username . "/" . $fileName;
//        }else{
//            $profilePhoto = $user["userpicture"];
//        }
        
        $this->data['message'] = $message;
        $this->data['f_pid'] = makeTextField('Photo ID #', 'id', $photo->id, 
                "Unique quote identifier, system-assigned", 10, 10, true);
        
        $this->data['f_upload_date'] = makeTextField('Upload Date (YYYY-MM-DD)', 'upload_date', $today, '', 19);
        $this->data['f_upload_file'] = makeFileInputBox('Upload a Photo', 'filename', $photo->filename);
        $this->data['f_description'] = makeTextField('Photo Description (max 128 characters)', 'description', $photo->description, '', 128, 45);
        $this->data['f_location'] = makeTextField('Where Photo was Taken (e.g. Stanley Park, Vancouver, B.C.)', 'location', $photo->location, '', 128, 45);
        $this->data['f_date_taken'] = makeTextField('When Photo was Taken (e.g. September 1, 2000)', 'date_taken', $photo->date_taken, '', 32, 32);
        $this->data['f_folder'] = makeComboField('Folder Name', 'folder', $photo->foldername, $folders);
        $this->data['f_category'] = makeComboField('Gallery Name', 'category', $photo->category, $folders);
 
        $this->data['pagebody'] = 'photo_edit';
        
        $this->data['btn_photo_submit'] = makeSubmitButton(
                'Process Photo', 
                "Click here to validate the photo", 
                'btn-success');
        
        $this->render();
    }
    
    // process a photo edit
    function submit_photo() {
        $record = $this->photos->create();
        
        // extract submitted fields
        $record->id = $this->input->post('id');
        $record->upload_date = $this->input->post('upload_date');
        $record->description = $this->input->post('description');
        $record->location = $this->input->post('location');
        $record->date_taken = $this->input->post('date_taken');
        $record->category = $this->input->post('category');
        $record->foldername = $this->input->post('folder');
        $record->filename = $this->input->post('filename');
        
        // validate that author is provided
//        if (empty($record->folder)) {
//            $this->errors[] = 'You must specify the name of the folder where the photo will be saved.';
//        }
//        if (empty($record->category)) {
//            $this->errors[] = 'You must specify the name of the Gallery where the photo will be displayed.';
//        }
        
        // redisplay if there are any errors
        if (count($this->errors) > 0) {
            $this->present_photo($record);
            return;                     // prevents saving
        }
        
        // save stuff
        if (empty($record->id)) {
            $this->photos->add($record);
        } else {
            $this->photos->update($record);
        }
        
        redirect('/admin');
    }
    
    function do_upload($photo) {
        //configure uploader
        $config['upload_path'] = '/uploads/images/' . $photo->folder . '/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 400;
        $config['max_width'] = 1200;
        $config['max_height'] = 1200;
        $config['overwrite'] = TRUE;
        
        $this->load->library('upload', $config);
        
        if (! $this->upload->do_upload()) {
            $error = array('error' => $this->upload->display_errors());
            $this->load->view('upload_form', $error);
            
        } else {
            $data = array('upload_data' => $this->upload->data());
            $this->load->view('upload_success', $data);
        }
    }
    
    
    // add a new post to the blog
    function add_blogpost() {
       $post = $this->posts->create();
       $this->present_blogpost($post);
    }
    
    // present a blog post for adding/editing function
    function present_blogpost($post) {
        
        // format any errors
        $message = '';
        if (count($this->errors) > 0) {
            foreach ($this->errors as $booboo) {
                $message .= $booboo . BR;
            }
        }
        
        // present photo info
        $today = date("Y-m-d");
        $post->date = $today;
        
        $this->data['message'] = $message;
        $this->data['f_post_id'] = makeTextField('Blog Post ID #', 'post_id', $post->id, 
                "Unique blog post identifier, system-assigned", 10, 10, true);
        $this->data['f_post_date'] = makeTextField('Post Date (YYYY-MM-DD)', 'post_date', $today, '', 19);
        $this->data['f_post_title'] = makeTextField('Post Title (max 140 characters)', 'post_title', $post->title, '', 140, 60);
        $this->data['f_post_content'] = makeTextArea('Blog Content', 'post_content', $post->content, '', 66600, 60, 20);
         
        $this->data['pagebody'] = 'blog_edit';
        
        $this->data['btn_post_submit'] = makeSubmitButton(
                'Process Blog Post', 
                "Click here to validate the blog post", 
                'btn-success');
        
        $this->render();
    }
    
    // process a photo edit
    function submit_post() {
        $record = $this->posts->create();
        
        // extract submitted fields
        $record->id = $this->input->post('post_id');
        $record->postdate = $this->input->post('post_date');
        $record->title = $this->input->post('post_title');
        $record->content = $this->input->post('post_content');
        
        // validate that author is provided
//        if (empty($record->post_title)) {
//            $this->errors[] = 'You must add a title for the post.';
//        }
//        if (empty($record->post_content)) {
//            $this->errors[] = 'You cannot submit an empty blog post.';
//        }
        
        // redisplay if there are any errors
        if (count($this->errors) > 0) {
            $this->present_blogpost($record);
            return;                     // prevents saving
        }
        
        // save stuff
        if (empty($record->id)) {
            $this->posts->add($record);
        } else {
            $this->posts->update($record);
        }
        
        redirect('/admin');
    }
}

/* End of file Admin.php */
/* Location: application/controllers/Admin.php */