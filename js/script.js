$(document).ready(function () {
  $("#alertbar").hide();
});
function addCustomer() {
  var errorFound = false;
  $(".form1").each(function () {
    var values = $.trim($(this).val());
    if (values == "") {
      $(this).css("border-color", "red");
      event.preventDefault();
      errorFound = true;
    } else {
      $(this).css("border-color", "green");
      event.preventDefault();
    }
  });
  if (errorFound == false) {
    $("#myform").submit();
  }
}

function addAdmin() {
  var errorFound = false;
  $(".form1").each(function () {
    var values = $.trim($(this).val());
    if (values == "") {
      $(this).css("border-color", "red");
      event.preventDefault();
      errorFound = true;
    } else {
      $(this).css("border-color", "green");
      event.preventDefault();
    }
  });
  if (errorFound == false) {
    $("#myform").submit();
  }
}

function login() {
  var username = $.trim($("#username").val());
  var pass = $.trim($("#password").val());
  let data = {
    username: username,
    password: pass,
  };
  if (username == "" || pass == "") {
    $("#alertbar").show();
    $("#errormsg").html("Required field(s) cannot be blank");
    $("#alertbar").hide(9000);
  } else {
    $.ajax({
      type: "POST",
      url: "set_session.php",
      data: data,
      dataType: "json",
      success: function (res) {
        if (res.status == "200") {
            window.location.href = 'home.php';
        } else {
          $("#alertbar").show();
          $("#errormsg").html(res.msg);
        //   $("#alertbar").hide(9000);
        }
      },
      error: function (e) {
        console.log(e.ResponseText);
      },
    });
  }
}
