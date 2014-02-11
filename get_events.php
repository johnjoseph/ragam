<?php
require_once("config.php");
$sq = $_GET['q'];
$qwords = array();
if ($sq) {
  $nmatches = preg_match_all("|[a-zA-Z]+|", $sq, $matches, PREG_PATTERN_ORDER);
  if (!$nmatches) die();
  $qwords = $matches[0];
} else die();

$mysqli = new mysqli($host,$db_user,$db_password,$db_name);
if ($mysqli->connect_errno)
  die("[-1]");

$conitions = array();
for ($i = 0; $i < count($qwords); $i++) {
  $conditions[] = "(name LIKE '%".$qwords[$i]."%' OR shortdesc LIKE '%".$qwords[$i]."%')";
}
$query = "SELECT code FROM events WHERE ".implode(" AND ", $conditions);
$res = $mysqli->query($query);
$ret = array();
while($row = $res->fetch_assoc()) {
  $ret[] = $row['code'];
}
$res->free();
print json_encode($ret);

?>
