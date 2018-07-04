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
            num='1234567890';
            var ID_LENGTH = 3;
            
            var generate = function() {
                var rtn = '';
                for (var i = 0; i < ID_LENGTH; i++) {
                    rtn += num.charAt(Math.floor(Math.random() * num.length));
                }
                return rtn;
            }
            
            regno=name+'/'+email+'/'+generate();
            $('#regno').val(regno);
            
            
        })
        
    })
    
});


