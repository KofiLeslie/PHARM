<?php session_start(); 
if (empty($_SESSION['ad_id'])) {
  header('Location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Add New Admin</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
		<script src="bootstrap/js/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="shortcut icon" href="" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/sidenav.css">
    <link rel="stylesheet" href="css/home.css">
    <script src="js/script.js"></script>
    <script src="js/restrict.js"></script>
  </head>
  <body>
    <!-- including side navigations -->
    <?php include("sections/sidenav.html"); ?>
    <div class="container-fluid">
      <div class="container">
        <!-- header section -->
        <?php
          require "php/header.php";
          createHeader('handshake', 'Add Admin', 'Add New Admin');
          // header section end
        ?>
         <form name="myform" id="myform" method="post" action="php/add_new_admin.php" data-toggle="validator" role="form" enctype="multipart/form-data" autocomplete="off">
        <div class="row">
          <div class="row col col-md-6">
            <?php
              // form content
              require "sections/add_new_admin.html";
            ?>
          </div>
        </div>
        </form>
        <hr style="border-top: 2px solid #ff5252;">
      </div>
    </div>
  </body>
</html>
