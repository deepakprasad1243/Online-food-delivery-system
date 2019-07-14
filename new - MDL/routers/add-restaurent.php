<?php
include '../includes/connect.php';

//INSERT INTO `restaurents`(`restaurent_id`, `name`, `location`, `deleted`) VALUES ([value-1],[value-2],[value-3],[value-4])
$name = $_POST['name'];
$location = $_POST['location'];
$sql = "INSERT INTO restaurents (`name`, `location`) VALUES ('$name', '$location')";
$con->query($sql);
header("location: ../restaurent.php");
?>
