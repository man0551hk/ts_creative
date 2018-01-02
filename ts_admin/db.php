<?php
$hostName = "localhost:8889";
$userName = "root";
$password = "root";
$dbName = "sq_bcd";

/*$userName = "bcdintl";
$password = "bq9ezTZT";
$dbName = "bcdintl_sq_bcd";*/

mysql_connect($hostName, $userName, $password) or die("Unable to connect to host $hostName");
mysql_select_db($dbName) or die("Unable to select database $dbName");
mysql_query("SET NAMES 'utf8'");

?>
