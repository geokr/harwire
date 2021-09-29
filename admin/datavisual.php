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
    <link rel="stylesheet" href="css/datavisual.css" />  
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
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
      </div>
      <div class="main-page">
        <div id=map-info>
          <h1>Data Visualization</h1><br><br>
          <?php
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
          ?>
        </div>
        <div id="mapid"></div>
        <br>
        <br>
        <button>Update map</button>            
      </div>         
     
    </div>
    <script>
      var coordinates = <?php echo json_encode($coordinates); ?>;
    </script>
    <script type='text/javascript' src='script/leaflet.js'> </script>
    <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <script> 
      $(document).ready(function () {
        $("button").click(function () {
          var xmlhttp = new XMLHttpRequest();

          xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // console.log(this.responseText);
                document.getElementById("map-info").innerHTML = this.responseText;
            }
          };
          xmlhttp.open("GET", "includes/map.inc.php", true);
          xmlhttp.send();
        });
      });
    </script>
  </body>
</html>