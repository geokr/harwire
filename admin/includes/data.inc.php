<?php
  include "../../includes/dbh.inc.php";
?>
  <table>
    <tbody> 
      <?php
          //q1 - πλήθος των εγγεγραμμένων χρηστών
        $users = "SELECT * FROM users ";
        $result_q1 = mysqli_query($link, $users) or die(mysql_error());

        if ($result_q1){
          $userscount = mysqli_num_rows($result_q1);
          echo "<tr><td> Εγγεγραμμένοι χρήστες:</td><td>$userscount </td></tr><br>";
        }
      ?>
    </tbody>
  </table>
  <table>
    <?php
      //q2 - πλήθος των εγγραφών στη βάση ανά τύπο (μέθοδο) αίτησης
      $methods = "SELECT method, count(*) as MethodCount FROM request GROUP BY method ";
      $result_q2 = mysqli_query($link, $methods) or die(mysql_error());
      
      $method_array = array();
      while($row = mysqli_fetch_assoc($result_q2)){

        // add each row returned into an array
        $method_array[] = $row;

      }
      
      echo "<thead><tr><th> Τύπος αίτησης</th><th></th></tr></thead>";
      echo "<tbody>";
      foreach ($method_array as $value) {
        $method_type = $value['method'];
        $method_count = $value['MethodCount'];
        echo "<tr><td> $method_type :</td><td> $method_count </td></tr>";
      }
      echo "</tbody>";
      echo "<br>";
    ?>
  </table>
  <table>
    <?php

      //q3 - πλήθος των εγγραφών στη βάση ανά κωδικό (status) απόκρισης
      $status = "SELECT status, count(*) as StatusCount FROM response GROUP BY status ";
      $result_q3 = mysqli_query($link, $status) or die(mysql_error());
      $status_array = array();
      while($row = mysqli_fetch_assoc($result_q3)){

        // add each row returned into an array
        $status_array[] = $row;

      }

      echo "<thead><tr><th>Τύπος απόκρισης</th><th></th></tr></thead>";
      echo "<tbody>";
      foreach ($status_array as $value) {
        $status_type = $value['status'];
        $status_count = $value['StatusCount'];
        echo "<tr><td> $status_type: </td><td>$status_count </td></tr>";
      }
      echo "</tbody>";
      echo "<br>";
    ?>
  </table>
  <table>
    <tbody>
      <?php
        //q4 - πλήθος των μοναδικών domains
        $domains = "SELECT DISTINCT url FROM request ";
        $result_q4 = mysqli_query($link, $domains) or die(mysql_error());

        if ($result_q4){
          $domaincount = mysqli_num_rows($result_q4);
          echo "<tr><td> Μοναδικά domain:</td><td>$domaincount </td></tr><br>";
        }
      ?>
    </tbody>
  </table>
  <table>
    <?php
      //q5 - μέση ηλικία των ιστοαντικειμένων τη στιγμή που ανακτήθηκαν, ανά CONTENT-TYPE

      $q5 = "SELECT entries.startedDateTime, response.last_modified FROM entries INNER JOIN response ON entries.entryID = response.entryID ";
      $result_q5 = mysqli_query($link, $q5) or die(mysql_error());
      
      $q5_array = array();
      while($row = mysqli_fetch_assoc($result_q5)){

        // add each row returned into an array
        $q5_array[] = $row;

      }

      foreach ($q5_array as $value) {
        
        $startedDateTime = $value['startedDateTime'];
        $last_modified = $value['last_modified'];

        if ($startedDateTime!=="" AND $last_modified!=="" ){
          $startDate = strtotime($last_modified);
          $endDate = strtotime($startedDateTime);

          $seconds = $endDate - $startDate;
          $days = $seconds / 86400;
          // uplaod seconds to response
          $sql = "UPDATE `response` SET q5_age='$days' WHERE last_modified='$last_modified'";

          $query_run = mysqli_query($link, $sql);
          
        }
        
      }
      //access response table to get avg grouped by content_type
      $q5b = "SELECT AVG(q5_age), content_type FROM response GROUP BY content_type ";
      $result_q5b = mysqli_query($link, $q5b) or die(mysql_error());  
      $q5b_array = array();
      while($row = mysqli_fetch_assoc($result_q5b)){

        // add each row returned into an array
        $q5b_array[] = $row;

      }
      // print_r($q5b_array);
      echo "<br>";
      echo "<thead><tr><th>Mέση ηλικία των ιστοαντικειμένων</th><th>ημέρες</th></tr></thead>";
      echo "<tbody>";
      foreach ($q5b_array as $value) {
      
        $age = $value['AVG(q5_age)'];
        $content_type = $value['content_type'];

        echo "<tr><td> $content_type: </td><td>$age </td></tr>";
      }                 
      echo "</tbody>";
    ?>
  </table>
  <table>
    <tbody>
      <?php
        //q6 - πλήθος των μοναδικών παρόχων συνδεσιμότητας 
        $providers = "SELECT DISTINCT ISP FROM har_file ";
        $result_q6 = mysqli_query($link, $providers) or die(mysql_error());

        if ($result_q6){
          $providercount = mysqli_num_rows($result_q6);
          echo "<tr><td> Μοναδικοί πάροχοι συνδεσιμότητας: </td><td> $providercount </td></tr><br>";
        }
      ?>
    </tbody>
  </table>