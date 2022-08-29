<?php
include('header.php');
titl_name('Purchase Report');
?>
<!-- including side navigations -->
<?php include("sections/sidenav.html"); ?>

<div class="container-fluid">
  <div class="container">

    <!-- header section -->
    <?php
    require "php/header.php";
    createHeader('book', 'Purchase Report', 'Showing Purchase Report');
    ?>
    <!-- header section end -->

    <!-- form content -->
    <div class="row">

      <div class="col-md-12 form-group form-inline">
        <label class="font-weight-bold" for="">Start Date :&emsp;</label>
        <input type="date" class="form-control" id="start_date" onchange="showReport('purchase');">
        &emsp;
        <label class="font-weight-bold" for="">End Date :&emsp;</label>
        <input type="date" class="form-control" id="end_date" onchange="showReport('purchase');">
        &emsp;
        <button class="btn btn-success" onclick="location.reload();"><i class="fa fa-refresh"></i></button>
      </div>

      <div class="col col-md-12">
        <hr class="col-md-12" style="padding: 0px; border-top: 2px solid  #02b6ff;">
      </div>

      <div class="col col-md-12 table-responsive">
        <div id="print_content" class="table-responsive">
          <table class="table table-bordered table-striped table-hover" id="purchase_report_div">
            <?php
            require "php/report.php";
            showPurchases("", "");
            ?>
          </table>
        </div>
      </div>

      <div class="col-md-12 text-center">
        <button class="btn btn-primary" onclick="printReport('Purchase');">Print</button>
      </div>

    </div>
    <!-- form content end -->
    <hr style="border-top: 2px solid #ff5252;">
  </div>
</div>
</body>

</html>