<?php

	include 'db/functions.php';
	require_once('db/config.php');
	session_start();

	// Connect to server and select database.
	mysql_connect(DB_HOST, DB_USER, DB_PASSWORD)or die("cannot connect, error: ".mysql_error());
	mysql_select_db(DB_DATABASE)or die("cannot select DB, error: ".mysql_error());
	$tbl_name="members"; // Table name
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Thank You | Sliver of Light Photography</title>
<link rel="stylesheet" href="style/base.css" media="screen">
<link rel="stylesheet" href="style/baseprint.css" media="print">
<link rel="icon" type="image/png" href="images/favicon.png">
</head>

<body>
<div id="wrapper">

<!-- logo -->
<a href="index">
	<div id="logo">
		<p>Logo</p>
	</div>		
</a>

<!-- header -->
<div id="header">
	<svg id="title" xmlns="http://www.w3.org/2000/svg" pointer-events="none"></svg>
	<a href="index">
		<div id="titleLink">
			Home
		</div>
	</a>
</div>

<?php
	include_once "db/welcome_header.php";
?>

<!-- nav -->
<?php
	include_once "navbar.php";
?>
		
<!-- content -->
<div id="content">
	<div id="contact">
		<h2>Thank You!</h2>
			<br>
			<br>
			<br>
			<br>
			<p>You are now a registered user. <br>
			<br>
			You may now <a href="signin#signInContainer">sign in</a> to make comments in the forum.<br>
			<br>
			<br>
			</p>
	</div>
	
	<br>
	
			
</div>

<!-- footer -->
<div id="footer">
	<p>Copyright &copy; 2014 Sliver of Light Photography</p>
</div>

</div>

</body>
</html>