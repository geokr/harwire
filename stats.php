<?php
      include "includes/dbh.inc.php";
      include "includes/functions.inc.php";
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
        <link rel="icon" href="img/h-02.png">
        <link rel="stylesheet" href="css/stats.css" />

        <!--MAP INTEGRATION -->
        <script src="script/heatmap.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
        <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
        <script src="script/leaflet-heatmap.js"></script>
        
  </head>
  <body>
    <div class="container">
      <div class="nav-bar">
        <div class="nav-left-side">
          <?php
            if (isset($_SESSION["useruid"])) {
              if ( $_SESSION["userlevel"] === 1 ) {
                echo "<a href='admin/adminpanel.php'><img src='img/harwire-logo.png' alt='Harwire logo' /></a>";
              } else {
                echo "<a href='index.php'><img src='img/harwire-logo.png' alt='Harwire logo' /></a>";
              }
            } else {
              echo "<a href='index.php'><img src='img/harwire-logo.png' alt='Harwire logo' /></a>";
            }
          ?>
				</div>
				<div class="nav-right-side">
					<ul>
						<li><a href="about.php">ABOUT</a></li>
            <?php
							if (isset($_SESSION["useruid"])) {
							  if ( $_SESSION["userlevel"] === 1 ) {
									echo "<li><a href='admin\adminpanel.php'>ADMIN PANEL</a></li>
									<li><a href='index.php'>HAR WORKSTATION</a></li>
									<li><a href='profile.php'>PROFILE</a></li>
									<li><a href='stats.php'>STATS</a></li>
									<li><a href='includes\logout.inc.php'>LOG OUT</a></li>";	
								} else {
									echo "<li><a href='index.php'>HAR WORKSTATION</a></li>
									<li><a href='profile.php'>PROFILE</a></li>
									<li><a href='stats.php'>STATS</a></li>
									<li><a href='includes/logout.inc.php'>LOG OUT</a></li>";
								}
							}
							else {
							  echo "<li><a href='signup.php'>SIGN UP</a></li>";
							}
            ?>
					</ul>				
				</div>
      </div>

      <!-- general page format ends here --> 

      <div class="main-page">
        <div class="info">
          <h1> Statistics </h1><br>
            <?php
              $currentUser = $_SESSION["useruid"];
              $usersql = "SELECT * FROM users WHERE usersUid='$currentUser'";
              $results = mysqli_query($link,$usersql);
              while($row=mysqli_fetch_array($results)){
                $usersid=$row['usersId'];
                $usersuid = $row['usersUid'];
                $usersemail = $row['usersEmail'];
                $usersname = $row['usersName']; 
              }
            ?>
            
            <!-- START - CONTENT of the page -->
            <?php getUsersStatistics($link, $usersid); ?> 

          <br><br>
          <h2> Heatmap </h2><br>
            <?php
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
                  
                if ($lat != '' && $lon != ''){
                  $coordinates[] = array($lat, $lon);
                }
              }        
              // print_r($coordinates);
            ?>

          
          <div id=mapid> </div>
          <br>
          <button>Update data</button>
          <!-- END - CONTENT of the page -->
            
        
        </div>                  
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
                document.getElementById("info").innerHTML = this.responseText;
            }
          };
          xmlhttp.open("GET", "includes/statistics.inc.php", true);
          xmlhttp.send();
        });
      });
    </script>          
  </body>
      
</html>
