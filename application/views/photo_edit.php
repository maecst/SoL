<div id="content">

    <h2> Add a New Photo </h2>
    <div class="row">
        <div class="errors">{message}</div>
        <br>
        <form action="/admin/confirm" method="post">
            {f_pid}
            {f_upload_date}
            {f_upload_file}
            {f_description}
            {f_location}
            {f_date_taken}
            {f_folder}
            {f_category}

            {f_photo_submit}
        </form>
    </div>
</div>