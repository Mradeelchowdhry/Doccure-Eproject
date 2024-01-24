<?php 
require("./config.php");

$id=$_POST['id'];


$update="SELECT * FROM `user` WHERE id=$id;";

$result=mysqli_query($connection,$update);
if($result){
    $row=mysqli_fetch_assoc($result);
  
    echo json_encode($row);
}
else{
    echo "record not found.";
}

?>