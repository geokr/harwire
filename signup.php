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
    <link rel="stylesheet" href="css/signup.css" />
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
			<div class="main">
				<div class="form-box">
					<h2>Sign up</h2>					
					<form id="sign-up" class="input-group" action="includes/signup.inc.php" method="post">
						<input type="text" class="input-field" name="name" placeholder="Full Name" required />
						<input type="text" class="input-field" name="uid" placeholder="Username" required />
						<input type="email" class="input-field" name="email" placeholder="Email" required />
						<input type="password" class="input-field" name="pwd" placeholder="Password" pattern="(?=.*[#?!@$%^&*-])(*=.*[a-z])(?=.*[A-Z]).{8,}" title="Το password πρέπει να είναι τουλάχιστον 8 χαρακτήρες και να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα, ένα αριθμό και κάποιο σύμβολο" required />
						<input type="checkbox" class="check-box" name="terms" required /><span>I agree to the terms & conditions</span>
						<!--span to colour a phrase-->
						<button type="submit" class="submit-btn" name="submit">Sign Up</button>
					</form>
				</div>
				<!-- <?php
					if(isset($_GET["error"])){
						if($_GET["error"] == "emptyinput") {
							echo "<p>Fill in all fields!</p>";
						}
						else if($_GET["error"] == "invaliduid") {
							echo "<p>Your username can't have any symbols!</p>";
						}
						else if($_GET["error"] == "usernametaken") {
							echo "<p>Username taken!</p>";
						}
						else if($_GET["error"] == "stmtfailed") {
							echo "<p>Something went wrong, try again!</p>";
						}
						else if($_GET["error"] == "none") {
							echo "<p>Sign up successful!</p>";
						}
					}
				?> -->
			</div>			
		</div>
	</body>
</html>