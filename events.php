<?php
  require_once('connect.php');
  $query1="SELECT name,cat_id FROM `event_cats` WHERE `par_cat`='1' ORDER BY FIELD(cat_id, 10, 9, 8, 7, 5) DESC";
  $result1=$mysqli->query($query1);
  $uls="";$selects="";
  while($row1=$result1->fetch_assoc())
  {
    $ul_cur="<ul><li>".$row1['name']."</li>";
    $select_cur="<select><option>".$row1['name']."</option>";
    $catid=$row1['cat_id'];
    $query2="SELECT events.name FROM `events` WHERE `cat_id`='$row1[cat_id]'";
    $result2=$mysqli->query($query2);
    while($row2=$result2->fetch_assoc())
    {
      $name=str_replace(' ','_',$row2[name]);
      $ul_cur.="<li><a href='events/$name'>".$row2['name']."</a></li>";
      $select_cur.="<option>".$row2['name']."</option>";
    }
    $result2->free();
    $uls .= $ul_cur."</ul>";
    $selects .= $select_cur."</select>";
  }
  $result1->free();
  echo $foo;
?>
<!DOCTYPE html>
<html>
<head>
  <base href='/ragam/' />
  <link href="style/event_style.css" rel="stylesheet">
  <script type='text/javascript' src='scripts/jquery.min.js'></script>
  <script type='text/javascript' src='scripts/event_script.js'></script>
</head>
<body>
<div id='menu'></div>
<div id="elist_wrap">
  <div id="elist_filter">
  	<span id='elist_moveup'></span>
  </div>
  <div id="elist">
    <?php echo $uls.$selects; ?>
    <span class="clear"></span>
  </div>
</div>
<div id="content_wrap">
  <div id="event_wrap">
  <div id="event_head">
    <span id="event_title"></span>
  </div>
  <div id="event_main">
    <span class="clear"></span>
    <div id="event_text">
    <span id='event_text_left'></span>
    <span id='event_text_right'></span>
    </div>
  </div>
  </div>
</div>
</body>
</html>
