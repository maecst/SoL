<?php
	require_once('auth.php');
	require_once('config.php');

	// Connect to server and select database.
	mysql_connect(DB_HOST, DB_USER, DB_PASSWORD)or die("cannot connect");
	mysql_select_db(DB_DATABASE)or die("cannot select DB");
	$tbl_name="topic"; // Table name

	echo 'error: ' . mysql_error() . '<br>';

	// get data that sent from form
	$topic=$_POST['topic'];
	$topic=str_replace("'","\'",$topic);
	$detail=$_POST['detail'];
	$detail=str_replace("'","\'",$detail);
	$member_id=$_SESSION['SESS_FIRST_NAME'];
	$datetime=date("d/m/y h:i:s"); //create date time
	
	echo 'error: ' . mysql_error() . '<br>';


	$sql="INSERT INTO $tbl_name(topic, detail, member_id, datetime) VALUES ('$topic', '$detail', '$member_id', '$datetime')";
		
	echo 'error: ' . mysql_error() . '<br>';

	$result=mysql_query($sql);
	
	if($result)
		header("location: ../forum");
	else {
		echo "ERROR, " . mysql_error();
	}
	mysql_close();
?>
