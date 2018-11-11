<?php
  require('db.php');
  $json = array();
  $description = trim($_GET['description']);
  $id = trim($_GET['id']);
  $date = date('Y-m-d H:i:s');
  $sql = "UPDATE tbl_description SET desc_text='$description' , desc_updated_date='$date' WHERE desc_id='$id'";
  mysqli_query($con,$sql);
  $count = mysqli_affected_rows($con);
  if($count > 0) {
    $json['success'] = true;
    $json['data'] = 'Update OK';
  } else {
    $json['success'] = false;
    $json['data'] = 'Update ERROR';
  }
  mysqli_close($con);
  echo json_encode($json);
?>
