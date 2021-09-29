<?php
  include "../../includes/dbh.inc.php";
  session_start();

  $sql = "SELECT entries.serverIPAddress, har_file.city FROM entries INNER JOIN har_file ON entries.harFileID = har_file.harFileID ";
  $result = mysqli_query($link, $sql) or die(mysql_error());
  
  // print_r($result). PHP_EOL;
  $coordinates = array();
  
  while($row = mysqli_fetch_assoc($result)){
    
    // add each row returned into an array
    $user_city = $row['city'];
    $serverIP = $row['serverIPAddress'];
    $geo=file_get_contents("https://extreme-ip-lookup.com/json/$serverIP");
    extract(json_decode($geo,true));
    
    $coordinates[] = array($lat, $lon, $user_city);
  }        
