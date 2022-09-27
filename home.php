<?php
include('header.php');
titl_name('Dashboard - Home');

if (isset($_SESSION['ad_level'])) {
  if ($_SESSION['ad_level'] == 1) {
    include "sections/sidenav.html";
  } else if ($_SESSION['ad_level'] == 2) {
    include "sections/pharmacist_nav.html";
  } 
}

if (isset($_SESSION['cli_id'])) {
  include "sections/client_nav.html";
}
?>
<div class="container-fluid">
  <div class="container">
    <!-- header section -->
    <?php
    require "php/header.php";
    createHeader('home', 'Dashboard', 'Home');
    ?>
    <!-- Show Welcome Message for client -->
    <?php if (isset($_SESSION['cli_id'])) { ?>
      <h5 class="text-grey">Welcome, <b class="text-dark"><?php echo $_SESSION['cli_username']; ?></b></h5>
    <?php } ?>
    <!-- Status Message -->
    <!-- <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"> -->
    <?php if (isset($_SESSION['status'])) { ?>
      <div class="alert alert-<?php echo strtolower($_SESSION['status']); ?>">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <strong><?php echo ucwords(strtolower($_SESSION['msg'])); ?>!</strong>
      </div>
    <?php
      unset($_SESSION['status']);
      unset($_SESSION['msg']);
    }
    ?>
    <!-- /Status Message -->
    <!-- header section end -->

    <!-- form content -->
    <div class="row">
      <div class="row col col-xs-8 col-sm-8 col-md-8 col-lg-8">

        <?php
        function createSection1($location, $title, $table)
        {
          require 'php/db_connection.php';

          $query = "SELECT * FROM $table";
          if ($title == "Out of Stock")
            $query = "SELECT * FROM $table WHERE QUANTITY = 0";

          $result = mysqli_query($con, $query);
          $count = mysqli_num_rows($result);


          if ($title == "Expired") {
            // logic
            $count = 0;
            while ($row = mysqli_fetch_array($result)) {
              $expiry_date = $row['EXPIRY_DATE'];
              if (substr($expiry_date, 3) < date('y'))
                $count++;
              else if (substr($expiry_date, 3) == date('y')) {
                if (substr($expiry_date, 0, 2) < date('m'))
                  $count++;
              }
            }
          }
        ?>

          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" style="padding: 10px">
            <div class="dashboard-stats" onclick="location.href='<?php echo $location; ?>'">
              <a class="text-dark text-decoration-none" href="'<?php echo $location; ?>'">
                <span class="h4"><?php echo $count; ?></span>
                <span class="h6"><i class="fa fa-play fa-rotate-270 text-warning"></i></span>
                <div class="small font-weight-bold"><?php echo $title; ?></div>
              </a>
            </div>
          </div>
        <?php  }
        if (isset($_SESSION['ad_level'])) {
          ($_SESSION['ad_level'] == 2) ? '' : createSection1('manage_customer.php', 'Total Customer', 'customers');
          ($_SESSION['ad_level'] == 2) ? '' : createSection1('manage_supplier.php', 'Total Supplier', 'suppliers');
          ($_SESSION['ad_level'] == 2) ? '' : createSection1('manage_invoice.php', 'Total Invoice', 'invoices');

          // createSection1('manage_supplier.php', 'Total Supplier', 'suppliers');
          createSection1('manage_medicine.php', 'Total Medicine', 'medicines');
          createSection1('manage_medicine_stock.php?out_of_stock', 'Out of Stock', 'medicines_stock');
          createSection1('manage_medicine_stock.php?expired', 'Expired', 'medicines_stock');
          // createSection1('manage_invoice.php', 'Total Invoice', 'invoices');

        }
        ?>

      </div>
      <?php
      if (isset($_SESSION['ad_level'])) {
        if ($_SESSION['ad_level'] == 1) { ?>
          <div class="col col-xs-4 col-sm-4 col-md-4 col-lg-4" style="padding: 7px 0; margin-left: 15px;">
            <div class="todays-report">
              <div class="h5">Todays Report</div>
              <table class="table table-bordered table-striped table-hover">
                <tbody>
                  <?php
                  require 'php/db_connection.php';
                  if ($con) {
                    $date = date('Y-m-d');
                  ?>
                    <tr>
                      <?php
                      $total = 0;
                      $query = "SELECT NET_TOTAL FROM invoices WHERE INVOICE_DATE = '$date'";
                      $result = mysqli_query($con, $query);

                      while ($row = mysqli_fetch_array($result))
                        $total = $total + $row['NET_TOTAL'];
                      ?>
                      <th>Total Sales</th>
                      <th class="text-success">GHS. <?php echo $total; ?></th>
                    </tr>
                    <tr>
                    <?php
                    //echo $date;
                    $total = 0;
                    $query = "SELECT TOTAL_AMOUNT FROM purchases WHERE PURCHASE_DATE = '$date'";
                    $result = mysqli_query($con, $query);
                    while ($row = mysqli_fetch_array($result))
                      $total = $total + $row['TOTAL_AMOUNT'];
                  }
                    ?>
                    <th>Total Purchase</th>
                    <th class="text-danger">GHS. <?php echo $total; ?></th>
                    </tr>
                </tbody>
              </table>
            </div>
          </div>
      <?php }
      }

      
      ?>

    </div>

    <hr style="border-top: 2px solid #ff5252;">

    <div class="row">

      <?php
      function createSection2($icon, $location, $title)
      {
        echo '
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3" style="padding: 10px;">
              		<div class="dashboard-stats" style="padding: 30px 15px;" onclick="location.href=\'' . $location . '\'">
              			<div class="text-center">
                      <span class="h1"><i class="fa fa-' . $icon . ' p-2"></i></span>
              				<div class="h5">' . $title . '</div>
              			</div>
              		</div>
                </div>
              ';
      }
      if (isset($_SESSION['ad_level'])) {
        if ($_SESSION['ad_level'] == 1) {
          createSection2('address-card', 'new_invoice.php', 'Create New Invoice');
          createSection2('handshake', 'add_customer.php', 'Add New Customer');
          createSection2('shopping-bag', 'add_medicine.php', 'Add New Medicine');
          createSection2('group', 'add_supplier.php', 'Add New Supplier');
          createSection2('bar-chart', 'add_purchase.php', 'Add New Purchase');
          createSection2('book', 'sales_report.php', 'Sales Report');
          createSection2('book', 'purchase_report.php', 'Purchase Report');
          createSection2('user', 'add_admin.php', 'Add New Admin');
        } elseif ($_SESSION['ad_level'] == 2) {
          createSection2('address-card', 'new_invoice.php', 'Create New Invoice');
          createSection2('shopping-bag', 'add_medicine.php', 'Add New Medicine');
        }
      }

      if (isset($_SESSION['cli_id'])) {
        createSection2('address-card', 'new_invoice.php', 'Create New Invoice');
      }
      ?>

    </div>
    <!-- form content end -->

    <hr style="border-top: 2px solid #ff5252;">

  </div>
</div>
</body>

</html>