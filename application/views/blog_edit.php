<div id="content">
    
    <h2> Add a New Blog Post </h2>
    
    <div class="row">
    <br>
        <div class="errors">{message}</div>
        <form action="/admin/submit_post" method="post">
            {f_post_id}
            {f_post_date}
            {f_post_title}
            {f_post_content}

            {btn_post_submit}
        </form>
    </div>

</div>