<?php
$db_host = "sliverMembers.db.12315773.hostedresource.com";
$db_userName = "sliverMembers";
$db_password = "Comp1536!";
$db_name = "sliverMembers";

mysql_connect("$db_host","$db_userName","$db_password") or die(mysql_error());
mysql_select_db("$db_name") or die("no database by that name");

$con = mysql_connect("$db_host","$db_userName","$db_password");
?>


