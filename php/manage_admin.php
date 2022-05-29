<?php
require "db_connection.php";

if ($con) {
  if (isset($_GET["action"]) && $_GET["action"] == "delete") {
    $id = $_GET["id"];
    $query = "DELETE FROM admin_credentials WHERE ID = $id";
    $result = mysqli_query($con, $query);
    if (!empty($result))
      showAdmin(0);
  }

  if (isset($_GET["action"]) && $_GET["action"] == "edit") {
    $id = $_GET["id"];
    showAdmin($id);
  }

  if (isset($_GET["action"]) && $_GET["action"] == "update") {
    $id = $_GET["id"];
    $last_name = ucwords($_GET["last_name"]);
    $other_name = ucwords($_GET["other_name"]);
    $contact_number = $_GET["contact_number"];
    $address = ucwords($_GET["address"]);
    $pharmacy_name = ucwords($_GET["pharmacy_name"]);
    $email = $_GET["email"];
    updateAdmin($id, $last_name, $other_name, $contact_number, $address, $pharmacy_name, $email);
  }

  if (isset($_GET["action"]) && $_GET["action"] == "cancel")
    showAdmin(0);

  if (isset($_GET["action"]) && $_GET["action"] == "search")
    searchAdmin(strtoupper($_GET["text"]));
}

function showAdmin($id)
{
  require "db_connection.php";
  if ($con) {
    $seq_no = 0;
    $query = "SELECT * FROM admin_credentials WHERE ID <> $id";
    $result = mysqli_query($con, $query);
    while ($row = mysqli_fetch_array($result)) {
      $seq_no++;
      if ($row['ID'] == $id)
        showEditOptionsRow($seq_no, $row);
      else
        showAdminRow($seq_no, $row);
    }
  }
}

function showAdminRow($seq_no, $row)
{
?>
  <tr>
    <td><?php echo $seq_no; ?></td>
    <td><?php echo $row['LNAME']; ?></td>
    <td><?php echo $row['OTHERNAME']; ?></td>
    <td><?php echo $row['CONTACT_NUMBER']; ?></td>
    <td><?php echo $row['ADDRESS']; ?></td>
    <td><?php echo $row['PHARMACY_NAME']; ?></td>
    <td><?php echo $row['EMAIL']; ?></td>
    <td>
      <button href="" class="btn btn-info btn-sm" onclick="editAdmin(<?php echo $row['ID']; ?>);">
        <i class="fa fa-pencil"></i>
      </button>
      <button class="btn btn-danger btn-sm" onclick="deleteAdmin(<?php echo $row['ID']; ?>);">
        <i class="fa fa-trash"></i>
      </button>
    </td>
  </tr>
<?php
}

function showEditOptionsRow($seq_no, $row)
{
?>
  <tr>
    <td><?php echo $seq_no; ?></td>
    <td><?php echo $row['ID'] ?></td>
    <td>
      <input type="text" class="form-control" value="<?php echo $row['LNAME']; ?>" placeholder="Last Name" id="last_name" onkeyup="validateName(this.value, 'name_error');">
      <code class="text-danger small font-weight-bold float-right" id="name_error" style="display: none;"></code>
    </td>
    <td>
      <input type="text" class="form-control" value="<?php echo $row['OTHERNAME']; ?>" placeholder="Other Name" id="other_name" onkeyup="validateName(this.value, 'name_error');">
      <code class="text-danger small font-weight-bold float-right" id="name_error" style="display: none;"></code>
    </td>
    <td>
      <input type="number" class="form-control" value="<?php echo $row['CONTACT_NUMBER']; ?>" placeholder="Contact Number" id="customer_contact_number" onblur="validateContactNumber(this.value, 'contact_number_error');">
      <code class="text-danger small font-weight-bold float-right" id="contact_number_error" style="display: none;"></code>
    </td>
    <td>
      <textarea class="form-control" placeholder="Address" id="customer_address" onblur="validateAddress(this.value, 'address_error');"><?php echo $row['ADDRESS']; ?></textarea>
      <code class="text-danger small font-weight-bold float-right" id="address_error" style="display: none;"></code>
    </td>
    <td>
      <input type="text" class="form-control" value="<?php echo $row['pharmacy_name']; ?>" placeholder="Pharmacy Name" id="pharmacy_name" onkeyup="validateName(this.value, 'pharmacy_name_error');">
      <code class="text-danger small font-weight-bold float-right" id="pharmacy_name_error" style="display: none;"></code>
    </td>
    <td>
      <input type="email" name="email" id="email" value="<?php echo $row['email']; ?>" placeholder="example@me.com">
    </td>
    <td>
      <button href="" class="btn btn-success btn-sm" onclick="updateAdmin(<?php echo $row['ID']; ?>);">
        <i class="fa fa-edit"></i>
      </button>
      <button class="btn btn-danger btn-sm" onclick="cancel();">
        <i class="fa fa-close"></i>
      </button>
    </td>
  </tr>
<?php
}

function updateAdmin($id, $lname, $othername, $contact_number, $address, $pharmacy_name, $email)
{
  require "db_connection.php";
  $query = "UPDATE admin_credentials SET LNAME = '$lname',LNAME = '$othername', CONTACT_NUMBER = '$contact_number', ADDRESS = '$address', pharmacy_name = '$pharmacy_name', email = '$email' WHERE ID = $id";
  $result = mysqli_query($con, $query);
  if (!empty($result))
    showAdmin(0);
}

function searchAdmin($text)
{
  require "db_connection.php";
  if ($con) {
    $seq_no = 0;
    $query = "SELECT * FROM admin_credentials WHERE ((UPPER(LNAME) LIKE '%$text%') OR (UPPER(OTHERNAME) LIKE '%$text%'))";
    $result = mysqli_query($con, $query);
    while ($row = mysqli_fetch_array($result)) {
      $seq_no++;
      showAdminRow($seq_no, $row);
    }
  }
}

?>