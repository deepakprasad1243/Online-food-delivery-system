<?php
include '../includes/connect.php';
	foreach ($_POST as $key => $value)
	{
		if(preg_match("/[0-9]+_name/",$key)){
			if($value != ''){
			$key = strtok($key, '_');
			$value = htmlspecialchars($value);
			$sql = "UPDATE restaurents SET name = '$value' WHERE restaurent_id = $key;";
			$con->query($sql);
			}
		}
		if(preg_match("/[0-9]+_price/",$key)){
			$key = strtok($key, '_');
			$sql = "UPDATE restaurents SET location = $value WHERE restaurent_id = $key;";
			$con->query($sql);
		}
		if(preg_match("/[0-9]+_hide/",$key)){
			if($_POST[$key] == 1){
			$key = strtok($key, '_');
			$sql = "UPDATE restaurents SET deleted = 0 WHERE restaurent_id = $key;";
			$con->query($sql);
			} else{
			$key = strtok($key, '_');
			$sql = "UPDATE restaurents SET deleted = 1 WHERE restaurent_id = $key;";
			$con->query($sql);
			}
		}
	}
header("location: ../restaurent.php");
?>
