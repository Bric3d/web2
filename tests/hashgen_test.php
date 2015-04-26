<?php

require("../hashgen.php");

$test1 = hashgen("admin", "admin");
$test2 = hashgen("admin", "admin");

echo ($test1 . PHP_EOL . $test2 . PHP_EOL);
if ($test1 === $test2)
	echo ("Good\n");
else
	echo ("Error\n");

?>