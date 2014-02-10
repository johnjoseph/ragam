<?php
  require_once('connect.php');
  $query1="SELECT name,cat_id FROM `event_cats` WHERE `par_cat`='1' ORDER BY FIELD(cat_id, 10, 9, 8, 7, 5) DESC";
  $result1=$mysqli->query($query1);
  $cat_lis="";
  while($row1=$result1->fetch_assoc())
  {
    $cat_cur="<li><h4>".$row1['name']."</h4><ul>";
    $catid=$row1['cat_id'];
    $query2="SELECT code, name FROM `events` WHERE `cat_id`='$row1[cat_id]'";
    $result2=$mysqli->query($query2);
    while($row2=$result2->fetch_assoc())
    {
      $name=str_replace(' ', '_', $row2['name']);
      $cat_cur.="<li><a id='e_$row2[code]' href='events/$name'>".$row2['name']."</a></li>";
    }
    $result2->free();
    $cat_lis .= $cat_cur."</ul></li>";
  }
  $result1->free();
  echo $foo;
?>
<!DOCTYPE html>
<html>
<head>
  <base href='/ragam/' />
  <link href="style/event_style.css" rel="stylesheet">
  <link href="style/jquery.nouislider.min.css" rel="stylesheet">
  <script type='text/javascript' src='scripts/jquery.min.js'></script>
  <script type='text/javascript' src='scripts/jquery.nouislider.min.js'></script>
  <script type='text/javascript' src='scripts/event_script.js'></script>
</head>
<body>
<div id='menu'></div>
<div id="elist_wrap">
  <div id="elist_filter">
    
  </div>
  <ul id="elist">
    <?php echo $cat_lis; ?>
  </ul>
</div>
<div id="content_wrap">
  <div id="event_wrap">
  <div id="event_head">
    <span id="event_title"></span>
  </div>
  <div id="event_main">
    <div id="event_text">
    </div>
  </div>
  </div>
</div>
</body>
</html>
