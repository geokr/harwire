<?php
      include "includes/dbh.inc.php";
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
        <link rel="stylesheet" href="css/profile.css" />
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
      <div class="user-profile">
        <div class="info">
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
          
          <h1> <?php echo $usersname?>'s profile </h1>
          <br> 
          <table style="color:White;">
                <tr> <td>Username:</td><td><?php echo $usersuid; ?> </td></tr>
                <tr> <td>Full Name:</td><td><?php echo $usersname; ?> </td></tr>
                <tr> <td>E-mail:</td><td><?php echo $usersemail; ?> </td></tr>
          </table>
        </div>
        <div class="form-box">
          <h2>Update user information</h2>					
          <form id="update-info" class="input-group" action="includes/update.inc.php" method="post">

          <input type="hidden" name="usersid" value=<?php echo $usersid?> />
          <input type="text" class="input-field" name="usersuid" placeholder="New Username" required />
          <input type="password" class="input-field" name="pwd" placeholder="New Password" pattern="(?=.*[#?!@$%^&*-])(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Το password πρέπει να είναι τουλάχιστον 8 χαρακτήρες και να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα, ένα αριθμό και κάποιο σύμβολο" required />

          <!--span to colour a phrase-->
          <button type="submit" class="submit-btn" name="submit">Update</button>
          </form>
        </div>
      </div>                  
    </div>          
  </body>  
</html>
