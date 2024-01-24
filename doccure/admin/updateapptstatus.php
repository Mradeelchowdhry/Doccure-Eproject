<?php

require "config.php";

$id=$_GET['a_id'];
$action=$_GET['action'];

if ($action== 'accept' ) {
 $run= "UPDATE `appointments` SET `appointment_status`='accepted' WHERE `appointment_id` = $id;";
 $upd=mysqli_query($connection,$run);
 echo "<script>alert('Appointment accepted.')
 window.location.href='./appointment-list.php';</script>";
}else {
    $run1= "UPDATE `appointments` SET `appointment_status`='rejected' WHERE `appointment_id` = $id;";
 $upd1=mysqli_query($connection,$run1);

 echo "<script>alert('Appointment rejected.')
 window.location.href='./appointment-list.php';</script>";
}