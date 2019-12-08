$(document).ready(function () {
    $('#email').bind('keyup', function () {
        $('#mailfield').text("")
    });

    $('#email').blur(function () {
        var regexForEmail = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if( regexForEmail.test($('#email').val())===true)
        {
            $.ajax({
                type: "POST",
                url: "isExist",
                data: {email: $('#email').val()},
                success: function (response) {
                    if (response.status === "exist") {
                        $('#mailfield').text("Email exist ").css("color", "red");

                    } else if (response.status === "reserved") {
                        $('#mailfield').text("Reserved Email").css("color", "red");

                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {

                }
            });
        }
        else{
            $('#mailfield').text("Incorrect email format").css("color", "red");
        }


    });


})
$("#regform").submit(function (e) {

    e.preventDefault();

    var form = $(this);
    var url = form.attr('action');

    $.ajax({
        type: "POST",
        url: url,
        data: form.serialize(), // serializes the form's elements.
        success: function (response) {
            if (response.status === "exist") {
                $('#mailfield').text("Email exist ").css("color", "red");
            } else if (response.status === "empty") {
                $('#mailfield').text("*Required ").css("color", "red");
                $('#passfield').text("*Required ").css("color", "red");
            }else {
                alert("Registration Success")
                window.location = response.url
            }

        },
        error: function (xhr, ajaxOptions, thrownError) {

        }
    });


});

