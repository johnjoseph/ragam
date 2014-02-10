<?php
	$eventname=$_REQUEST['eventname'];
	require_once('connect.php');
	$query="SELECT * FROM `events` WHERE `name`='$eventname'";
	$result=$mysqli->query($query);
	$row=$result->fetch_assoc();
	$arr=array();
	$arr['name']=$row['name'];
	$desc=str_replace(array('<b>','</b>','<i>','</i>'),' ',$row['longdesc']);
	$arr['desc']="Introduction||ttl||".$desc;
	$arr['contacts']=$row['contacts'];
	$json=json_encode($arr);
	print_r($json);
?>