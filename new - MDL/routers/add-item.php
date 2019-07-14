<?php
include '../includes/connect.php';

$image = $_POST['name'];
$tmpimage=$_FILES["image"]["tmp_name"];
move_uploaded_file($tmpimage,"../images/menu/".$image.".jpg");
$name = $_POST['name'];
$price = $_POST['price'];
$sql = "INSERT INTO items (name, price) VALUES ('$name', $price)";
$con->query($sql);
header("location: ../admin-page.php");
?>
