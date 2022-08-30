function notNull(text, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(text < 0) {
    result.innerHTML = "Invalid!";
    return false;
  }
  else if(text.trim() == "") {
    result.innerHTML = "Must be filled out!";
    return false;
  }
  result.style.display = "none";
  return true;
}

function validateName(name, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(name.trim() == "") {
    result.innerHTML = "Must be filled out!";
    return false;
  }
  result.innerHTML = "Must contain only letters!";
  for(var i = 0; i < name.length; i++)
    if(!((name[i] >= 'a' && name[i] <= 'z') || (name[i] >= 'A' && name[i] <= 'Z') || name[i] == ' '))
      return false;
  result.style.display = "none";
  return true;
}

function validateContactNumber(contact_number, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(contact_number.length != 10) {
    result.innerHTML = "Must contain 10 digits!";
    return false;
  }
  else
    result.style.display = "none";
  return true;
}

function validateAddress(address, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(address.trim().length < 1) {
    result.innerHTML = "Please enter more specific address!";
    return false;
  }
  else
    result.style.display = "none";
  return true;
}

function checkExpiry(date, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(date.trim() == "" || date.trim().length != 5 || date[2] != "/")
    result.innerHTML = "Please enter date in mm/yy format!";
  else if(date.slice(0, 2) < 1 || date.slice(0, 2) > 12)
    result.innerHTML = "Invalid month!";
  else if(new Date("20" + date.slice(3, 5), date.slice(0, 2)) < new Date()) {
    result.innerHTML = "Expired Medicine!";
    return -1;
  }
  else {
    result.style.display = "none";
    return true;
  }
  return false;
}

function checkQuantity(quantity, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(quantity < 0 || !Number.isInteger(parseFloat(quantity)))
    result.innerHTML = "Invalid quantity!";
  else {
    result.style.display = "none";
    return true;
  }
  return false;
}

function checkValue(value, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(value < 0 || value == "")
    result.innerHTML = "Invalid!";
  else {
    result.style.display = "none";
    return true;
  }
  return false;
}

function checkDate(date, error) {
  var result = document.getElementById(error);
  result.style.display = "block";
  if(date == "")
    result.innerHTML = "Mustn't be empty!!";
  else if(new Date(date) > new Date())
    result.innerHTML = "Mustn't be future date!";
  else {
    result.style.display = "none";
    return true;
  }
  return false;
}

function addCustomer() {
  document.getElementById("customer_acknowledgement").innerHTML = "";
  var customer_name = document.getElementById("customer_name");
  var contact_number = document.getElementById("customer_contact_number");
  var customer_address = document.getElementById("customer_address");
  var doctor_name = document.getElementById("customer_doctors_name");
  var doctor_address = document.getElementById("customer_doctors_address");
  var gender = document.getElementById("gender");
  var username = document.getElementById("username");
  var email = document.getElementById("email");
  var password = document.getElementById("password");
  
  if(!validateName(customer_name.value, "name_error"))
    customer_name.focus();
  else if(!validateContactNumber(contact_number.value, "contact_number_error"))
    contact_number.focus();
  else if(!validateAddress(customer_address.value, "address_error"))
    customer_address.focus();
  else if(!validateName(doctor_name.value, 'doctor_name_error'))
    doctor_name.focus();
  else if(!validateName(gender.value, 'gender_error'))
    gender.focus();
  else if(!validateName(username.value, 'username_error'))
    username.focus();
  else if(!validateName(password.value, 'password_error'))
    password.focus();
  else if(!validateAddress(doctor_address.value, 'doctor_address_error'))
    doctor_address.focus();
  else {
    var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
  		if(xhttp.readyState = 4 && xhttp.status == 200)
  			document.getElementById("customer_acknowledgement").innerHTML = xhttp.responseText;
  	};
  	xhttp.open("GET", "php/add_new_customer.php?name=" + customer_name.value + "&contact_number=" + contact_number.value + "&address=" + customer_address.value + "&doctor_name=" + doctor_name.value + "&doctor_address=" + doctor_address.value,"&gender=" + gender.value, "&username=" + username.value, "&email=" + email.value, "&password=" + password.value, true);
  	xhttp.send();
  }
  return false;
}

// function addAdmin() {
//   console.log("banku");
//   document.getElementById("admin_acknowledgement").innerHTML = "";
//   var admin_firsts_name = document.getElementById("admin_firsts_name");
//   var admin_other_name = document.getElementById("admin_other_name");
//   var admin_contact_number = document.getElementById("admin_contact_number");
//   var admin_address = document.getElementById("admin_address");
//   var admin_username = document.getElementById("admin_username");
//   if(!validateName(admin_firsts_name.value, "first_name_error"))
//     admin_firsts_name.focus();
//   else if(!validateContactNumber(admin_contact_number.value, "contact_number_error"))
//     admin_contact_number.focus();
//   else if(!validateAddress(admin_address.value, "address_error"))
//     admin_address.focus();
//   else if(!validateName(admin_username.value, 'username_error'))
//     admin_username.focus();
//   else if(!validateName(admin_other_name.value, 'other_name_error'))
//   admin_other_name.focus();
//   else {
    
//     var xhttp = new XMLHttpRequest();
//   	xhttp.onreadystatechange = function() {
//   		if(xhttp.readyState = 4 && xhttp.status == 200)
//   			document.getElementById("admin_acknowledgement").innerHTML = xhttp.responseText;
//   	};
//   	xhttp.open("GET", "php/add_new_admin.php?name=" + admin_firsts_name.value + "&admin_contact_number=" + admin_contact_number.value + "&address=" + admin_address.value + "&admin_username=" + admin_username.value , true);
//   	xhttp.send();
//   }
//   return false;
// }

function addSupplier() {
  document.getElementById("supplier_acknowledgement").innerHTML = "";
  var supplier_name = document.getElementById("supplier_name");
  var supplier_email = document.getElementById("supplier_email");
  var contact_number = document.getElementById("supplier_contact_number");
  var supplier_address = document.getElementById("supplier_address");
  if(!validateName(supplier_name.value, "name_error"))
    supplier_name.focus();
  else if(!validateContactNumber(contact_number.value, "contact_number_error"))
    contact_number.focus();
  else if(!validateAddress(supplier_address.value, "address_error"))
    supplier_address.focus();
  else {
    var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
  		if(xhttp.readyState = 4 && xhttp.status == 200)
  			document.getElementById("supplier_acknowledgement").innerHTML = xhttp.responseText;
  	};
  	xhttp.open("GET", "php/add_new_supplier.php?name=" + supplier_name.value + "&email=" + supplier_email.value + "&contact_number=" + contact_number.value + "&address=" + supplier_address.value, true);
  	xhttp.send();
  }
}

// Full Date (22 August, 2022)
$( function() {
  $( ".fulldate" ).datepicker();
} );

// Month and Year Only (08/2022)
$(function() {
  $('.monthYear').datepicker( {
      changeMonth: true,
      changeYear: true,
      showButtonPanel: true,
      dateFormat: 'mm/y',
      onClose: function(dateText, inst) { 
          var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
          var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
          $(this).datepicker('setDate', new Date(year, month, 1));
      }
  });
});

function addMedicine() {
  document.getElementById("medicine_acknowledgement").innerHTML = "";
  var name = document.getElementById("medicine_name");
  var packing = document.getElementById("packing");
  var generic_name = document.getElementById("generic_name");
  var suppliers_name = document.getElementById("suppliers_name");
  var quantity = document.getElementById("quantity");
  var price = document.getElementById("price");
  var prodate = document.getElementById("prodate");
  var expdate = document.getElementById("expdate");

  if(!notNull(name.value, "medicine_name_error"))
    name.focus();
  else if(!notNull(packing.value, "pack_error"))
    packing.focus();
  else if(!notNull(generic_name.value, "generic_name_error"))
    generic_name.focus();
  else if(!notNull(quantity.value, "quantity_error"))
    quantity.focus();
  else if(!notNull(price.value, "price_error"))
    price.focus();
  else if(!notNull(prodate.value, "prodate_error"))
    prodate.focus();
  else if(!notNull(expdate.value, "expdate_error"))
    expdate.focus();
  else {
    var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
  		if(xhttp.readyState = 4 && xhttp.status == 200)
  			document.getElementById("medicine_acknowledgement").innerHTML = xhttp.responseText;
  	};
  	xhttp.open("GET", "php/add_new_medicine.php?name=" + name.value + "&packing=" + packing.value + "&generic_name=" + generic_name.value + "&suppliers_name=" + suppliers_name.value + "&quantity=" + quantity.value + "&price=" + price.value + "&prodate=" + prodate.value + "&expdate=" + expdate.value, true);
  	xhttp.send();
  }
}
