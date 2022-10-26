<!DOCTYPE html>
<%@ page contentType = "text/html;charset=utf-8" %>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>BITTRIP</title>
        <link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 80%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #description {
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
      }

      #infowindow-content .title {
        font-weight: bold;
      }

      #infowindow-content {
        display: none;
      }

      #map #infowindow-content {
        display: inline;
      }

      .pac-card {
        margin: 10px 10px 0 0;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        background-color: #fff;
        font-family: Roboto;
      }

      #pac-container {
        padding-bottom: 12px;
        margin-right: 12px;
      }

      .pac-controls {
        display: inline-block;
        padding: 5px 11px;
      }

      .pac-controls label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

      #pac-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }

      #pac-input:focus {
        border-color: #4d90fe;
      }

      #title {
        color: #fff;
        background-color: #4d90fe;
        font-size: 25px;
        font-weight: 500;
        padding: 6px 12px;
      }
    </style>
   
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      

      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 37.5546788, lng: 126.9706069},
          zoom: 15
        });
        var card = document.getElementById('pac-card');
        var input = document.getElementById('pac-input');
        var types = document.getElementById('type-selector');
        var strictBounds = document.getElementById('strict-bounds-selector');

        map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);

        var autocomplete = new google.maps.places.Autocomplete(input);

        // Bind the map's bounds (viewport) property to the autocomplete object,
        // so that the autocomplete requests use the current map bounds for the
        // bounds option in the request.
        autocomplete.bindTo('bounds', map);

        // Set the data fields to return when the user selects a place.
        autocomplete.setFields(
            ['address_components', 'geometry', 'icon', 'name']);

        var infowindow = new google.maps.InfoWindow();
        var infowindowContent = document.getElementById('infowindow-content');
        infowindow.setContent(infowindowContent);
        var marker = new google.maps.Marker({
          map: map,
          anchorPoint: new google.maps.Point(0, -29)
        });

        autocomplete.addListener('place_changed', function() {
          infowindow.close();
          marker.setVisible(false);
          var place = autocomplete.getPlace();
          if (!place.geometry) {
            // User entered the name of a Place that was not suggested and
            // pressed the Enter key, or the Place Details request failed.
            window.alert("No details available for input: '" + place.name + "'");
            return;
          }

          // If the place has a geometry, then present it on a map.
          if (place.geometry.viewport) {
            map.fitBounds(place.geometry.viewport);
          } else {
            map.setCenter(place.geometry.location);
            map.setZoom(17);  // Why 17? Because it looks good.
          }
          marker.setPosition(place.geometry.location);
          marker.setVisible(true);

		document.getElementById('latclick').value = marker.getPosition().lat();
		document.getElementById('lngclick').value = marker.getPosition().lng();

          var address = '';
          if (place.address_components) {
            address = [
              (place.address_components[0] && place.address_components[0].short_name || ''),
              (place.address_components[1] && place.address_components[1].short_name || ''),
              (place.address_components[2] && place.address_components[2].short_name || '')
            ].join(' ');
          }
          
		document.getElementById('address').value = address;
		document.getElementById('place_name').value = place.name;
        	  
          infowindowContent.children['place-icon'].src = place.icon;
          infowindowContent.children['place-name'].textContent = place.name;
          infowindowContent.children['place-address'].textContent = address;
          infowindow.open(map, marker);
        });

        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
        function setupClickListener(id, types) {
          var radioButton = document.getElementById(id);
          radioButton.addEventListener('click', function() {
            autocomplete.setTypes(types);
          });
        }

        setupClickListener('changetype-all', []);
        setupClickListener('changetype-address', ['address']);
        setupClickListener('changetype-establishment', ['establishment']);
        setupClickListener('changetype-geocode', ['geocode']);

        document.getElementById('use-strict-bounds')
            .addEventListener('click', function() {
              console.log('Checkbox clicked! New state=' + this.checked);
              autocomplete.setOptions({strictBounds: this.checked});
            });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=(인증키 )&libraries=places&callback=initMap"
        defer></script>

        
    </head>
   
    <% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
    <body id="page-top">
	  <!-- Navigation-->
	        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	            <div class="container px-4 px-lg-5">
	                <a class="navbar-brand" href="index">BITTRIP</a>
	                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	                    Menu
	                    <i class="fas fa-bars"></i>
	                </button>
	                
	                <div class="collapse navbar-collapse" id="navbarResponsive">
	                	<ul class="navbar-nav ms-auto">
	                <%
	                	if(userID == null){
	                %>
	                    
	                        <li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
	                        <li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
	                        <li class="nav-item"><a class="nav-link" href="map">지도</a></li>
	                        <li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
	                        <li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
	                        <li class="nav-item"><a class="nav-link" href="signin">로그인</a></li>
	                    
	                    <%
	                	}else{
	                    %>
	                    
	                        <li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
	                        <li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
	                        <li class="nav-item"><a class="nav-link" href="map">지도</a></li>
	                        <li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
	                        <li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
	                        <li class="nav-item"><a class="nav-link" href="#"><%=userID %>님 환영합니다!</a></li>
	                        <li class="nav-item"><a class="nav-link" href="logoutAction">로그아웃</a></li>
	                    
	                    <% 
	                	}
	                    %>
	                    </ul>
	                </div>
	            </div>
	        </nav>
	        
        <!-- Masthead-->
       <header class="masthead">
    	<div id="여백"><p>&nbsp;</p></div>
    	<div id="여백"><p>&nbsp;</p></div>
    	
    	<div class="text-center">
	        <h1 class="mx-auto my-0 text-uppercase">지도 검색</h1>
		</div>

		<form id="frm" name="frm" action="mapWrite.jsp" method="post">
		    <div class="pac-card" id="pac-card">
		      <div>
		        <div id="title">
		          Autocomplete search
		        </div>
		        <div id="type-selector" class="pac-controls">
		          <input type="radio" name="type" id="changetype-all" checked="checked">
		          <label for="changetype-all">All</label>
		
		          <input type="radio" name="type" id="changetype-establishment">
		          <label for="changetype-establishment">Establishments</label>
		
		          <input type="radio" name="type" id="changetype-address">
		          <label for="changetype-address">Addresses</label>
		
		          <input type="radio" name="type" id="changetype-geocode">
		          <label for="changetype-geocode">Geocodes</label>
		        </div>
		        <div id="strict-bounds-selector" class="pac-controls">
		          <input type="checkbox" id="use-strict-bounds" value="">
		          <label for="use-strict-bounds">Strict Bounds</label>
		        </div>
		      </div>
		      <div id="pac-container">
		        <input id="pac-input" type="text"
		            placeholder="Enter a location">
		      </div>
		    </div>
		    <div id="map" style="width: 1300px; height: 600px; margin-left: auto; margin-right: auto;"></div>
		    <div id="infowindow-content">
		      <img src="" width="16" height="16" id="place-icon">
		      <span id="place-name"  class="title"></span><br>
		      <span id="place-address"></span>
		    </div>
			
			<div>	        
			    <div style="width: 1300px; height: 150px; margin-left: auto; margin-right: auto; background-color: white; border: 3px solid black;">
					&nbsp;&nbsp;장소 : <input type="text" id="place_name" name="place_name" value="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					주소 : <input type="text" id="address" name="address" value="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					위도 : <input type="text" id="latclick" name="latclick" value="" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					경도 : <input type="text" id="lngclick" name="lngclick" value="">	
			    </div>
		    </div>    
		 </form>


        </header>
        
<!-- <script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBabGozq0xV_i6109ZR5lKK_NmbFAFdVtM&callback=initMap" async></script> -->

<%@include file="../includes/unitfooter.jsp" %>
	    
	<!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>



    </body>
</html>
