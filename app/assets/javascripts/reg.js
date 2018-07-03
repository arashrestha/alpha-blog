alert('hi');

$(document).ready(function(){
    var name;
    var email;
    var regno;
    var id;
    $('#username').change(function(){
        $('#usersid').change(function(){
            $('#email').change(function(){
                
                name =$('#username').val();
                id=$('#usersid').val();
                email=$('#email').val();
                
                
                regno=name+'/'+email+'/'+id;
                $('#regno').val(regno);
                
            })
            
        })
        
    })
    
    
});


