<html>
<head>
</head>
	 <link href="style/style.css" rel="stylesheet">
	 <script type='text/javascript' src='scripts/jquery.min.js'></script>
	 <script type='text/javascript' src='scripts/script.js'></script>
</head>
<body>
<div id='events_list'>
<?php
	require_once('connect.php');
	$foo="";
	$query1="SELECT name,cat_id FROM `event_cats` WHERE `par_cat`='1'";
	$result1=$mysqli->query($query1);
	while($row1=$result1->fetch_assoc())
	{
		$ul="";$select="";
		$ul_hd="<ul><li>".$row1['name']."</li>";
		$select_hd="<select><option>".$row1['name']."</option>";
		$foo.=$ul_hd;
		$catid=$row1['cat_id'];
		$query2="SELECT events.name FROM `events` WHERE `cat_id`='$row1[cat_id]'";
		$result2=$mysqli->query($query2);
		while($row2=$result2->fetch_assoc())
		{
			$ul.="<a href='events/$row2[name]'><li>".$row2['name']."</li></a>";
			$select.="<option>".$row2['name']."</option>";
		}
		$foo.=$ul."</ul>";
		$foo.=$select_hd.$select."</select>";
	}
	echo $foo;
?>
</div>
<div style='height:1000px;width:100%;float:left;'></div>
</body>
</html>