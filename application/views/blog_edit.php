<div id="content">
    
    <h2> Add a New Blog Post </h2>
    
    <div class="row">
    <br>
        <div class="errors">{message}</div>
        <!-- *** added ID to the URL because disabled fields are ignored at post -->
        <form action="/admin/submit_post/{the_id}" method="post">
            {f_post_id}
            {f_post_date}
            {f_post_title}
            {f_post_content}

            {btn_post_submit}
        </form>
    </div>

</div>