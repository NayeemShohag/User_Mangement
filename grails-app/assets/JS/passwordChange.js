$(document).ready(function () {
    $('#password').bind('keyup', function () {
        $('#errorPass').text("")
    });
    $('#newpassword').bind('keyup', function () {
        $('#wrongPass').text("")
    });
    $('#repassword').bind('keyup', function () {
        $('#wrongPass').text("")
    });
    $('#clear').bind('click', function () {
        $('#password').val("")
        $('#newpassword').val("")
        $('#repassword').val("")
    });

});

$("#changeForm").submit(function (e) {

    e.preventDefault();

    var form = $(this);
    var url = form.attr('action');

    var newpass = $('#newpassword').val()
    var repass= $('#repassword').val()

    if (newpass === repass) {
        $.ajax({
            url: url,
            cache: false,
            method: 'post',
            data: $('#changeForm').serialize(),
            success: function (response) {
                if (response.status === "success") {
                    alert("Password Changed")
                    window.location = response.url
                } else if (response.status === "wrong") {
                    $('#errorPass').text("User Password didn't match").css("color", "red");
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {

            }
        });
    } else {
        $('#wrongPass').text("New Password didn't match").css("color", "red");
    }
});