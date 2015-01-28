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
<title>Members Sign In | Sliver of Light Photography</title>
<link rel="stylesheet" href="style/base.css" media="screen">
<link rel="stylesheet" href="style/baseprint.css" media="print">
<link rel="icon" type="image/png" href="images/favicon.png">

<script type="text/javascript" language="Javascript" src="js/formValidation.js"></script>
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
<div id="content" class="signInBackground">

	<!-- sign in -->
	<h2>Member Sign In</h2>
	<div id="signInContainer">
		<form id="signInForm" method="post" action="http://www.cstprogram.ca/sliver/db/login.php">
			<label for="email">Email:</label>		
			<input class="userinput" type="text" id="email" name="email" placeholder="myEmail@mailMeStuff.com">

			<label for="password">Password:</label>
			<input class="userinput" id="password" type="password" name="password" placeholder="bigSecret">

			<input class="signInButton" type="submit" name="login" value="Sign in">
		</form>
		
		
		<div class="button">
			<a href="#registerContainer">
				<p id="registerButton" onmouseover="showRegister()" onmouseout="hideRegister()">Not a member?</p>
			</a>
		</div>
		
		

	</div><!-- sign in container -->
	
	<!-- register -->
	<div id="regOverflow">

		<div id="registerContainer">
			<h2>Register</h2>
			
			<form id="registerForm" method="post" action="http://www.cstprogram.ca/sliver/db/register.php" onsubmit="return validateForm()">
			
				<!-- name -->
				<div id="nameContainer">
					<label for="firstName">Name</label><span id="nameMessage"></span><br>					
					<input type="text" onkeyup="validateName(); hideErrorMessage()" id="firstName" name="firstName" size="15" placeholder="First">	
					<label for="lastName">&nbsp;</label>
					<input type="text" onkeyup="validateName(); hideErrorMessage()" id="lastName" name="lastName" size="18" placeholder="Last">
				</div>
				
				<!-- email -->
				<div id="emailContainer">
					<label for="regEmail">Email</label><span id="regEmailMessage"></span><br>
					<input type="email" onkeyup="validateEmail(); hideErrorMessage()" id="regEmail" name="regEmail" size="40">
				</div>
				
				<!-- password -->
				<div id="passwordContainer">
				<label for="regPassword">Password</label><span id="regPasswordMessage"></span>
				<p style="margin: 0; font-size: .6em;">Minimum 6 characters; must include upper case, lower case, and a number</p>
				<input class="userinput" onkeyup="validatePassword(); hideErrorMessage()" id="regPassword" type="password" name="regPassword">
				
				<label for="regPasswordVerify" style="margin: 0; font-size: .6em;" id="regPasswordVerifyMessage">Please re-enter your password.</label>
				<input class="userinput" onkeyup="validatePassword(); hideErrorMessage()" id="regPasswordVerify" type="password" name="regPasswordVerify">				
				</div>
						
				<!-- subscribe for emails -->
				<!--
				<div id="subscribeContainer">
					<label for="subscribe"> Subscribe for 
							<span title="Check the box to receive an e-mail version of each new blog entry." id="hovering">E-mails</span>
					</label>
					<input type="checkbox" id="subscribe" name="subscribe">
				</div>
				-->
				
				<input class="signInButton" type="submit" value="Register">					
				
				<div id="regSubmitMessage"></div>
			</form>
			
			<div class="button">
				<a href="#signInContainer">
					<p>Back</p>
				</a>
			</div>
			
		</div><!--registerContainer-->
	</div><!-- regOverflow -->
</div><!-- content -->

<!-- footer -->
<div id="footer">
	<p>Copyright &copy; 2014 Sliver of Light Photography</p>
</div>

</div><!-- wrapper -->

</body>
</html>