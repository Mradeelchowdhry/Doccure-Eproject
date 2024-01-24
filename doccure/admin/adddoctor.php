
<?php

require "config.php";

$id=$_POST['id'];
$userid=$_POST['userid'];
$uname=$_POST['uname'];
$email=$_POST['email'];
$role=$_POST['role'];
$speciality=$_POST['speciality'];
$availability="Available";
$pass=$_POST['pass'];
$city_id=$_POST['city_id'];
$userid=$_POST['userid'];

if(!$uname=="" && !$email=="" && !$pass==""){

    
    $userinsert="INSERT INTO `user`( `id`,`name`, `email`, `role`, `password`) VALUES ('$userid','$uname','$email','$role','$pass')ON DUPLICATE KEY UPDATE `name`='$uname',`email`='$email', `role`='$role', `password`='$pass';"; 
    
    $result2=mysqli_query($connection,$userinsert);
    if($result2){
        $getuser="SELECT * FROM `user` WHERE `email`='$email' AND `role`='$role';";
        $result3=mysqli_query($connection,$getuser);
        if($result3){
        $newuser=  mysqli_fetch_assoc($result3);
        $user_id=$newuser['id'];}}
        
        $insert="INSERT INTO `doctors`(`doctor_id`,`user_id`, `name`, `specialization`, `availability`, `city_id` ) VALUES ('$id','$user_id','$uname','$speciality','$availability','$city_id') ON DUPLICATE KEY UPDATE `user_id`='$userid',`name`='$uname',`specialization`='$speciality', `availability`='$availability', `city_id`='$city_id';"; 
        $result=mysqli_query($connection,$insert);
        if($result){

            echo "Success";
            echo "<script>window.location.href='./adddoctor.php';</script>";
        }
        


else{
    echo "record not found.";
}
}
else{
    echo "Please fill all fields.";
}
?>