$(document).ready(function(){
    $("#search").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
            var isShow = $(this).text().toLowerCase().indexOf(value) > -1;
            $(this).toggle(isShow);

        });
    });
});