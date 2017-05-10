$(document).ready(function() {
    $("#client").find("a.add_fields").
    data("association-insertion-position", 'before').
    data("association-insertion-node", 'this');

    $('#client').bind('cocoon:after-insert',
        function() {
            $("#client_from_list").hide();
            $("#client").find("a.add_fields").hide();
        });
    $('#client').bind("cocoon:after-remove",
        function() {
            $("#client_from_list").show();
            $("#client").find("a.add_fields").show();
        });
});