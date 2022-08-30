<?php
  require "db_connection.php";
  if($con) {
    $name = trim(ucwords($_GET["name"]));
    $packing = trim(strtoupper($_GET["packing"]));
    $generic_name = trim(ucwords($_GET["generic_name"]));
    $suppliers_name = trim($_GET["suppliers_name"]);

    $expiry_date = $_GET["expdate"];
    $quantity = $_GET["quantity"];
    $mrp = $_GET["price"];
    $invoice_number = rand();
    $rate = 0;
    $start = strtoupper(substr($name, 0, 3));
    $num = rand(100,9999);
    $batch_id = $start.$num;
    // var_dump($batch_id);exit;
    $query = "SELECT * FROM medicines WHERE UPPER(NAME) = '".strtoupper($name)."' AND UPPER(PACKING) = '".strtoupper($packing)."' AND UPPER(SUPPLIER_NAME) = '".strtoupper($suppliers_name)."'";
    $result = mysqli_query($con, $query);
    $row = mysqli_fetch_array($result);
    if($row)
      echo "Medicine $name with $packing already exists by supplier $suppliers_name!";
    else {
      $query = "INSERT INTO medicines (NAME, PACKING, GENERIC_NAME, SUPPLIER_NAME) VALUES('$name', '$packing', '$generic_name', '$suppliers_name')";
      $result = mysqli_query($con, $query);
      // Insert into Medicines Stock
      $query = "INSERT INTO medicines_stock (NAME, BATCH_ID, EXPIRY_DATE, QUANTITY, MRP, RATE, INVOICE_NUMBER) VALUES('$name', '$batch_id', '$expiry_date', $quantity, $mrp, $rate, $invoice_number)";
      $result = mysqli_query($con, $query);
      if(!empty($result))
  			echo "$name added...";
  		else
  			echo "Failed to add $name!";
    }
  }
