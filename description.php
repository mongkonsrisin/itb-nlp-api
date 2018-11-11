<?php
  require('db.php');
  $json = array();
  $data = array();
  $sql = 'SELECT * FROM tbl_description WHERE desc_imgid='.$_GET['imgid'];
  $result = mysqli_query($con,$sql);
  if($result) {
    while($row = mysqli_fetch_assoc($result)) {
      $row['desc_id'] = (int)$row['desc_id'];
      $row['desc_imgid'] = (int)$row['desc_imgid'];
      $row['desc_userid'] = (int)$row['desc_userid'];
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
