<?php
ob_start(); //Turns on output buffering 
session_start();

$timezone = date_default_timezone_set("Europe/London");

$con = mysqli_connect("localhost", "root", "", "social"); //Connection variable

if(mysqli_connect_errno()) 
{
	echo "Failed to connect: " . mysqli_connect_errno();
}

	// $dbhost = 'localhost';
	// $dbuser = 'root';
	// $dbname = 'social';
	// $dbpass = '';

	// try {
	// 	$db =new PDO("mysql: dbhost=$dbhost; dbname=$dbname", "$dbuser", "$dbpass");
	// } catch (PDOException $e) {
	// 	echo $e->getMessage();
	// }

?>