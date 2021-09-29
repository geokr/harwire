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
    <link rel="stylesheet" href="css/httpheaders.css" /> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- using Chart.js for the charts -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
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
        <h1>Respond time analysis </h1><br><br>
        <div id=timings>
          <canvas id="myChart"></canvas>
          
          <!-- getting the data from the database -->
          <?php 
            $timings = "SELECT * FROM entries ";
            $result_q1 = mysqli_query($link, $timings) or die(mysql_error());
            
            $timings_array = array();
            $hours_array = array();
            while($row = mysqli_fetch_assoc($result_q1)){

              // add each row returned into an array
              array_push($timings_array,$row["timings_wait"]);
              array_push($hours_array,date("H",strtotime($row["startedDateTime"])));

            }
          
          ?>  
        </div>
        
      </div>                     
    </div>
    <script>
          //getting the arrays from php
          var timings_all = <?php echo json_encode($timings_array); ?>;
          var hours_all = <?php echo json_encode($hours_array); ?>;

          //calculating the average response time for each hour
          const hours_sum = []; //24 slots - one for each hr of the day
          const counter = []; //24 slots - one for each hr of the day

          for (let i=0; i<24; i++){
            hours_sum[i]=0;
            counter[i]=0;
          }

          for (let i = 0; i < timings_all.length; i++) {
            hours_sum[hours_all[i]] += parseFloat(timings_all[i]);
            counter[hours_all[i]] +=1;
          }

          const yaxis = [];
          for (let i=0; i<24; i++){
            yaxis[i] = hours_sum[i] / counter[i];
          }

          createTheChart(); 

          // function that creates the chart
          async function createTheChart(){
            const ctx = document.getElementById('myChart').getContext('2d');
            const myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23'],
                    datasets: [{
                        label: 'Average Response Time per Hour of the Day',
                        data: yaxis,
                        backgroundColor: ['rgba(255, 255, 255, 0.2)'],
                        borderColor: ['rgba(255, 255, 255, 1)'],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
          }

        </script>
  </body>
</html>
