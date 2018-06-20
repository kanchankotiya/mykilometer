
  function initMap() {
  
    var address = {lat: <%= @event.latitude %>, lng: <%= @event.longitude %> };
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 14,
      center: address
    });
    var marker = new google.maps.Marker({
      position: address,
      map: map
    });
  }

