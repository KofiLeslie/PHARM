function addCustomer() {
    var errorFound = false;
    $(".form1").each(function () {
        var values = $.trim($(this).val());
        if (values == '') {
            $(this).css('border-color', 'red');
            event.preventDefault();
            errorFound = true;
        } else {
            $(this).css('border-color', 'green');
            event.preventDefault();
        }
    });
    if (errorFound == false) {
        $('#myform').submit();
    }
}

function addAdmin() {
    var errorFound = false;
    $(".form1").each(function () {
        var values = $.trim($(this).val());
        if (values == '') {
            $(this).css('border-color', 'red');
            event.preventDefault();
            errorFound = true;
        } else {
            $(this).css('border-color', 'green');
            event.preventDefault();
        }
    });
    if (errorFound == false) {
        $('#myform').submit();
    }
}