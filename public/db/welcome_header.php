<div id="welcomeHeader">


	<?php
			if (isLoggedIn()){
				echo 'Welcome, ' . $_SESSION['SESS_FIRST_NAME'] . "&nbsp;&nbsp;|&nbsp;&nbsp;";
				//echo $_SESSION['SESS_MEMBER_EMAIL'] . '&nbsp;&nbsp;&nbsp;&nbsp;';
				echo '<a href="db/logout.php" style="color: white;">Logout</a>' . "&nbsp;&nbsp;|&nbsp;&nbsp;";
				echo '<a href="forum" style="color: white;">Go to forum</a>&nbsp;&nbsp;|&nbsp;&nbsp;';
				echo '<a  href="unregisterConfirm.php" style="color: white;">Deregister</a>';
			} else {
				echo 'You are not signed in.';
			}
	?>

</div>