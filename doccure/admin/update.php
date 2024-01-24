<?php 
require("./config.php");

$id=$_POST['userid'];


$update="SELECT * FROM `doctors` AS D INNER JOIN `user` AS U ON D.user_id=U.id WHERE D.doctor_id=$id;";

$result=mysqli_query($connection,$update);
if($result){
    $row=mysqli_fetch_assoc($result);
  
    echo json_encode($row);
}
else{
    echo "record not found.";
}

?>