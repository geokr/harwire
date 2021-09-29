<?php

if (isset($_POST["submit"])) {
  $usersid = $_POST["usersid"];
  $username = $_POST["usersuid"];
  $pwd= $_POST["pwd"];

  require_once 'dbh.inc.php';
  require_once 'functions.inc.php';


  updateUser($link, $usersid, $username, $pwd);
  loginUser($link, $username, $pwd);
  header("location: ../profile.php?updatesuccess");
} 
else {
  header("location: ../profile.php?updateerror");
  exit();
}