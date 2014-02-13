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
	$cat_id=$row['cat_id'];
	$query="SELECT * FROM `cat_xtra`,`events` WHERE cat_xtra.id=$cat_id";
	$result=$mysqli->query($query);
	$row=$result->fetch_assoc();
	$arr['color1']=$row['color1'];
	$arr['color2']=$row['color2'];
	$json=json_encode($arr);
	print_r($json);
?>