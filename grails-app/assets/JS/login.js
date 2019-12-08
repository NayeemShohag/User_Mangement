$(document).ready(function(){
    $('#clear').bind('click', function () {
        $('#email').val("")
        $('#password').val("")
        $('#wrong').text("")

    });
    $('#email').bind('keyup', function () {
        $('#wrong').text("")
    });
    $('#password').bind('keyup', function () {
        $('#wrong').text("")
    });


});


$("#frmlogin").submit(function (e) {

    e.preventDefault();


    $.ajax({
        url: "/login/Login",
        cache: false,
        method: 'post',
        data: $('#frmlogin').serialize(),
        success: function (response) {
            if (response.status === "success") {
                window.location = response.url
            } else if (response.status === "wrong") {
                $('#wrong').text("Invalid Email or Password").css("color", "red");
            }

        },
        error: function (xhr, ajaxOptions, thrownError) {

        }
    });
    //alert("ok")


});
