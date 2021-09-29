<?php
//sign up functions
function emptyInputSignup($name, $email, $username, $pwd) {
      $result;
      if (empty($name) || empty($email) || empty($username) || empty($pwd)){
            $result=true;
      }
      else {
            $result=false;
      }
      return $result;
}

function invalidUid($username) {
      $result;
      if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
            $result = true;
      }
      else {
            $result = false;
      }
      return $result;
}

function uidExists($link, $username) {
      $sql = "SELECT * FROM users WHERE usersUid = ?;";
      $stmt = mysqli_stmt_init($link);
      if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("location: ../signup.php?error=stmtfailed");
            exit();
      }

      mysqli_stmt_bind_param($stmt, "s", $username);
      mysqli_stmt_execute($stmt);

      $resultData = mysqli_stmt_get_result($stmt);

      if ($row = mysqli_fetch_assoc($resultData)) {
            return $row;
      }
      else {
            $result = false;
            return $result;
      }

      mysqli_stmt_close($stmt);
}

function createUser($link, $name, $email, $username, $pwd) {
      $sql = "INSERT INTO users (usersName, usersEmail, usersUid, usersPwd) VALUES (?, ?, ?, ?)";
      $stmt = mysqli_stmt_init($link);
      if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("location: ../signup.php?error=stmtfailed");
            exit();
      }
      $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);
      
      mysqli_stmt_bind_param($stmt, "ssss", $name, $email, $username, $hashedPwd );
      mysqli_stmt_execute($stmt);   
      mysqli_stmt_close($stmt);
      header("location: ../index.php?error=none");
}

//login in functions
function emptyInputLogin($username, $pwd) {
      $result;
      if ( empty($username) || empty($pwd)){
            $result=true;
      }
      else {
            $result=false;
      }
      return $result;
}

function loginUser($link, $username, $pwd) {
      $uidExists = uidExists($link, $username);

      if ($uidExists === false) {
            header("location: ../index.php?error=wronglogin");
            exit();
      }

      $pwdHashed = $uidExists["usersPwd"];
      $checkPwd = password_verify($pwd, $pwdHashed);

      if ($checkPwd === false) {
            header("location: ../index.php?error=wronglogin");
      }
      else if ($checkPwd === true) {
            session_start();
            $_SESSION["userid"] = $uidExists["usersId"];
            $_SESSION["useruid"] = $uidExists["usersUid"];
            $_SESSION["userlevel"] = $uidExists["usersLevel"];
            
            if ( $_SESSION["userlevel"] === 1 ){
                  header("location: ../admin/adminpanel.php");
            } else {
                  header("location: ../index.php");
            }
            exit();
      } 
}
// update functions
function updateUser($link, $usersid, $username, $pwd){
      
  $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);
  $sql = "UPDATE users SET usersUid='$username', usersPwd='$hashedPwd' WHERE usersId='$usersid'";

  $query_run = mysqli_query($link, $sql);
  if ($query_run){
    header("location: ../profile.php?status=updated");
  } else {
    header("location: ../profile.php?status=failed");
  }         
}

function updateHarFile($link, $noOfEntries, $uploadDate){
  $sql = "UPDATE `har_file` SET noOfEntries='$noOfEntries' WHERE uploadDate='$uploadDate'";

  $query_run = mysqli_query($link, $sql);
  if($query_run){
    echo "Records to `har_file` updated successfully.";
  } else{
    echo "ERROR: Could not able to execute $sql. " . $query_run->error;
  }   
}

// upload functions
function uploadToHarFile($link, $uploadDate, $noOfEntries, $isp, $city, $userID){

  $sql = "INSERT INTO `har_file` (uploadDate, noOfEntries, ISP, city, userID) VALUES ('$uploadDate', '$noOfEntries', '$isp', '$city', '$userID')";
  $query_run = mysqli_query($link, $sql);

  if($query_run){
    echo "Records to `har_file` inserted successfully.";
  } else{
    echo "ERROR: Could not able to execute $sql. " . $query_run->error;
  }
}

function uploadToEntries($link, $serverIPAddress, $wait, $startedDateTime){
  //find harfileID
  $sql0 = "SELECT * FROM `har_file` ORDER BY harFileID DESC LIMIT 1";
  $result = mysqli_query($link, $sql0);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $harfileID = $row["harFileID"];
      echo "harfile id: " . $harfileID. PHP_EOL;
    }
  } else {
    $harfileID = 0;
  }
  
  $sql = "INSERT INTO `entries` (harFileID, serverIPAddress, timings_wait, startedDateTime) VALUES ('$harfileID', '$serverIPAddress', '$wait', '$startedDateTime')";
  $query_run = mysqli_query($link, $sql);

  if($query_run){
    echo "Records to `entries` inserted successfully.";
  } else{
    echo "ERROR: Could not able to execute $sql. " . $query_run->error;
  }
}

function uploadToRequest($link, $method, $url, $request_content_type, $request_cache_control, $request_pragma, $request_expires, $request_age, $request_last_modified, $request_host){
  //find entryID
  $sql0 = "SELECT * FROM `entries` ORDER BY entryID DESC LIMIT 1";
  $result = mysqli_query($link, $sql0);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $entryID = $row["entryID"];
      echo "entry id: " . $entryID. PHP_EOL;
    }
  } else {
    echo "query failed";
  }

  $sql = "INSERT INTO `request` (entryID, method, url, content_type, cache_control, pragma, expires, age, last_modified, host) VALUES ('$entryID', '$method', '$url', '$request_content_type', '$request_cache_control', '$request_pragma', '$request_expires', '$request_age', '$request_last_modified', '$request_host')";
  $query_run = mysqli_query($link, $sql);

  if($query_run){
    echo "Records to `request` inserted successfully.";
  } else{
    echo "ERROR: Could not able to execute $sql. " . $query_run->error;
  }
}

function uploadToResponse($link, $status, $statusText, $response_content_type, $response_cache_control, $response_pragma, $response_expires, $response_age, $response_last_modified, $response_host){
  // find entryID
  $sql0 = "SELECT * FROM `entries` ORDER BY entryID DESC LIMIT 1";
  $result = mysqli_query($link, $sql0);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $entryID = $row["entryID"];
      echo "entry id: " . $entryID. PHP_EOL;
    }
  } else {
    echo "query failed";
  }

  $sql = "INSERT INTO `response` (entryID, status, statusText, content_type, cache_control, pragma, expires, age, last_modified, host) VALUES ('$entryID', '$status', '$statusText', '$response_content_type', '$response_cache_control', '$response_pragma', '$response_expires', '$response_age', '$response_last_modified', '$response_host')";
  $query_run = mysqli_query($link, $sql);

  if($query_run){
    echo "Records to `response` inserted successfully.";
  } else{
    echo "ERROR: Could not able to execute $sql. " . $query_run->error;
  }
}

// user statistics function
function getUsersStatistics($link, $usersid){

  $users = "SELECT * FROM har_file WHERE userID = $usersid";
  $result = mysqli_query($link, $users) or die(mysql_error());

  if ($result){
        $uploadcount = mysqli_num_rows($result);

        if ($uploadcount > 0){
              $date = "SELECT uploadDate FROM har_file WHERE userID = $usersid ORDER BY UNIX_TIMESTAMP(uploadDate) DESC LIMIT 1";
              $result2 = mysqli_query($link, $date) or die(mysql_error());
  
              while($row = $result2->fetch_assoc()) {
                    $latestuploadDate = $row['uploadDate'];
              }
              echo "Number of uploads: $uploadcount <br> Latest upload date: $latestuploadDate";
        }
        else {
              echo "Number of uploads: $uploadcount <br>";
        }
  }
  else {
        echo "Query failed";
  }

}

//admin functions
