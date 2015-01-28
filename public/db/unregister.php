<?php
session_start();
include_once "connect_to_mysql.php";

$con = mysql_connect("$db_host","$db_userName","$db_password");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$email = $_SESSION['SESS_MEMBER_EMAIL'];
$email = "'$email'";

mysql_query("DELETE FROM members WHERE email=$email");

include_once "logout.php";

header("location: ../removed");
mysql_close($con);
?>