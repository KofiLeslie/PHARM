<?php
session_start();
require "db_connection.php";
require "customclasses.php";

if ($con) {
  $last_name = ucwords($_POST["last_name"]);
  $other_name = ucwords($_POST["other_name"]);
  $contact_number = $_POST["contact_number"];
  $address = ucwords($_POST["address"]);
  $pharmacy_name = ucwords($_POST["pharmacy_name"]);
  $gender = ucwords($_POST["gender"]);
  $username = $_POST["username"];
  $email = $_POST["email"];
  $password = $_POST["password"];
  $admin_level = intval($_POST['admin_type']);
  $userid = generate_id(10);
  $status = $msg = '';
  $query = "SELECT * FROM admin_credentials WHERE CONTACT_NUMBER = '$contact_number'";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_array($result);
  // var_dump($row);
  if ($row) {
    $status = 'error';
    $msg =  "Admin " . $row['NAME'] . " with contact number $contact_number already exists!";
  } else {
    $query = "INSERT INTO admin_credentials (LNAME, OTHERNAME, CONTACT_NUMBER, ADDRESS, PHARMACY_NAME, USERID, USERNAME, EMAIL, GENDER, PASSWORD, ADMIN_TYPE) VALUES('$last_name','$other_name', '$contact_number', '$address', '$pharmacy_name', '$userid', '$username', '$email', '$gender', '$password', '$admin_level')";
    $result = mysqli_query($con, $query);
    if (!empty($result)) {
      $status = 'success';
      $msg = "Admin " . $name . " has been added";
    } else {
      $status = 'error';
      $msg = "System busy. Try again later";
    }
  }
  $_SESSION['msg'] = $msg;
  $_SESSION['status'] = $status;

  header("Location: ../home.php");
}
