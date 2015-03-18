<div class="content">
    
    <h3>Upload Successful</h3>
    
    <ul>
        <?php foreach ($upload_data as $item => $value); ?>
        <li><?php echo $item; ?>: <?php echo $value; ?></li>
        </php endforeach; ?>
    </ul>
   
    <p><?php echo ancho('admin', 'Upload Another File?'); ?></p>
    
    
</div>