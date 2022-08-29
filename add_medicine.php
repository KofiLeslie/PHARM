<?php
include('header.php');
titl_name('Add New Medicine');
?>
<div id="add_new_supplier_model">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" style="background-color: #ff5252; color: white">
        <div class="font-weight-bold">Add New Supplier</div>
        <button class="close" style="outline: none;" onclick="document.getElementById('add_new_supplier_model').style.display = 'none';"><i class="fa fa-close"></i></button>
      </div>
      <div class="modal-body">
        <?php
        include('sections/add_new_supplier.html');
        ?>
      </div>
    </div>
  </div>
</div>
<!-- including side navigations -->
<?php
if ($_SESSION['ad_level'] == 1) {
  include "sections/sidenav.html";
} else if ($_SESSION['ad_level'] == 2) {
  include "sections/pharmacist_nav.html";
}
?>

<div class="container-fluid">
  <div class="container">

    <!-- header section -->
    <?php
    require "php/header.php";
    createHeader('shopping-bag', 'Add Medicine', 'Add New Medicine');
    ?>
    <!-- header section end -->

    <!-- form content -->
    <div class="row">
      <div class="row col col-md-12">
        <?php
        // form content
        require "sections/add_new_medicine.html";
        ?>
      </div>
    </div>

    <hr style="border-top: 2px solid #ff5252;">
    <!-- form content end -->
  </div>
</div>
</body>

</html>