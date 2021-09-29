<?php
  include "../../includes/dbh.inc.php";
?>

<h1>Ανάλυση κεφαλίδων HTTP</h1><br><br>
        <div id=ttl>
          <h3>Ιστόγραμμα κατανομής των TTL των ιστοαντικειμένων στην απόκριση</h3><br><br>
          <canvas id="myChart"></canvas>
            <?php
            
              //collect the columns of content_type and cache_control from database 
              $sql = "SELECT content_type, cache_control FROM response";
              $result = mysqli_query($link, $sql) or die(mysql_error());
              
              //edit the result of the query 
              $ttl = array();
              $cache_control = array();
              while($row = mysqli_fetch_assoc($result)){
                
                // cache_controll has more than one value in the column
                // the values are seperated by a comma(,) so my using explode()
                // we break the value to array elements
                $cache_control[] = explode(",",$row['cache_control']);

                
                foreach ($cache_control as $value){
                  //inside the array cache_control 
                  foreach ($value as $data){
                    //inside the array we created above with the explode()
                    //we want to find the array element with max-age in it
                    //so we do a string search with str_contains()
                    if (str_contains($data, 'max-age')){
                      //once we found the row with max-age in it because it has the format
                      //max-age=value and we want the value only, we use explode again to 
                      //seperate the strings in to an array and then we take the second element
                      //and we assign it to max-age
                      $max_age_data = explode("=",$data);
                      $max_age = $max_age_data[1];                    
                      $content_type = $row['content_type'];
                     
                      //we enter both max-age and content-type into the array ttl so to keep their
                      //connection which will be needed for the chart later
                      
                     
                    }
                  }
                }
                $ttl[] = array($max_age, $content_type);
              }
              
              // we sort the table ttl so that the rows with the smallest max-age are on top
              usort($ttl, function($a, $b) {
                    return $a[0] <=> $b[0];
              });
              
              // we get the minimum and the maximum price of max age to determine the size of the
              // buckets for the chart
              $min = $ttl[0][0];
              $max = end($ttl)[0]; 

              $bucket_limit = ($max-$min)/10;

              
          ?>
          
        </div>
        
        <div id=directives>
          <h3>Ποσοστό max-stale και min-fresh directives επί του συνόλου των αιτήσεων</h3></br></br>
          <?php
            //collect the columns of content_type and cache_control from database 
            $sql1 = "SELECT content_type, cache_control FROM request";
            $result1 = mysqli_query($link, $sql1) or die(mysql_error());

            //edit the result of the query 
            $cache_control1 = array();
            $max_stale = array();
            $min_fresh = array();
            $max_stale_value = null;
            $min_fresh_value = null;
            $content_type_stale = null;
            $content_type_fresh = null;

            // $count = mysqli_num_rows($result1);
            // echo ($count);

            while($row = mysqli_fetch_assoc($result1)){
              // cache_controll has more than one value in the column
              // the values are seperated by a comma(,) so my using explode()
              // we break the value to array elements              
              $cache_control1[] = explode(",",$row['cache_control']);
              
              foreach ($cache_control1 as $value){

                foreach ($value as $data){
                  
                  if (str_contains($data, 'max-stale')){
                                          
                    $max_stale_data = explode("=",$data);     
                    $max_stale_value =  $max_stale_data[1];
                    $content_type_stale = $row['content_type'];
                
                  }
                  if (str_contains($data, 'min-fresh')){
                    
                    $min_fresh_data = explode("=",$data);  
                    $min_fresh_value = $min_fresh_data[1];                       
                    $content_type_fresh = $row['content_type'];

                  }
                } 
              }
              $max_stale[] = array($max_stale_value,$content_type_stale);
              $min_fresh[] = array($min_fresh_value, $content_type_fresh);
            }
              
            // print_r($min_fresh);
            // print_r($max_stale);
            $array_count = count($max_stale);
            // $fresh_count = count($min_fresh);

            $mf=0;
            $ms=0;
            foreach ($max_stale as $data){
              $ms = $ms + $data[0];
            }
            foreach ($min_fresh as $data){
              $mf = $mf + $data[0];
            }
            $ms_percentage = ($ms/$array_count)/100;
            $mf_percentage = ($mf/$array_count)/100;
            echo "<table><tbody>";
            echo "<tr><th> Max_stale percentage:</th><td>$ms_percentage</td></tr>";
            echo "<tr><th> Min_fresh percentage:</th><td>$mf_percentage</td></tr>";
            echo "</tbody></table>";

          ?>
        </div>
        
        <div id=cacheability>
          <h3>Ποσοστό cacheability directives</h3><br><br>
          <?php
            //collect the columns of content_type and cache_control from database 
            $sql2 = "SELECT content_type, cache_control FROM response";
            $result2 = mysqli_query($link, $sql2) or die(mysql_error());
            
            $cache_control2 = array();
            $public = array();
            $private = array();
            $no_cache = array();
            $no_store = array();

            $public_data = null;
            $content_type_public = null;                    
            $private_data = null;
            $content_type_private = null;
            $no_cache_data = null;
            $content_type_cache = null;
            $no_store_data = null;
            $content_type_store = null;

            $pb=0;
            $pv=0;
            $nc=0;
            $ns=0;
            while($row = mysqli_fetch_assoc($result2)){
               
              $cache_control2[] = explode(",",$row['cache_control']);

              foreach ($cache_control2 as $value){
                // print_r($value);
                foreach ($value as $data){
                  // print_r($data);
                  if (str_contains($data, 'public')){
                    $pb = $pb + 1;
                    $public_data = $data;
                    $content_type_public = $row['content_type'];                
                  }
                  else if (str_contains($data, 'private')){
                    $pv = $pv + 1;
                    $private_data = $data;
                    $content_type_private = $row['content_type'];
                  }
                  else if (str_contains($data, 'no-cache')){
                    $nc = $nc + 1;
                    $no_cache_data = $data;
                    $content_type_cache = $row['content_type'];
                  }
                  else if (str_contains($data, 'no-store')){
                    $ns = $ns + 1;
                    $no_store_data = $data;
                    $content_type_store = $row['content_type'];
                  }
                } 
              }
              $public[] = array($public_data,$content_type_public);
              $private[] = array($private_data,$content_type_private);
              $no_cache[] = array($no_cache_data,$content_type_cache);
              $no_store[] = array($no_store_data,$content_type_store);
            }

            $array_count_public = count($public);
            $array_count_private = count($private);
            $array_count_cache = count($no_cache);
            $array_count_store = count($no_store);
            
            $pb_percentage = ($pb/$array_count_public)/100;
            $pv_percentage = ($pv/$array_count_private)/100;
            $nc_percentage = ($nc/$array_count_cache)/100;
            $ns_percentage = ($ns/$array_count_store)/100;
            echo "<table><tbody>";
            echo "<tr><th> Public percentage:</th><td>$pb_percentage</td></tr>";
            echo "<tr><th> Private percentage:</th><td>$pv_percentage</td></tr>";
            echo "<tr><th> No-cache percentage:</th><td>$nc_percentage</td></tr>";
            echo "<tr><th> No-store percentage:</th><td>$ns_percentage</td></tr>";
            echo "</tbody></table>";
          ?>

        </div>
        <br>
        <button>Update data</button>            
              
      </div>                     