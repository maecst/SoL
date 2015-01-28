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
<title>Bio | Sliver of Light Photography</title>
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
	<div id="bio">
			<p>Photography, for me, is like a pursuit of perfection, of that ideal photo that is well composed, captures the magic of light, conveys a story, and evokes an emotion, whether it be positive or negative.

			<br>I love exploring new subjects, and I’ll shoot pretty much anything. These days I’m drawn to fine art long exposure photography and capturing urban lifestyles with a more street photography approach.

			<br>I'm fascinated with the natural world and how things work. I think beauty can be found not only in spectacular vistas and colourful landscapes but also in the nitty, gritty details and realities of city life.

			<br>I’m always interested in a new project, and I love collaborating with other artists, so feel free to <a href="contact.php">contact me</a>!
			</p>
			
	</div>
</div>

</div>

<!-- footer -->
<div id="footer">
	<p>Copyright &copy; 2014 Sliver of Light Photography</p>
</div>

</body>
</html>