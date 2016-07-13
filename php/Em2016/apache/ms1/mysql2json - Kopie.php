<?php
require('db.inc.php');

$query = "SELECT * FROM kader;";

$mysqli = getConn();

$result = $mysqli->query($query);

$var = array();
while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
	$var[] = $row;
}

/* free result set */
$result->free();

/* close connection */
$mysqli->close();
//echo json_encode($row);
//echo '{"users":'.json_encode($var).'}';
echo json_encode($var, JSON_UNESCAPED_UNICODE););
