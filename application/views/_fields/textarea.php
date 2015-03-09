<div class="control-group">
    <label class="control-label" for="{name}">{label}<br/>
    </label>
    <div class="controls">
        <textarea id="{name}" name="{name}" value="{value}" maxLength="{maxlen}" rows="{rows}" style="width: {size}em; min-height: {rows}em" {disabled}>{value}</textarea>
        <br/>
        <small><em>{explain}</em></small>
    </div>
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace( '{name}' );
    </script>
</div>
