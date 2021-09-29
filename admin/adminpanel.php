<?php
      include "../includes/dbh.inc.php";
      session_start();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Harwire</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,400;0,700;1,400;1,700&display=swap");
    </style>
    <link rel="icon" href="..\img\h-02.png">
    <link rel="stylesheet" href="css/adminpanel.css" />  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
    <div class="container">
      <div class="nav-bar">
        <div class="nav-left-side">
          <a href="adminpanel.php"><img src="..\img\harwire-logo.png" alt="Harwire logo" /></a>
        </div>
        <div class="nav-right-side">
          <ul>
            <li><a href="..\about.php">ABOUT</a></li>
            <li><a href='adminpanel.php'>ADMIN PANEL</a></li>
            <li><a href='..\index.php'>HAR WORKSTATION</a></li>
            <li><a href='..\profile.php'>PROFILE</a></li>
            <li><a href='..\stats.php'>STATS</a></li>
            <li><a href='..\includes\logout.inc.php'>LOG OUT</a></li>
          </ul>				
        </div> 
      </div>
      <div class="main-page">
        <div class=content>
          <div class="basic-info">
            <a href="basicinfo.php"><img src="..\img\info.png" alt="Basic Information Visualisation" /></a><br>
            <h3>Basic Information Visualisation</h3>
          </div>
          <div class="timings">
            <a href="timings.php"><img src="..\img\timings.png" alt="Response time analysis" /></a><br>
            <h3>Response time analysis</h3>
          </div>
          <div class="httpheaders">
            <a href="httpheaders.php"><img src="..\img\header.png" alt="HTTP header analysis" /></a><br>
            <h3>HTTP header analysis</h3>
          </div>
          <div class="datavisuals">
            <a href="datavisual.php"><img src="..\img\visuals.png" alt="Data Visualization" /></a><br>
            <h3>Data Visualization</h3>
          </div>
        </div>
      </div>      

    </div>
    
  </body>
</html>
