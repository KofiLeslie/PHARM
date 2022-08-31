<?php
session_start();
require "db_connection.php";
require "customclasses.php";

if ($con) {
  $isExist = false;
  $last_name = ucwords($_POST["last_name"]);
  $other_name = ucwords($_POST["other_name"]);
  $contact_number = $_POST["contact_number"];
  $address = ucwords($_POST["address"]);
  $pharmacy_name = ucwords($_POST["pharmacy_name"]);
  $gender = '';
  $username = $_POST["username"];
  $email = $_POST["email"];
  $password = $_POST["password"];
  $admin_level = intval($_POST['admin_type']);
  $userid = generate_id(10);
  $status = $msg = '';
  $date = date('Y-m-d H:i:s');
  // var_dump($_POST);exit;
  // Perform Validation
  // $query_2 = "INSERT INTO users (userid,username,gender,email,password,date,roleid,isActive) VALUES ($userid, '$username', 'male', '$email','$password','$date', 1, 0)";
  //   $result2 = mysqli_query($con, $query_2);
  //   var_dump(mysqli_error($con));exit;
  $query = "SELECT * FROM admin_credentials WHERE CONTACT_NUMBER = '$contact_number'";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_array($result);
  if ($row) {
    $status = 'error';
    $isExist = true;
    $msg .= "Contact number: $contact_number already exists! ";
  }

  $query = "SELECT * FROM admin_credentials WHERE EMAIL = '$email'";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_array($result);
  if ($row) {
    $isExist = true;
    $status = 'error';
    $msg .= "Email: $email already exists! ";
  }

  $query = "SELECT * FROM admin_credentials WHERE USERNAME = '$username'";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_array($result);
  if ($row) {
    $isExist = true;
    $status = 'error';
    $msg .= "Username: $username already exists! ";
  }

  if ($isExist == false) {
    $query = "INSERT INTO admin_credentials (LNAME, OTHERNAME, CONTACT_NUMBER, ADDRESS, PHARMACY_NAME, USERID, USERNAME, EMAIL, GENDER, PASSWORD, ADMIN_TYPE) VALUES('$last_name','$other_name', '$contact_number', '$address', '$pharmacy_name', '$userid', '$username', '$email', '$gender', '$password', '$admin_level')";
    $result = mysqli_query($con, $query);

    $query_2 = "INSERT INTO users (userid,username,gender,email,password,date,roleid,isActive) VALUES ($userid, '$username', 'male', '$email','$password','$date', 1, 0)";
    $result2 = mysqli_query($con, $query_2);
    if ($result) {
      $status = 'success';
      $msg = "Admin " . $username . " has been added";
    } else {
      $status = 'error';
      $msg = "Failed to add $username!";
    }
  }
}

$_SESSION['msg'] = $msg;
$_SESSION['status'] = $status;

header("Location: ../home.php");
