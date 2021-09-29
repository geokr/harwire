<?php
  $requestPayload = file_get_contents("php://input");
  $object = json_decode($requestPayload);
      
  // var_dump($object);

  $fileNameNew = uniqid('',true).".clean.har";      // create a unique name for the file based on microseconds
  $fileDestination = '../uploads/'.$fileNameNew;            
  
  $newfile = fopen($fileDestination, 'w');     // moving file to destination folder
  fwrite($newfile, $requestPayload);
  fclose($newfile);
  // header("Location: index.php?uploadsuccess");            // upload confirmation 

