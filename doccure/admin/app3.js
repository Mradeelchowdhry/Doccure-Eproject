$(document).ready(function(){

   
    form1=$("#pat_form");
id = $("#id")
Name = $("#Name")
Address = $("#Address")
Password = $("#Password")
Phone = $("#Phone")
Email = $("#Email")
Userid = $("#userid")
btn1=$("#show_pat_form");
addbtn1=$("#addpat");


form1.hide();
// btn=$("#btn");
// tablebody=$("#tablebody");
btn1.on("click",function(){
    console.log("hit enter");
   form1.slideToggle();

   
   
   })
   $("tbody").on("click",".delete",function(e){
    id=$(this).attr("data-id");
        $.ajax({
        method:"POST",
        url:"delete1.php",
        data:{
            id:id,
        },
        success:function(data){
            alert(data);
            window.location.href="patient-manage.php";
            // getData();
            
        }
        })
        })
          //update
          $("tbody").on("click",".update",function(e){
            user_id=$(this).attr("data-id");
             form1.slideDown();
            console.log(user_id)
            $.ajax({
                method:"POST",
                url:"update1.php",
                data:{
                    user_id:user_id } ,
                    success:function(data){
                        console.log(data);
                        record=JSON.parse(data);
                      
                        console.log(record);
             
                id.val(record.patient_id)
                Name.val(record.name)
                Address.val(record.address)
                Phone.val(record.phone)
                Email.val(record.email)
           
           
                Userid.val((record.user_id))
          
            }
            })

        })
        addbtn1.on("click",function(e){
            e.preventDefault();
            $.ajax({
            method:"POST",
            url:"addpat.php",
            data:{
                id:id.val(),
                uname:Name.val(),
                email:Email.val(),
                address:Address.val(),
                phone:Phone.val(),
                pass:Password.val(),
                role:"Patient",
                userid:Userid.val()
            },
            success:function(data){
                alert(data);
                // getData();
                form.trigger("reset");
            }
            })
            })
    })