<?php
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
   <link rel="stylesheet" href="css/about.css" />
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
			<div class="main-page"  style="margin-bottom:150px;">
				<div class="content">
					<div class="project_desctiption">
						<h1>Goal</h1>
						<p>
							The goal of this project is to develop a complete system regarding the collection, management and analysis of crowdsourced HTTP data.
						</p>
					</div>
					<div class="project_contributor_georgia">
						<img src="img/woman.png" />
						<h3>Georgia Kourou</h3>
						<p>AM: 1041784 <br />email: <a href = "mailto: kourou@ceid.upatras.gr">gkourou@ceid.upatras.gr</a></p>
					</div>
					<div class="project_contributor_george">
						<img src="img/man.png" />
						<h3>George Tzovlas</h3>
						<p>AM: 1047173 <br />email: <a href = "mailto: tzovlas@ceid.upatras.gr">tzovlas@ceid.upatras.gr</a></p>
					</div>
					<div class="project_contributor_adam">
						<img src="img/boy.png" />
						<h3>Adamantios Mantadakis</h3>
						<p>AM: 1047207 <br />email: <a href = "mailto: mantadakis@ceid.upatras.gr">mantadakis@ceid.upatras.gr</a></p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
