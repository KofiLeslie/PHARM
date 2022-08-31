<?php
include('header.php');
titl_name('Manage Customer');
?>
<!-- including side navigations -->
<?php include("sections/sidenav.html"); ?>

<div class="container-fluid">
  <div class="container">

    <!-- header section -->
    <?php
    require "php/header.php";
    createHeader('handshake', 'Manage Customer', 'Manage Existing Customer');
    ?>
    <!-- header section end -->

    <!-- form content -->
    <div class="row">

      <div class="col-md-12 form-group form-inline">
        <label class="font-weight-bold" for="">Search :&emsp;</label>
        <input type="text" class="form-control" id="" placeholder="Search Customer" onkeyup="searchCustomer(this.value);">
      </div>

      <div class="col col-md-12">
        <hr class="col-md-12" style="padding: 0px; border-top: 2px solid  #02b6ff;">
      </div>

      <div class="col col-md-12 table-responsive">
        <div class="table-responsive">
          <table class="table table-bordered table-striped table-hover">
            <thead>
              <tr>
                <th style="width: 2%;">SL.</th>
                <th style="width: 10%;">Customer ID</th>
                <th style="width: 13%;">Customer Name</th>
                <th style="width: 13%;">Contact Number</th>
                <th style="width: 17%;">Address</th>
                <th style="width: 15%;">Action</th>
              </tr>
            </thead>
            <tbody id="customers_div">
              <?php
              require 'php/manage_customer.php';
              showCustomers(0);
              ?>
            </tbody>
          </table>
        </div>
      </div>

    </div>
    <!-- form content end -->
    <hr style="border-top: 2px solid #ff5252;">
  </div>
</div>
</body>

</html>