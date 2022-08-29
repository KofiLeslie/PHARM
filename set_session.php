<?php
session_start();
require "php/db_connection.php";
$status = $msg = '';
if ($con) {
  $username = $_POST["username"];
  $password = $_POST["password"];
  $query = "SELECT * FROM admin_credentials WHERE USERNAME = '$username' AND PASSWORD = '$password'";
  $result = mysqli_query($con, $query);
  if ($result->num_rows > 0) {
    $row = mysqli_fetch_array($result);
    if (count($row) > 0) {
      $_SESSION['ad_username'] = $row['LNAME'] . ' ' . $row['OTHERNAME'];
      $_SESSION['ad_id'] = $row['ID'];
      $_SESSION['ad_level'] = $row['ADMIN_TYPE'];
      $status = '200';
      $msg = 'Success';
      $query = "UPDATE admin_credentials SET IS_LOGGED_IN = 'true' WHERE ID = {$_SESSION['ad_id']}";
      $result = mysqli_query($con, $query);
    } else {
      $status = '400';
      $msg = 'Error, User not found!!';
    }
  } else {
    $status = '400';
    $msg = 'Error, User not found!!';
  }
} else {
  $status = '400';
  $msg = 'Error, Database connection error. Check your database configuration';
}
echo json_encode(['status' => $status, 'msg' => $msg]);
