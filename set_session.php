<?php
session_start();
require "php/db_connection.php";
if(isset($_POST['btn_login'])){

    // echo 'Mango';
    if($con) {
      $username = $_POST["username"];
      $password = $_POST["password"];
    var_dump($username);
      $query = "SELECT * FROM admin_credentials WHERE USERNAME = '$username' AND PASSWORD = '$password'";
      $result = mysqli_query($con, $query);
      $row = mysqli_fetch_array($result);
    //   print_r($row);
      // die;
      if($row)  {
        $_SESSION['ad_username'] = $row['LNAME'] .' '. $row['OTHERNAME'];
        $_SESSION['ad_id'] = $row['ID'];
        header('Location: home.php');
      }else {
        header('Location: index.php');
      }
      
    }

    // var_dump($_SESSION['ad_username']);
}
?>