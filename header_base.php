<?php
function get_content($file, $param)
{
	if ($file === "article.php")
	{
		if ($param === "description")
			return "Article description here";
		if ($param === "title")
			return ("Article title will go here");
	}
	else
	{
		if ($param === "description")
			return "Site description here";
		if ($param === "title")
			return ("Site title will go here");
	}
	if ($param === "favicon")
			return ("placeholder.png");
}

?>
<!DOCTYPE html>
<html>
<head>
		<meta name="robots" CONTENT="index, follow">
		<meta charset="UTF-8">
		<link rel="icon" href="<?php echo get_content($file, "favicon"); ?>" />
		<meta name="description" content="Get your pets from peoples near you, or give the newborns of your own companions.">
		<meta name="keywords" content="<?php echo get_content($file, "description"); ?>">
		<title><?php echo get_content($file, "title");?></title>
		<link href="./css/main.css" rel="stylesheet" type="text/css">
</head>
<body>