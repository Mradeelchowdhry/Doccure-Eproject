
<?php

require "config.php";

$id=$_POST['id'];
$uname=$_POST['uname'];
$email=$_POST['email'];
$role=$_POST['role'];
$pass=$_POST['pass'];

if(!$uname=="" && !$email==""){

    
    $userinsert="INSERT INTO `user`( `id`,`name`, `email`, `role`, `password`) VALUES ('$id','$uname','$email','$role','$pass')ON DUPLICATE KEY UPDATE `name`='$uname',`email`='$email', `role`='$role', `password`='$pass';"; 
    
    $result2=mysqli_query($connection,$userinsert);
        if($result2){

            echo "Success"; 
        }
else{
    echo "record not found.";
}
}
else{
    echo "Please fill all fields.";
}
?>