function deleteAdmin(id) {
  var confirmation = confirm("Are you sure?");
  if(confirmation) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if(xhttp.readyState = 4 && xhttp.status == 200)
        document.getElementById('customers_div').innerHTML = xhttp.responseText;
    };
    xhttp.open("GET", "php/manage_admin.php?action=delete&id=" + id, true);
    xhttp.send();
  }
}

function editAdmin(id) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if(xhttp.readyState = 4 && xhttp.status == 200)
      document.getElementById('customers_div').innerHTML = xhttp.responseText;
  };
  xhttp.open("GET", "php/manage_admin.php?action=edit&id=" + id, true);
  xhttp.send();
}

function updateAdmin(id) {
  var last_name = document.getElementById("last_name");
  var other_name = document.getElementById("other_name");
  var contact_number = document.getElementById("customer_contact_number");
  var customer_address = document.getElementById("customer_address");
  var pharmacy_name = document.getElementById("pharmacy_name");
  var email = document.getElementById("email");
  if(!validateName(last_name.value, "name_error"))
  last_name.focus();
  else if(!validateName(other_name.value, "name_error"))
  other_name.focus();
  else if(!validateContactNumber(contact_number.value, "contact_number_error"))
    contact_number.focus();
  else if(!validateAddress(customer_address.value, "address_error"))
    customer_address.focus();
  else if(!validateName(pharmacy_name.value, 'pharmacy_name_error'))
    pharmacy_name.focus();
  else {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if(xhttp.readyState = 4 && xhttp.status == 200)
        document.getElementById('customers_div').innerHTML = xhttp.responseText;
    };
    xhttp.open("GET", "php/manage_admin.php?action=update&id=" + id + "&last_name=" + last_name.value +"&other_name=" + other_name.value + "&contact_number=" + contact_number.value + "&address=" + customer_address.value + "&pharmacy_name=" + pharmacy_name.value + "&email=" + email.value, true);
    xhttp.send();
  }
}

function cancel() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if(xhttp.readyState = 4 && xhttp.status == 200)
      document.getElementById('customers_div').innerHTML = xhttp.responseText;
  };
  xhttp.open("GET", "php/manage_admin.php?action=cancel", true);
  xhttp.send();
}

function searchAdmin(text) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if(xhttp.readyState = 4 && xhttp.status == 200)
      document.getElementById('customers_div').innerHTML = xhttp.responseText;
  };
  xhttp.open("GET", "php/manage_admin.php?action=search&text=" + text, true);
  xhttp.send();
}
