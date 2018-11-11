<?php
  require('db.php');
  $json = array();
  $description = trim($_GET['description']);
  $id = trim($_GET['id']);
  $date = date('Y-m-d H:i:s');
  $sql = "INSERT INTO tbl_description (desc_text,desc_imgid,desc_userid)VALUES ('$description','$id','1')";
  mysqli_query($con,$sql);
  $count = mysqli_affected_rows($con);
  if($count > 0) {
    $json['success'] = true;
    $json['data'] = 'INSERT OK';
  } else {
    $json['success'] = false;
    $json['data'] = 'INSERT ERROR';
  }
  mysqli_close($con);
  echo json_encode($json);
?>
