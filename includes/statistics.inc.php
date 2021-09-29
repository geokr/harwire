<?php
  include "dbh.inc.php";
  include "functions.inc.php";
  session_start();

  echo "<h1> Statistics </h1><br>";
  $currentUser = $_SESSION["useruid"];
  $usersql = "SELECT * FROM users WHERE usersUid='$currentUser'";
  $results = mysqli_query($link,$usersql);
  while($row=mysqli_fetch_array($results)){
    $usersid=$row['usersId'];
    $usersuid = $row['usersUid'];
    $usersemail = $row['usersEmail'];
    $usersname = $row['usersName']; 
  }


 getUsersStatistics($link, $usersid); 

  echo "<br><br><h2> Heatmap </h2><br>";

  $sql = "SELECT serverIPAddress FROM (entries RIGHT JOIN har_file ON entries.harFileID = har_file.harFileID) WHERE userID = '$usersid'";
  $result = mysqli_query($link, $sql) or die(mysql_error());
  
  // print_r($result). PHP_EOL;
  $coordinates = array();
  
  while($row = mysqli_fetch_assoc($result)){
    // print_r($row);
    //add each row returned into an array
    
    $serverIP = $row['serverIPAddress'];
    $geo=file_get_contents("https://extreme-ip-lookup.com/json/$serverIP");
    extract(json_decode($geo,true));
    
    $coordinates[] = array($lat, $lon);
  }        
  // print_r($coordinates);
