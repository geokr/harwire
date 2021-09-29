<?php

  include "../includes/dbh.inc.php";
  include "../includes/functions.inc.php";
  include "../profile.php";
  //reading the json file
  $requestPayload = file_get_contents("php://input");
  $object = json_decode($requestPayload);

  // var_dump($object);

  $ip = file_get_contents('https://api.ipify.org');
  echo "My public IP address is: " . $ip. PHP_EOL;

  $json=file_get_contents("https://extreme-ip-lookup.com/json/$ip");
  extract(json_decode($json,true));
  
  echo "ISP:", $isp, "city:", $city. PHP_EOL;

  $uploadDate = date("Y-m-d h:i:sa");
  $userID = $_SESSION["userid"];  
  $noOfEntries = 0;

  uploadToHarFile($link, $uploadDate, $noOfEntries, $isp, $city, $userID);
  //using variables to store the different json entries
  //variables are used as a way to easily troubleshoot
  foreach($object as $log) {
    foreach($log as $entries) {
      foreach($entries as $entry) {
        $noOfEntries = $noOfEntries+1;
        $startedDateTime=$entry->startedDateTime;
        $serverIPAddress=$entry->serverIPAddress;
        $wait=$entry->timings->wait;
        //resquest info
        $request=$entry->request;
        $method=$entry->request->method;
        $url=$entry->request->url;
        $request_headers=$entry->request->headers;
        //response info
        $response=$entry->response;
        $status=$entry->response->status;
        $statusText=$entry->response->statusText;        
        $response_headers=$entry->response->headers;
        
        echo "--ENTRY INFO--". PHP_EOL;
        echo "startedDateTime:", $startedDateTime. PHP_EOL;
        echo "serverIPAddress:",$serverIPAddress. PHP_EOL;
        echo "wait:", $wait. PHP_EOL;
        echo "method:", $method. PHP_EOL;
        echo "url:", $url. PHP_EOL;
        echo "status:", $status. PHP_EOL;
        echo "statusText:", $statusText. PHP_EOL;
        
        foreach($request_headers as $header) {
          $request_content_type=NULL;
          $request_cache_control=NULL;
          $request_pragma=NULL;
          $request_expires=NULL;
          $request_age=NULL;
          $request_last_modified=NULL;
          $request_host=NULL;
          foreach($header as $info) {
            // print_r($info);
            $header_name=$info->name;
            if ($header_name=="content-type"){
              $request_content_type=$info->value;
            } elseif ($header_name=="cache-control") {
              $request_cache_control=$info->value;
            } elseif ($header_name=="pragma") {
              $request_pragma=$info->value;
            } elseif ($header_name=="expires") {
              $request_expires=$info->value;
            }elseif ($header_name=="age") {
              $request_age=$info->value;
            }elseif ($header_name=="last-modified") {
              $request_last_modified=$info->value;
            } elseif ($header_name=="host") {
              $request_host=$info->value;
            } else {
              return;
            } 
            
          }
          echo "--REQUEST INFO--". PHP_EOL;
          echo "content-type:", $request_content_type. PHP_EOL;
          echo "cache-control:", $request_cache_control. PHP_EOL;
          echo "pragma:", $request_pragma. PHP_EOL;
          echo "expires:", $request_expires. PHP_EOL;
          echo "age:", $request_age. PHP_EOL;
          echo "last-modified:", $request_last_modified. PHP_EOL;
          echo "host:", $request_host. PHP_EOL;
        }
        // print_r($response);
        foreach($response_headers as $header) {
          // echo "--RESPONSE INFO--". PHP_EOL;
          // print_r($header); 
          $response_content_type=NULL;
          $response_cache_control=NULL;
          $response_pragma=NULL;
          $response_expires=NULL;
          $response_age=NULL;
          $response_last_modified=NULL;
          $response_host=NULL;
          foreach($header as $info) {
            // print_r($info);
            $header_name=$info->name;
            if ($header_name=="content-type"){
              $response_content_type=$info->value;
            } elseif ($header_name=="cache-control") {
              $response_cache_control=$info->value;
            } elseif ($header_name=="pragma") {
              $response_pragma=$info->value;
            } elseif ($header_name=="expires") {
              $response_expires=$info->value;
            }elseif ($header_name=="age") {
              $response_age=$info->value;
            }elseif ($header_name=="last-modified") {
              $response_last_modified=$info->value;
            } elseif ($header_name=="host") {
              $response_host=$info->value;
            } else {
              return;
            } 
            
          }
          echo "--RESPONSE INFO--". PHP_EOL;
          echo "content-type:", $response_content_type. PHP_EOL;
          echo "cache-control:", $response_cache_control. PHP_EOL;
          echo "pragma:", $response_pragma. PHP_EOL;
          echo "expires:", $response_expires. PHP_EOL;
          echo "age:", $response_age. PHP_EOL;
          echo "last-modified:", $response_last_modified. PHP_EOL;
          echo "host:", $response_host. PHP_EOL;
        }
               
        uploadToEntries($link, $serverIPAddress, $wait, $startedDateTime);
        uploadToRequest($link, $method, $url, $request_content_type, $request_cache_control, $request_pragma, $request_expires, $request_age, $request_last_modified, $request_host);
        uploadToResponse($link, $status, $statusText, $response_content_type, $response_cache_control, $response_pragma, $response_expires, $response_age, $response_last_modified, $response_host);
      }      
    }    
    echo "Number of entries: ", $noOfEntries. PHP_EOL;
    echo "Current user: ",  $userID. PHP_EOL;
  }
  
  updateHarFile($link, $noOfEntries, $uploadDate);
  // storing the data in the database
  

