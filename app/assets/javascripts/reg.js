alert('hi');

$(document).ready(function(){
    var name;
    var email;
    var regno;
    var id;
    $('#username').change(function(){
            $('#email').change(function(){
                
                name =$('#username').val();
                email=$('#email').val();
                
                
                regno=name+'/'+email;
                $('#regno').val(regno);
                
            })
            
        })
    
});


