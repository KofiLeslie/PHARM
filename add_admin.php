<?php
include('header.php');
titl_name('Add New Admin');
?>
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
