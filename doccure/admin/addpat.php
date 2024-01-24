
<?php

require "config.php";

$id=$_POST['id'];
$userid=$_POST['userid'];
$uname=$_POST['uname'];
$email=$_POST['email'];
$role=$_POST['role'];
$address=$_POST['address'];
$pass=$_POST['pass'];
$phone=$_POST['phone'];
$userid=$_POST['userid'];

if(!$uname=="" && !$email==""){

    
    $userinsert="INSERT INTO `user`( `id`,`name`, `email`, `role`, `password`) VALUES ('$userid','$uname','$email','$role','$pass')ON DUPLICATE KEY UPDATE `name`='$uname',`email`='$email', `role`='$role', `password`='$pass';"; 
    
    $result2=mysqli_query($connection,$userinsert);
    if($result2){
        $getuser="SELECT * FROM `user` WHERE `email`='$email' AND `role`='$role';";
        $result3=mysqli_query($connection,$getuser);
        if($result3){
        $newuser=  mysqli_fetch_assoc($result3);
        $user_id=$newuser['id'];
        
        $insert="INSERT INTO `patients`(`patients_id`, `user_id`, `name`, `address`, `phone`, `email`) VALUES ('$id','$user_id','$uname','$address','$phone','$email') ON DUPLICATE KEY UPDATE `user_id`='$user_id',`name`='$uname',`email`='$email', `address`='$address', `phone`='$phone';"; 
        $result=mysqli_query($connection,$insert);
        if($result){

            echo "Success"; 
            echo "<script>window.location.href='./patient-manage.php';</script>";
        }  }}     

else{
    echo "record not found.";
}
}
else{
    echo "Please fill all fields.";
}
?>