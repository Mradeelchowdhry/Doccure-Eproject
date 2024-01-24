$(document).ready(function(){

    form=$("#doc_form");
    form1=$("#pat_form");
id = $("#id")
Name = $("#Name")
Address = $("#Address")
Phone = $("#Phone")
Email = $("#Email")
Role = $("#Role")
Speciality = $("#Speciality")
Availibility = $("#Availibility")
city_id = $("#city_id")
Password = $("#Password")
city = $("#city")
Userid = $("#userid")

    btn=$("#show_doc_form");
    addbtn=$("#adddoc");
    form.hide();
    // btn=$("#btn");
    // tablebody=$("#tablebody");
    btn.on("click",function(){
        console.log("hit enter");
       form.slideToggle();
       
       })

         btn1=$("#show_pat_form");
                addbtn1=$("#addpat");
               
                form1.hide();
                // btn=$("#btn");
                // tablebody=$("#tablebody");
                btn1.on("click",function(){
                    console.log("hit enter");
                   form1.slideToggle();
                   
                   })
  


    addbtn.on("click",function(e){
        e.preventDefault();
        $.ajax({
        method:"POST",
        url:"adddoctor.php",
        data:{
            id:id.val(),
            uname:Name.val(),
            email:Email.val(),
            role:Role.val(),
            speciality:Speciality.val(),
            pass:Password.val(),
            city_id:city.val(),
            userid:Userid.val()
        },
        success:function(data){
            alert(data);
            // getData();
            form.trigger("reset");
        }
        })
        })


        $("tbody").on("click",".del",function(e){
            userid=$(this).attr("data-id");
                $.ajax({
                method:"POST",
                url:"delete.php",
                data:{
                    userid:userid,
                },
                success:function(data){
                    alert(data);
                    window.location.href="doctor-manage.php";
                    // getData();
                    
                }
                })
                })



               




            //addpat
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
                    role:Role.val(),
                    userid:Userid.val()
                },
                success:function(data){
                    alert(data);
                    // getData();
                    form.trigger("reset");
                }
                })
                })

                
            //update
            $("tbody").on("click",".upd",function(e){
                userid=$(this).attr("data-id");
                console.log(userid)
                  form.slideDown();
                $.ajax({
                    method:"POST",
                    url:"update.php",
                    data:{
                        userid:userid } ,
                    success:function(data){
                  record=JSON.parse(data);
                
                  console.log(record);
                    id.val(record.doctor_id)
                    Name.val(record.name)
                    Email.val(record.email)
                    Speciality.val(record.specialization)
                    Availibility.val(record.availability)
                    Userid.val((record.user_id))
              
                }
                })
                })
  

            
           
           
        })
             
        
    
    