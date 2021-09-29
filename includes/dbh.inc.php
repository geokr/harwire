<?php

$host="localhost"; // Host name.
$db_user="root"; // MySQL username.
$db_password=""; // MySQL password.
$database="project_web_2020"; // Database name.

//connecting to database. Prints a message 
$link = mysqli_connect($host, $db_user, $db_password, $database);
if (!$link) {
   die('Could not connect: ' . mysqli_connect_error());
}

