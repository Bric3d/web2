<?php

function hashgen($login, $password)
{
	$hash1 = hash("whirlpool", $login);
	$hash2 = hash("whirlpool", $password);
	$ret = substr($hash1, 0, 64) . substr($hash2, 64, 64);
	return ($ret);
}

?>