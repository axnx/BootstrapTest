<?php
   //open connection to mysql db
    $connection = mysqli_connect("localhost","root","","em2016") or 
			die("Error " . mysqli_error($connection));
			
		$connection->set_charset("utf8");
		//mysqli_set_charset($connection, 'utf8');
    //fetch table rows from mysql db
    $sql = "select * from kader";
    $result = mysqli_query($connection, $sql) or 
			die("Error in Selecting " . mysqli_error($connection));

    //create an array
    $emparray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $emparray[] = $row;
    }
		
		//echo sizeof($emparray);
		//print_r($emparray);
    		
		echo json_encode($emparray,JSON_UNESCAPED_UNICODE);

    //close the db connection
    mysqli_close($connection);
		
		

    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, POST');
    header("Access-Control-Allow-Headers: X-Requested-With");
