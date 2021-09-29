<?php
  // include "readyJSON.php";
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
    <link rel="stylesheet" href="css/index.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        <div class="main-page">
          <div class="info">
          <?php
            if (isset($_SESSION["useruid"])) {
              echo "<h1>Hello ". $_SESSION["useruid"] ."!</h1>";
              echo "<br><p><b>Choose</b> the har file you want to edit.<br> <b>Save</b> it locally or <b>upload</b> it to our database.</p>";
            } else {
              echo "<h1>Welcome to Harwire</h1>
					    <p>your ultimate destination to make all those nasty .har files spill their most intiment sectets, the only thing you have to do is login in your account. </br> </br>No account, no worries we can get you started.</p>
              <a href='signup.php'><button type='button'>Get started!</button></a>" ;
            }
          ?>
          </div>
          <div class="form-box">
          <?php
            if (isset($_SESSION["useruid"])) {
              echo "<h2>.har workstation</h2>";
              echo "<form class='input-group' method='post' enctype='multipart/form-data'>
              <input type='file' class='input-field' id='file' name='file'/>
              <button type='button' class='upload-btn' id='btnSave' name='save'>Save</button>
              <button type='button' class='upload-btn' id='btnUpload' name='upload'>Upload</button>
              
              </form>";
            } else {
              echo "<h2>Login</h2>";
              echo "<form class='input-group' action='includes/login.inc.php' method='post'>
              <input type='text' class='input-field' name='uid' placeholder='Username' required />
              <input type='password' class='input-field' name='pwd' placeholder='Password' required />
              <button type='submit' class='submit-btn' name='submit'>Login</button>
              </form>";
            }                             
          ?>
                    
        </div>
        <?php
					if(isset($_GET["error"])){
						if($_GET["error"] == "emptyinput") {
							echo "<p>Fill in all fields!</p>";
						}
						else if($_GET["error"] == "wronglogin") {
							echo "<p>Incorrect login information!</p>";
						}
					}
				?>
        
      </div>
    </div>
        
    <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
    <script src='script/parse.js'> </script>
    
  </body>  
</html>
