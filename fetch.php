<?php
	$eventname=$_REQUEST['eventname'];
	require_once('connect.php');
	$query="SELECT * FROM `events` WHERE `name`='$eventname'";
	$result=$mysqli->query($query);
	$row=$result->fetch_assoc();
	$arr=array();
	$arr['name']=$row['name'];
	$arr['desc']="Introduction||ttl||".$row['longdesc'];
	$json=json_encode($arr);
	print_r($json);
?>