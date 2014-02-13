<?php
require_once("config.php");
$qwords = array();
if (isset($_GET['q'])) {
  $nmatches = preg_match_all("|[a-zA-Z]+|", $_GET['q'], $matches, PREG_PATTERN_ORDER);
  if (!$nmatches) die("null");
  $qwords = $matches[0];
  $conitions = array();
  for ($i = 0; $i < count($qwords); $i++) {
    $conditions[] = "(name LIKE '%".$qwords[$i]."%' OR shortdesc LIKE '%".$qwords[$i]."%')";
  }
  $query = "SELECT code FROM events WHERE ".implode(" AND ", $conditions);
} else if (isset($_GET['tsize'])) {
  $tz = $_GET['tsize'];
  if ($tz == 0)
    die("null");
  else if ($tz < 20)
    $condition = "min <= '$tz' AND max >= '$tz'";
  else
    $condition = "max >= '$tz'";
  $query = "SELECT code FROM event_xtra WHERE ".$condition;
} else if (isset($_GET['prize'])) {
  $pz = $_GET['prize'];
  if ($pz == 0)
    die("null");
  else
    $condition = "prize >= '$pz'";
  $query = "SELECT code FROM event_xtra WHERE ".$condition;
} else die();

$mysqli = new mysqli($host,$db_user,$db_password,$db_name);
if ($mysqli->connect_errno)
  die(-1);

$res = $mysqli->query($query);
$ret = array();
while($row = $res->fetch_assoc()) {
  $ret[] = $row['code'];
}
$res->free();
print json_encode($ret);

?>
