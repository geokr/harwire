var map = L.map('mapid').setView([38.505, 21.79], 4);
      
L.tileLayer('https://api.maptiler.com/maps/bright/{z}/{x}/{y}.png?key=KqGmXxo14vl2NDa4Aq4p', {
  attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>'
}).addTo(map);


var redIcon = L.icon({
  iconUrl: '../img/red-pin.png',
  iconSize:     [40, 40], // size of the icon
  popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

coordinates.forEach(coordinate => {
  console.log(coordinate[0]);
  // console.log(coordinate[2]);

  var latitude = coordinate[0];
  var longitute = coordinate[1];
  var user_city = coordinate[2];
  
  var marker = L.marker([latitude, longitute]).addTo(map).bindPopup("Server location");
  
  var api_key = '36ecd3cfd0034392a7d4a2400ca51220';
  var api_url = 'https://api.opencagedata.com/geocode/v1/json'

  var request_url = api_url
    + '?'
    + 'key=' + api_key
    + '&q=' + encodeURIComponent(user_city)
    + '&pretty=1'
    + '&no_annotations=1';
  
  var request = new XMLHttpRequest();
  request.open('GET', request_url, true);

  request.onload = function() {
  

    if (request.status === 200){ 
      // Success!
      var data = JSON.parse(request.responseText);
      // console.log(data); // print the location

      // var geometry = data.results[0].geometry;
      city_lat = data.results[0].geometry.lat;
      city_lng = data.results[0].geometry.lng;
      
      var marker = L.marker([city_lat, city_lng], {icon: redIcon}).addTo(map).bindPopup("User location");

      var latlngs = [
          [latitude, longitute],
          [city_lat, city_lng]
      ];

      var polyline = L.polyline(latlngs, {color: 'red', weight: 3}).addTo(map);

    } else if (request.status <= 500){ 
      // We reached our target server, but it returned an error
                          
      console.log("unable to geocode! Response code: " + request.status);
      var data = JSON.parse(request.responseText);
      console.log('error msg: ' + data.status.message);
    } else {
      console.log("server error");
    }
  };

  request.onerror = function() {
    // There was a connection error of some sort
    console.log("unable to connect to server");        
  };

  request.send();  // make the request  

  
});