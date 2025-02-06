<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>File Upload</title>
  </head>
<style>

*{
  margin:unset;
  text-decoration:unset;
  scrollbar-width:none;
}
.fileInpu{
  text-align: center;
}

</style>
<body>
  <form class="form-control form" method="post" enctype="multipart/form-data">
    <input name="files[]" class="fileInput"multiple=multiple type="file" />
    <input name="submit" type="submit" value="upload" />
  </form>
</body>
<html>
<?php
ini_set('upload_max_filesize', '8192M');
ini_set('max_file_uploads', '500');
ini_set('post_max_size', '8192M');


if(isset($_POST['submit']) ){
  $filesCount = count($_FILES['files']['name']);
  $songs = count($_FILES['files']['name']);

  for($i = 0;$i < $filesCount ;$i++){
    $fileName = $_FILES["files"]["name"][$i];
    $file = file_get_contents($_FILES['files']['tmp_name'][$i]);
    move_uploaded_file($_FILES['files']['tmp_name'][$i], 'content/'.$fileName);
  }
}
