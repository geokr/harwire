
  const input_file = document.getElementById('file');
  // const save_btn = document.getElementById('btnSave');
  // save_btn.addEventListener('click', onClick);
  // input_file.addEventListener('change', onChange, false);
  $(document).ready(function(){
    //SAVE LOCALLY
    $("#btnSave").on("click", function(){
  // function onChange (e){
      console.log(input_file.files);
      const reader = new FileReader()
      reader.onload = function () {
            // console.log(reader.result)
            var parsedJson = JSON.parse(reader.result)
            console.log(parsedJson);

            var entries = parsedJson.log.entries;
            // console.log(entries);            
            
            delete parsedJson.log.version;
            delete parsedJson.log.creator;
            delete parsedJson.log.browser;
            delete parsedJson.log.pages;
            delete parsedJson.log.comment;            
            
            entries.forEach(entry => {
              delete entry.cache;
              delete entry.connection;
              delete entry.pageref;
              delete entry.time;
              delete entry._initiator;
              delete entry._priority;
              delete entry._resourceType;
              delete entry.comment;
              //timings
              delete entry.timings.blocked;
              delete entry.timings.connect;
              delete entry.timings.dns;
              delete entry.timings.receive;
              delete entry.timings.send;
              delete entry.timings.ssl;
              delete entry.timings._blocked_queueing;

              //request//
              delete entry.request.bodySize;
              delete entry.request.cookies;
              delete entry.request.headersSize;
              delete entry.request.httpVersion;
              delete entry.request.queryString;
              delete entry.request.postData;
              delete entry.request.comment;
              delete entry.response._error;
              delete entry.response._transferSize;
              //request headers//
              requestHeaders = entry.request.headers;
              requestHeaders2 = requestHeaders.filter((header) => {
                    if (header.name === "cache-control" || header.name === "content-type" || header.name === "pragma" || header.name === "expires" || header.name === "age" || header.name === "last-modified" || header.name === "Host"){
                          return header;
                    }
              });
              requestHeaders.splice(0,requestHeaders.length)
              // console.log(requestHeaders2);
              requestHeaders.push(requestHeaders2);
              // console.log(requestHeaders);
              
              // delete entry.request.headers.;

              //response//
              delete entry.response.httpVersion;
              delete entry.response.cookies;
              delete entry.response.content;
              delete entry.response.redirectURL;
              delete entry.response.headersSize;
              delete entry.response.bodySize;
              delete entry.response.comment;
              delete entry.response._error;
              delete entry.response._transferSize;
              //response headers//
              responseHeaders = entry.response.headers;
              responseHeaders2 = responseHeaders.filter((header) => {
                    if (header.name === "cache-control" || header.name === "content-type" || header.name === "pragma" || header.name === "expires" || header.name === "age" || header.name === "last-modified" || header.name === "Host"){
                          return header;
                    }
              });
              responseHeaders.splice(0,responseHeaders.length);
              responseHeaders.push(responseHeaders2);
            });   
            
            var myJSON = JSON.stringify(parsedJson);
            
            const xhr = new XMLHttpRequest();

            xhr.open("POST", "includes/saveHAR.inc.php", true);
            xhr.setRequestHeader("Content-Type", "application/json");
            xhr.send(myJSON);
            
      }
      reader.readAsText(input_file.files[0]);
    // }
      
    });
    // UPLOAD HAR TO DATABASE
    $("#btnUpload").on("click", function(){
        // function onChange (e){
        console.log(input_file.files);
        const reader = new FileReader()
        reader.onload = function () {
          var parsedJson = JSON.parse(reader.result)
          console.log(parsedJson);

          var entries = parsedJson.log.entries;
          
          delete parsedJson.log.version;
          delete parsedJson.log.creator;
          delete parsedJson.log.browser;
          delete parsedJson.log.pages;
          delete parsedJson.log.comment;          
          
          entries.forEach(entry => {
            delete entry.cache;
            delete entry.connection;
            delete entry.pageref;
            delete entry.time;
            delete entry._initiator;
            delete entry._priority;
            delete entry._resourceType;
            delete entry.comment;
            //timings
            delete entry.timings.blocked;
            delete entry.timings.connect;
            delete entry.timings.dns;
            delete entry.timings.receive;
            delete entry.timings.send;
            delete entry.timings.ssl;
            delete entry.timings._blocked_queueing;


            //request//
            delete entry.request.bodySize;
            delete entry.request.cookies;
            delete entry.request.headersSize;
            delete entry.request.httpVersion;
            delete entry.request.queryString;
            delete entry.request.postData;
            delete entry.request.comment;
            delete entry.response._error;
            delete entry.response._transferSize;
            //request headers//
            requestHeaders = entry.request.headers;
            requestHeaders2 = requestHeaders.filter((header) => {
                  if (header.name === "cache-control" || header.name === "content-type" || header.name === "pragma" || header.name === "expires" || header.name === "age" || header.name === "last-modified" || header.name === "Host"){
                        return header;
                  }
            });
            requestHeaders.splice(0,requestHeaders.length)
            
            requestHeaders.push(requestHeaders2);
            
            //response//
            delete entry.response.httpVersion;
            delete entry.response.cookies;
            delete entry.response.content;
            delete entry.response.redirectURL;
            delete entry.response.headersSize;
            delete entry.response.bodySize;
            delete entry.response.comment;
            delete entry.response._error;
            delete entry.response._transferSize;
            //response headers//
            responseHeaders = entry.response.headers;
            responseHeaders2 = responseHeaders.filter((header) => {
                  if (header.name === "cache-control" || header.name === "content-type" || header.name === "pragma" || header.name === "expires" || header.name === "age" || header.name === "last-modified" || header.name === "Host"){
                        return header;
                  }
            });
            responseHeaders.splice(0,responseHeaders.length);
            
            responseHeaders.push(responseHeaders2);
            
          });   

          var myJSON = JSON.stringify(parsedJson);
          //------------------------
          const xhr = new XMLHttpRequest();

          xhr.open("POST", "includes/uploadHAR.inc.php", true);
          xhr.setRequestHeader("Content-Type", "application/json");
          xhr.send(myJSON);
          
        }
        reader.readAsText(input_file.files[0]);
      // }
      
    });
});
