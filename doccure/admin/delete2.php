<?php 
require("./config.php");

$id=$_POST['id'];



$trashdoctor="DELETE FROM `doctors` WHERE user_id='$id';";
$trashpatient="DELETE FROM `patients` WHERE user_id='$id';";
$trashuser="DELETE FROM `user` WHERE id='$id';";

$result2=mysqli_query($connection,$trashdoctor);
$result1=mysqli_query($connection,$trashpatient);
$result=mysqli_query($connection,$trashuser);
if($result && $result2 && $result1){
    echo "Record moved to trash successfully .".mysqli_affected_rows($connection)." row/rows affected."; 
}
else{
    echo "failed to delete this record.";
}

?>