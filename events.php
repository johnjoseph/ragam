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
  
  $cat_illus = "img/illustrations/general.png";
  $cat_color_bg = "#16a085";
  $cat_color_fg = "#1abc9c";
  $event_icon = "img/icons/choreo.png";
?>
<!DOCTYPE html>
<html>
<head>
  <base href='/ragam/' />
  <link href="style/event_style.css" rel="stylesheet">
  <link href="style/jquery.nouislider.css" rel="stylesheet">
  <script type='text/javascript' src='scripts/jquery.min.js'></script>
  <script type='text/javascript' src='scripts/jquery.nouislider.min.js'></script>
  <script type='text/javascript' src='scripts/event_script.js'></script>
  <style>
#content_wrap
{
  background-color: <?php echo $cat_color_bg; ?>;
}
#event_text>span>span
{
  background-color: <?php echo $cat_color_fg; ?>;
}
#event_logo
{
  border-color: <?php echo $cat_color_bg; ?>;
  background-color: <?php echo $cat_color_fg; ?>;
  background-image: url('<?php echo $event_icon; ?>');
}
#cat_illus
{
  background-image: url('<?php echo $cat_illus; ?>');
}
  </style>
</head>
<body>
<div id='menu'></div>
<div id="elist_wrap">
  <div id="elist_filter">
    <h3>Filters</h3>
    <span class="input_wrap">
      <input placeholder="Filter by Keywords" type="text" id="key_filter" />
    </span>
    <span id="selected_team_size"></span>
    <h5>Team size:</h5>
    <div id="team_filter"></div>
    <span id="selected_prize"></span>
    <h5>Minimum Prize:</h5>
    <div id="prize_filter"></div>
  </div>
  <ul id="elist">
    <?php echo $cat_lis; ?>
  </ul>
</div>
<div id="content_wrap">
  <div id="event_wrap">
  <div id="event_head">
  	<span id="event_logo"></span>
    <span id="event_title"></span>
  </div>
  <div id="event_main">
    <div id="event_text">
      <span id='event_text_left'></span>
      <span id='event_text_right'></span>
    </div>
  </div>
  <div id='cat_illus'></div>
  </div>
</div>
</body>
</html>
