<?php
include('header.php');
titl_name('Add New Supplier');
?>
<!-- including side navigations -->
<?php include("sections/sidenav.html"); ?>

<div class="container-fluid">
  <div class="container">
    <!-- header section -->
    <?php
    require "php/header.php";
    createHeader('group', 'Add Supplier', 'Add New Supplier');
    // header section end
    ?>
    <div class="row">
      <div class="row col col-md-6">
        <?php
        // form content
        require "sections/add_new_supplier.html";
        ?>
      </div>
    </div>
    <hr style="border-top: 2px solid #ff5252;">

  </div>
</div>
</body>

</html>