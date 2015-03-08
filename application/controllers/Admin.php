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
        $this->data['title'] = 'Photo Maintenance';
        $this->data['photos'] = $this->photos->all();
        $this->render();
    }
    
    // add a new quotation
    function add() {
       $photo = $this->photos->create();
       $this->present($photo);
    }
    
    // present a quotation for adding/editing function
    function present($photo) {
        
        // format any errors
        $message = '';
        if (count($this->errors) > 0) {
            foreach ($this->errors as $booboo) {
                $message .= $booboo . BR;
            }
        }
        
        // present quote info

        
        $this->data['message'] = $message;
        $this->data['f_pid'] = makeTextField('ID#', 'id', $photo->id, 
                "Unique quote identifier, system-assigned", 10, 10, true);
        $this->data['f_upload_date'] = makeTextField('Upload Date', 'upload_date', $photo->upload_date);
        $this->data['f_upload_file'] = makeTextField('Upload Photo', 'filename', $photo->filename);
        $this->data['f_description'] = makeTextField('Photo Description', 'description', $photo->description);
        $this->data['f_location'] = makeTextField('Where Photo was Taken', 'location', $photo->location);
        $this->data['f_date_taken'] = makeTextField('When Photo was Taken', 'date_taken', $photo->date_taken);
        $this->data['f_folder'] = makeTextField('Folder Name', 'folder', $photo->foldername);
        $this->data['f_category'] = makeTextField('Gallery Name', 'category', $photo->category);
        
        $this->data['pagebody'] = 'photo_edit';
        
        $this->data['f_photo_submit'] = makeSubmitButton(
                'Process Photo', 
                "Click here to validate the photo", 
                'btn-success');
        
        $this->render();
    }
    
    // process a quotation edit
    function confirm() {
        $record = $this->photos->create();
        
        // extract submitted fields
        $record->id = $this->input->post('id');
        $record->update_date = $this->input->post('upload_date');
        $record->description = $this->input->post('description');
        $record->location = $this->input->post('location');
        $record->date_taken = $this->input->post('date_taken');
        $record->category = $this->input->post('category');
        $record->foldername = $this->input->post('folder');
        $record->filename = $this->input->post('filename');
        
        // validate that author is provided
        if (empty($record->folder)) {
            $this->errors[] = 'You must specify the name of the folder where the photo will be saved.';
        }
        if (empty($record->category)) {
            $this->errors[] = 'You must specify the name of the Gallery where the photo will be displayed.';
        }
        
        // redisplay if there are any errors
        if (count($this->errors) > 0) {
            $this->present($record);
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
}

/* End of file Admin.php */
/* Location: application/controllers/Admin.thphp */