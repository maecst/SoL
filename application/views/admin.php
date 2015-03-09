<div id="content">
     
    <h2> Admin Page </h2>
    <br>
    <br>
    <span id="gallerynav">
        [ <a href='/admin/add_photo'>Add a new photo</a> ] &nbsp;&nbsp;
   <!-- [ <a href='/admin/edit_photo'>Edit a photo</a> ] &nbsp;&nbsp;
        [ <a href='/admin/delete_photo'>Delete a photo</a> ] -->
        [ <a href='/admin/add_blogpost'>Add a new blog post</a> ] &nbsp;&nbsp;
   <!-- [ <a href='/admin/edit_blog'>Edit a blog post</a> ] &nbsp;&nbsp;
        [ <a href='/admin/delete_blog'>Delete a blog post</a> ] -->
        
    </span>

<div class="admin_table">
    <table id="list_photos">
        <tr>
            <th>ID</th>
            <th>Upload Date</th>
            <th>Filename</th>
            <th>Description</th>
            <th>Location</th>
            <th>Date Taken</th>
            <th>Folder</th>
            <th>Edit/Del</th>

        </tr>
        {photos}
        <tr>
            <td>{id}</td>
            <td>{upload_date}</td>
            <td> <img src="/assets/images/{foldername}/thumb_{filename}" 
             width="60" height="60"
             class="thumb trans1">
            </td>
            <td>{description}</td>
            <td>{location}</td>
            <td>{date_taken}</td>
            <td>{foldername}</td>
            <td><div class="edit-del">
                    <a href="/assets/admin/edit/{id}"><img src="/assets/images/icon_edit.png"></a>
                    <a href="/assets/admin/edit/{id}"><img src="/assets/images/icon_delete.png"></a>
                </div>
            </td>
        </tr>
        {/photos}
    </table>
</div>
  
</div>

