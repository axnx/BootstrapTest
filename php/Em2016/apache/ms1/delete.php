<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "em2016";

if(!isset($_GET['id']) && empty($_GET['id'])){
	exit("n/a");
}

$id = $_GET['id'];
echo "id=" . $id;

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// sql to delete a record
$sql = "DELETE FROM kader WHERE id=" . $id;

if (mysqli_query($conn, $sql)) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . mysqli_error($conn);
}

mysqli_close($conn);