<?php
session_start();
require "db_connection.php";
require "customclasses.php";

if ($con) {
  $name = ucwords($_POST["name"]);
  $contact_number = $_POST["contact_number"];
  $address = ucwords($_POST["address"]);
  $doctor_name = ucwords($_POST["doctor_name"]??"");
  $doctor_address = ucwords($_POST["doctor_address"]??'');
  $gender = ucwords($_POST["gender"]??"male");
  $username = $_POST["username"]??'';
  $email = $_POST["email"]??'';
  $password = $_POST["password"]??'';
  $date = date('Y-m-d H:i:s');
  $userid = generate_id(10);
  $status = $msg = '';
  
  if (trim($email) != '') {
    $query_email = "SELECT * FROM customers WHERE EMAIL = '$email'";
    $result = mysqli_query($con, $query_email);
    $row = mysqli_fetch_array($result);
    
    $status = 'danger';
    $msg =  "Customer email: ".strtolower($email)." already exists!";
    $_SESSION['msg'] = $msg;
    $_SESSION['status'] = $status;
    
    header("Location: ../home.php");
  }
  
  if (trim($username) != '') {
    $query_username = "SELECT * FROM customers WHERE USERNAME = '$username'";
    $result = mysqli_query($con, $query_username);
    $row = mysqli_fetch_array($result);
    
    $status = 'danger';
    $msg =  "Customer email: ".$username." already exists!";
    $_SESSION['msg'] = $msg;
    $_SESSION['status'] = $status;
    
    header("Location: ../home.php");
  }
  
  $query = "SELECT * FROM customers WHERE CONTACT_NUMBER = '$contact_number'";
  $result = mysqli_query($con, $query);
  $row = mysqli_fetch_array($result);

  // var_dump($row);
  if ($row) {
    $status = 'danger';
    $msg =  "Customer " . $row['NAME'] . " with contact number $contact_number already exists!";
  } else {
    $query = "INSERT INTO customers (NAME, CONTACT_NUMBER, ADDRESS, DOCTOR_NAME, DOCTOR_ADDRESS, USERID, USERNAME, EMAIL, GENDER, PASSWORD) VALUES('$name', '$contact_number', '$address', '$doctor_name', '$doctor_address', '$userid', '$username', '$email', '$gender', '$password')";
    $result = mysqli_query($con, $query);

    $query_2 = "INSERT INTO users (userid,username,gender,email,password,date,roleid,isActive) VALUES ($userid, '$username', 'male', '$email','$password','$date', 0, 0)";
    $result2 = mysqli_query($con, $query_2);
    // $result2 = mysqli_error($con);
    // var_dump($result2);exit;

    if (!empty($result)) {
      $status = 'success';
      $msg = "Customer " . $name . " has been added";
    } else {
      $status = 'danger';
      $msg = "System busy. Try again later";
    }
  }
  $_SESSION['msg'] = $msg;
  $_SESSION['status'] = $status;

  header("Location: ../home.php");
}
