<?php
  require('db.php');
  $json = array();
  $data = array();
  $sql = 'SELECT * FROM tbl_img';
  $result = mysqli_query($con,$sql);
  if($result) {
    while($row = mysqli_fetch_assoc($result)) {
      $row['img_id'] = (int)$row['img_id'];
      $data[] = $row;
    }
    $json['success'] = true;
    $json['data'] = $data;
  } else {
    $json['success'] = false;
    $json['data'] = null;
  }
  mysqli_close($con);
  echo json_encode($json);
?>
