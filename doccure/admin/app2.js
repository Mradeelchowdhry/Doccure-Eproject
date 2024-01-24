$(document).ready(function(){

    form=$("#user_form");
userid = $("#userid")
Name = $("#Name")
Email = $("#Email")
Role = $("#Role")
Speciality = $("#Speciality")
Availibility = $("#Availibility")
city_id = $("#city_id")
Password = $("#Password")
city = $("#city")


    btn=$("#upduser");
    form.hide();
  
  


    btn.on("click",function(e){
        e.preventDefault();
        $.ajax({
        method:"POST",
        url:"userupd.php",
        data:{
            id:userid.val(),
            uname:Name.val(),
            email:Email.val(),
            pass:Password.val(),
            role:Role.val(),

        },
        success:function(data){
            alert(data);
            // getData();
            form.trigger("reset");
        }
        })
        })
      
//delete 2
                $("tbody").on("click",".del",function(e){
                    id=$(this).attr("data-id");
                    console.log(id);
                        $.ajax({
                        method:"POST",
                        url:"delete2.php",
                        data:{
                            id:id,
                        },
                        success:function(data){
                            alert(data);
                            window.location.href="users.php";
                           
                            
                        }
                        })
                        })

                //update 2
            $("tbody").on("click",".upd",function(e){
                id=$(this).attr("data-id");
                form.slideDown();
                console.log(id)
                $.ajax({
                    method:"POST",
                    url:"update2.php",
                    data:{
                        id:id } ,
                        success:function(data){
                            console.log(data);
                            record=JSON.parse(data);
                          
                            console.log(record);
                            userid.val(record.id)
                    Name.val(record.name)
                    Email.val(record.email)
                    Role.val(record.role)
                    Password.val(record.password)
                    
                   
              
                }
                })
                })
            
            
            })
        
    
    