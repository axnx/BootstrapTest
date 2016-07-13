<?php
require('constants.php');

function getConn() {
	
	$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		if ($mysqli->connect_error) {
			die("Connection failed: " . $mysqli->connect_error);
		}
    return $mysqli;
  }
