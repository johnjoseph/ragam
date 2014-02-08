<html>
<head>
</head>
	 <link href="style/event_style.css" rel="stylesheet">
	 <script type='text/javascript' src='scripts/jquery.min.js'></script>
	 <script type='text/javascript' src='scripts/event_script.js'></script>
</head>
<body>
<div id='menu'></div>
<div id="elist_wrap">
  <div id="elist_filter"></div>
  <div id="elist">
<?php
	require_once('connect.php');
	$foo="";
	$query1="SELECT name,cat_id FROM `event_cats` WHERE `par_cat`='1' ORDER BY FIELD(cat_id, 10, 9, 8, 7, 5) DESC";
	$result1=$mysqli->query($query1);
	while($row1=$result1->fetch_assoc())
	{
		$ul="";$select="";
		$ul_hd="<ul><li>".$row1['name']."</li>";
		$select_hd="<select><option>".$row1['name']."</option>";
		$catid=$row1['cat_id'];
		$query2="SELECT events.name FROM `events` WHERE `cat_id`='$row1[cat_id]'";
		$result2=$mysqli->query($query2);
		while($row2=$result2->fetch_assoc())
		{
			$ul.="<li><a href='events/$row2[name]'>".$row2['name']."</a></li>";
			$select.="<option>".$row2['name']."</option>";
		}
		$foo.=$ul_hd.$ul."</ul>";
		$foo.=$select_hd.$select."</select>";
	}
	echo $foo;
?>
    <span class="clear"></span>
  </div>
</div>
<div style='height:1000px;width:100%;float:left;'></div>
</body>
</html>
