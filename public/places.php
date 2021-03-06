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
<title>Places | Photo Gallery | Sliver of Light Photography</title>
<link rel="stylesheet" href="style/base.css" media="screen">
<link rel="stylesheet" href="style/baseprint.css" media="print">
<link rel="icon" type="image/png" href="images/favicon.png">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/slimbox2.js"></script>
<link rel="stylesheet" href="style/slimbox2.css" type="text/css" media="screen" />
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
	<h2>Places</h2>
	<span id="gallerynav">
		[ <a href="people.php">People</a> ] &nbsp;&nbsp;
		[ <a href="nature.php">Nature</a> ] &nbsp;&nbsp;
		[ <a href="blackwhite.php">Black & White</a> ]
	</span>
	<div id="gallerycontainer">
		<a href="gallery.php"><div class="trans1" id="backButton"><div class="trans1"><span class="arrows">&lt;&lt;&lt;</span> Back</div></div></a>
		
		<a href="images/places/places001.jpg" data-lightbox="places" title="St. Thomas, U.S. Virgin Islands">
			<img src="images/places/thumb_places001.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places002.jpg" data-lightbox="places" title="Lion's Gate Bridge | Vancouver">
			<img src="images/places/thumb_places002.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places003.jpg" data-lightbox="places" title="False Creek | Vancouver">
			<img src="images/places/thumb_places003.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places004.jpg" data-lightbox="places" title="Science World | False Creek | Vancouver">
			<img src="images/places/thumb_places004.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places005.jpg" data-lightbox="places" title="Ambleside Park | North Vancouver">
			<img src="images/places/thumb_places005.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places006.jpg" data-lightbox="places" title="Astoria, OR">
			<img src="images/places/thumb_places006.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places007.jpg" data-lightbox="places" title="Astoria, OR">
			<img src="images/places/thumb_places007.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places008.jpg" data-lightbox="places" title="Astoria, OR">
			<img src="images/places/thumb_places008.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places009.jpg" data-lightbox="places" title="The Empress Hotel & Victoria's Inner Harbour | Victoria, BC">
			<img src="images/places/thumb_places009.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places010.jpg" data-lightbox="places" title="B.C. Legislature | Victoria, BC">
			<img src="images/places/thumb_places010.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places011.jpg" data-lightbox="places" title="Science World | Vancouver">
			<img src="images/places/thumb_places011.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places012.jpg" data-lightbox="places" title="Pacific Central Station | Vancouver">
			<img src="images/places/thumb_places012.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places013.jpg" data-lightbox="places" title="Main Street SkyTrain Station | Vancouver">
			<img src="images/places/thumb_places013.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places014.jpg" data-lightbox="places" title="Main Street SkyTrain Station | Vancouver">
			<img src="images/places/thumb_places014.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places015.jpg" data-lightbox="places" title="Science World Reflections | Vancouver">
			<img src="images/places/thumb_places015.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places016.jpg" data-lightbox="places" title="Skyscrapers | Hong Kong">
			<img src="images/places/thumb_places016.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places017.jpg" data-lightbox="places" title="Victoria Peak | Hong Kong">
			<img src="images/places/thumb_places017.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places018.jpg" data-lightbox="places" title="A Beacon in the Dark | Hong Kong">
			<img src="images/places/thumb_places018.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places019.jpg" data-lightbox="places" title="Symphony of Lights | Hong Kong">
			<img src="images/places/thumb_places019.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places020.jpg" data-lightbox="places" title="Trout Lake Community Centre | Vancouver">
			<img src="images/places/thumb_places020.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places021.jpg" data-lightbox="places" title="PNE | Vancouver">
			<img src="images/places/thumb_places021.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places022.jpg" data-lightbox="places" title="Fort Point | San Francisco">
			<img src="images/places/thumb_places022.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places023.jpg" data-lightbox="places" title="Japantown | Vancouver">
			<img src="images/places/thumb_places023.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places024.jpg" data-lightbox="places" title="Japantown | Vancouver">
			<img src="images/places/thumb_places024.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places025.jpg" data-lightbox="places" title="Western Industrial Area | Vancouver">
			<img src="images/places/thumb_places025.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
		<a href="images/places/places026.jpg" data-lightbox="places" title="Western Industrial Area | Vancouver">
			<img src="images/places/thumb_places026.jpg" width="120" height="120" class="thumb trans1" alt="Places Gallery"></a>
	</div>
	
</div>
<!-- footer -->
<div id="footer">
	<p>Copyright &copy; 2014 Sliver of Light Photography</p>
</div>

</div><!-- wrapper -->
</body>
</html>