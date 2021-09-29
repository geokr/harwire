// coordinates.forEach(coordinate => {
//   // console.log(coordinate[0]);
//   // console.log(coordinate[2]);

//   var latitude = coordinate[0];
//   var longitute = coordinate[1];
  
//   var baseLayer = L.tileLayer('https://api.maptiler.com/maps/bright/{z}/{x}/{y}.png?key=KqGmXxo14vl2NDa4Aq4p', {
//   attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>'})

//   var testData = {  
//     max: 8,
//     data: [{lat: latitude, lng: longitute, count: 3}]
//   };

//   var cfg = {
//     // radius should be small ONLY if scaleRadius is true (or small radius is intended)
//     // if scaleRadius is false it will be the constant radius used in pixels
//     "radius": 2,
//     "maxOpacity": .8,
//     // scales the radius based on map zoom
//     "scaleRadius": true,
//     // if set to false the heatmap uses the global maximum for colorization
//     // if activated: uses the data maximum within the current map boundaries
//     //   (there will always be a red spot with useLocalExtremas true)
//     "useLocalExtrema": true,
//     // which field name in your data represents the latitude - default "lat"
//     latField: 'lat',
//     // which field name in your data represents the longitude - default "lng"
//     lngField: 'lng',
//     // which field name in your data represents the data value - default "value"
//     valueField: 'count'
//   };

//   var heatmapLayer = new HeatmapOverlay(cfg);

//   var map = new L.Map('mapid', {
//     center: new L.LatLng(38.505, 21.79),
//     zoom: 4,
//     layers: [baseLayer, heatmapLayer]
//   });

//   heatmapLayer.addData(testData);

// });
////////////////////////////////////////////
////////////////////////////////////////////

var baseLayer = L.tileLayer('https://api.maptiler.com/maps/bright/{z}/{x}/{y}.png?key=KqGmXxo14vl2NDa4Aq4p', {
  attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a>'});
  
var points = [];

coordinates.forEach(coordinate => {
  // console.log(coordinate[0]);
  // console.log(coordinate[1]);

  var point = {
    x: coordinate[0],
    y: coordinate[1],
    value: 3
  }
  points.push(point);
});

var data = {
  max: 8,
  data: points
}

var cfg = {
  // radius should be small ONLY if scaleRadius is true (or small radius is intended)
  // if scaleRadius is false it will be the constant radius used in pixels
  "radius": 2,
  "maxOpacity": .8,
  // scales the radius based on map zoom
  "scaleRadius": true,
  // if set to false the heatmap uses the global maximum for colorization
  // if activated: uses the data maximum within the current map boundaries
  //   (there will always be a red spot with useLocalExtremas true)
  "useLocalExtrema": true,
  // which field name in your data represents the latitude - default "lat"
  latField: 'lat',
  // which field name in your data represents the longitude - default "lng"
  lngField: 'lng',
  // which field name in your data represents the data value - default "value"
  valueField: 'count'
};

var heatmapLayer = new HeatmapOverlay(cfg);

var map = new L.Map('mapid', {
  center: new L.LatLng(38.505, 21.79),
  zoom: 4,
  layers: [baseLayer, heatmapLayer]
});

heatmapLayer.setData(data);