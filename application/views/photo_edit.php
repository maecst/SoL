<div id="content">

    <h2> Add a New Photo </h2>
    
    <div class="row">
        <br>
        <div class="errors">{message}</div>

        <form action="/admin/submit_photo" method="post">
            {f_pid}
            {f_upload_date}
            {f_upload_file}
            {f_description}
            {f_location}
            {f_date_taken}
            {f_folder}
            {f_category}

            {btn_photo_submit}
        </form>
    </div>
    
</div>