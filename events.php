<html>
<head>
</head>
	 <base href='/ragam/'>
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

			$name=str_replace(' ','_',$row2[name]);
			$ul.="<li><a href='events/$name'>".$row2['name']."</a></li>";
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
<div id="content_wrap">
  <div id="event_wrap">
  <div id="event_head">
    <span id="event_logo" style="background-image: url(img/oat_crowd.jpg); background-position: -300px;"></span><span id="event_title">Antakshari</span>
  </div>
  <div id="event_main">
    <ul id="edesc_sections">
      <li class="edesc_focused"><a href="#Intro">Introduction</a></li>
      <li><a href="#Prize">Prize</a></li>
      <li><a href="#Contact">Contacts</a></li>
    </ul>
    <span class="clear"></span>
    <div id="event_text">
      <h3 id="Intro">Introduction</h3>
      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
      <h3 id="Prize">Prizes</h3>
      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
      <h3 id="Contact">Contacts</h3>
      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.</p>
    </div>
  </div>
  </div>
</div>
</body>
</html>
