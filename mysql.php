<?php
require("config.php");
try {
	global $ip, $port, $username, $password, $database, $charset;
	$bdd = new PDO('mysql:host=' . $ip . ';port=' . $port . ';dbname=' . $database . ';charset=' . $charset, $username, $password);
}
catch(Exception $e) {
	die('Error connecting to the bdd : '.$e->getMessage());
}
?>
