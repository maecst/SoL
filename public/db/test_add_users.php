<?php

include_once "connect_to_mysql.php";

$con = mysql_connect("$db_host","$db_userName","$db_password");

mysql_query("INSERT INTO members (firstName, lastName, email, password)
VALUES ('John', 'Smith', 'jsmith@msn.com', 'Comp1536!')");

mysql_query("INSERT INTO members (firstName, lastName, email, password)
VALUES ('Jane', 'Smith', 'jsmith@msn.ca', 'Asdf!')");

mysql_query("INSERT INTO members (firstName, lastName, email, password)
VALUES ('Bob', 'Ray', 'bray@hotmail.com', 'Comp1536!')");

mysql_query("INSERT INTO members (firstName, lastName, email, password)
VALUES ('Zack', 'Applebee', 'zapple@msn.com', 'Comp1536!')");


mysql_close($con);
?>