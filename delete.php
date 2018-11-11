<?php
  require('db.php');
  $json = array();
  $description = trim($_GET['description']);
  $id = trim($_GET['id']);
  $sql = "DELETE FROM tbl_description WHERE desc_id='$id'";
  mysqli_query($con,$sql);
  $count = mysqli_affected_rows($con);
  if($count > 0) {
    $json['success'] = true;
    $json['data'] = 'Delete OK';
  } else {
    $json['success'] = false;
    $json['data'] = 'Delete ERROR';
  }
  mysqli_close($con);
  echo json_encode($json);
?>
