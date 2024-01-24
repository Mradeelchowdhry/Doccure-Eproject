<?php 
require("./config.php");

$id=$_POST['user_id'];


$update="SELECT * FROM `patients` WHERE `patients_id`=".$id."";

$result=mysqli_query($connection,$update);
if($result){
    $row=mysqli_fetch_assoc($result);
  
    echo json_encode($row);
}
else{
    echo "record not found.";
}

?>