<?php 
require("./config.php");

$id=$_POST['id'];



$trash="DELETE FROM `patients` WHERE patients_id='$id';";

$result=mysqli_query($connection,$trash);
if($result){
    echo "Record moved to trash successfully .".mysqli_affected_rows($connection)." row/rows affected."; 
}
else{
    echo "failed to delete this record.";
}

?>