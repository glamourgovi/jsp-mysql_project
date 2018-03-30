$(document).ready(function(e) {
   $( "#delete" ).click(function(e) {
        e.preventDefault();
        if (confirm('Are you sure you want to Delete Files?')) {
        // Save it!
             $.ajax({
                type: "POST",
                url: "action.jsp",
                success: function(msg){
                    alert(msg)
                },
             });
        } else {
        // Do nothing!
        }
   }); 
});

