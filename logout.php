<?php 
session_start(); 
require "php/db_connection.php";

if ($con) {
  $query = "UPDATE admin_credentials SET IS_LOGGED_IN = 'false' WHERE ID = {$_SESSION['ad_id']}";
  $result = mysqli_query($con, $query);
  session_destroy();
  header('Location: index.php');
}