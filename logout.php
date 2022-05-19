<?php session_start(); ?>
<?php
  require "php/db_connection.php";

  if($con) {
    $query = "UPDATE admin_credentials SET IS_LOGGED_IN = 'false'";
    $result = mysqli_query($con, $query);
    if ($result) {
      session_destroy();
      
      header('Location: index.php');
      echo 'false';
    }else {
      echo 'true';
    }
  }
?>

<!-- <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Logout</title>
    <script src="js/restrict.js"></script>
  </head>
  <body>

  </body>
</html> -->
