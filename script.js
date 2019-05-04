   //page loading animation part 1
   $(window).on('load', function() {
    $("#pageLoad").fadeOut('fast');
});

$(document).ready(function() {
    //page loading animation part 2
    $("#app").fadeIn('fast');});
 
    
 ///////********************************************************************************************************/////////////////////
 //Map Functionalities
 var image_2019_20 = {
    url: 'https://www.greenmap.uomleos.org/marker_icon_2019_20.ico',
  };

  var image_2018_19 = {
    url: 'https://www.greenmap.uomleos.org/marker_icon_2018_19.ico',
  };

  var markers = [];

  //Map Initialize
  var srilanka = { lat: 7.8731, lng: 80.7718 };
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 7,
    center: srilanka,
    mapTypeId: google.maps.MapTypeId.ROADMAP ,
    fullscreenControl: false
  });
  infoWindow = new google.maps.InfoWindow(); // create info window object

  var oms = new OverlappingMarkerSpiderfier(map, {
    markersWontMove: true,
    markersWontHide: true,
    basicFormatEvents: true
    });

$.get("https://www.greenmap.uomleos.org/submit/files/get.php", function(data, status){


  var locations = JSON.parse(data);
  $('#projectCount').text("Planted "+String(locations.length)+" trees");



//UOM LEOS Marker
var coordinates = { lat: 6.7968823, lng: 79.8995894 };
      var uom_icon = {
    url: 'https://www.greenmap.uomleos.org/uomleos_marker.ico',
  };
    var uom_marker = new google.maps.Marker({
      position: coordinates,
      url: 'http://www.uomleos.org/',
      icon: uom_icon,
      animation: google.maps.Animation.BOUNCE,
      map: map,
      name: "Leo Club of University of Moratuwa",
      address:"University of Moratuwa, Bandaranayake Mawatha, Katubedda, Moratuwa."

    });

    oms.addMarker(uom_marker); 

    google.maps.event.addListener(uom_marker, 'dblclick', function () { // marker onclick event
      //window.location.href = ;
      window.open(
        'http://www.uomleos.org/',
  '_blank' // <- This is what makes it open in a new window.
);
    });
    //marker hover effect
    google.maps.event.addListener(uom_marker, 'spider_click', function () { // 
    
    });
    
    google.maps.event.addListener(uom_marker, 'click', function () {
      var content = "<b>"+uom_marker.name+"</b><br>"+uom_marker.address+"<br><br>&diams;&nbsp;Click on pin to view all projects on this location";
      infoWindow.setContent(content);
      infoWindow.open(map, uom_marker);
    });
    
    
    google.maps.event.addListener(uom_marker, 'mouseover', function () {
      var content = "<b>"+uom_marker.name+"</b><br>"+uom_marker.address+"<br><br>&diams;&nbsp;Click on pin to view all projects on this location";
      infoWindow.setContent(content);
      infoWindow.open(map, uom_marker);
    });
    google.maps.event.addListener(uom_marker, 'mouseout', function () {
      infoWindow.close();
    });

    //UOM LEOS MARKER


// Other marker data load

setMarkers(locations);


  $("#year").change(function(){
    var filter = $("#year").val().trim();
    clearMarkers();
    if(filter!="0"){
        var filteredMarkers = markersYearFilter(locations,filter);
        $('#projectCount').text("Planted "+String(filteredMarkers.length)+" Trees.");
    setMarkers(filteredMarkers);
    }else{
        setMarkers(locations);
        $('#projectCount').text("Planted "+String(locations.length)+" Trees.");
    }
});


  });

  //Locations add here
  //["Project name",address,lat,lng,Url here]
  /*var locations = [
    ['Golden Nets','X Sports Arena, Mattakkuliya', 6.8135, 79.9724, 'http://www.uomleos.org/2018/04/02/golden-netz/'],
    ['LEO Youth Camp',"National youth crops tranning center,Naula", 7.7071, 80.6521, 'http://www.uomleos.org/2018/04/01/leo-youth-camp/'],
    ['Ttest',"National youth crops tranning center,Naula", 7.8071, 80.8521, 'http://www.uomleos.org/2018/04/01/leo-youth-camp/'],
    ['Ttest',"National youth crops tranning center,Naula", 7.7071, 80.6521, 'http://www.uomleos.org/2018/04/01/leo-youth-camp/'],
    ['Ttest',"National youth crops tranning center,Naula", 7.9071, 80.7521, 'http://www.uomleos.org/2018/04/01/leo-youth-camp/'],

  ];*/

  function setMarkers(locations){
    for (var i = 0; i < locations.length; i++) {
        var place = locations[i];
        var coordinates = { lat: parseFloat(place.lat), lng: parseFloat(place.lon) };
        var image = image_2018_19;
        if(place.year=='2019/20'){
          image = image_2019_20;
        }
        var marker = new google.maps.Marker({
          position: coordinates,
          icon: image,
          animation: google.maps.Animation.DROP,
          map: map,
          name: place.name,
          address:place.address,
          year:place.year,
            desc:place.description
    
        });

        markers.push(marker);
        oms.addMarker(marker); 
        google.maps.event.addListener(marker, 'dblclick', function () { // marker onclick event

        });
        //marker hover effect
        google.maps.event.addListener(marker, 'spider_click', function () { // 
        
        });
        google.maps.event.addListener(marker, 'mouseover', function () {
          var content = "<b style='font-weight:bold;'>"+this.name+"</b>&nbsp;("+this.year+")<br>"+this.address+"<hr/>"+this.desc+"<br><br>&diams;&nbsp;Click on pin to view all projects on this location";
          infoWindow.setContent(content);
          infoWindow.open(map, this);
        })
        google.maps.event.addListener(marker, 'mouseout', function () {
          infoWindow.close();
        });
      }
  }

  function clearMarkers(){
      for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
  }

  function markersYearFilter(array,filter){
    var rtn = [];
    for(var i=0;i<array.length;i++){
        if(array[i].year==filter){
            console.log(array[i]);
            rtn.push(array[i]);
        }
    }
    return rtn;
  }
