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
   
    <script>
    
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
    <script src="https://maps.googleapis.com/maps/api/js?key=(지도 코드코드코드코드)&libraries=places&callback=initMap"
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
    	<div id="여백"><p>&nbsp;</p></div>
    	
    	
        <div class="text-center">
            <h3 class="text-white-50 mx-auto mt-1 mb-2">지도 검색</h3>
        </div>
		<div style="padding-bottom: 20px;"></div>
		<form id="frm" name="frm" action="mapWrite.jsp" method="post">
		    <div class="pac-card" id="pac-card" style="border-radius: 10px;">
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
		    <div style="width: 1315px; height: 692px; background-color:#4d90fe; padding-top: 5px; border-radius: 10px; margin-left: auto; margin-right: auto;">
				    <div id="map" style="width: 1300px; height: 600px; margin-left: auto; margin-right: auto; border-top-left-radius: 10px; border-top-right-radius: 10px;"></div>
					    <div id="infowindow-content">
					      <img src="" width="16" height="16" id="place-icon">
					      <span id="place-name"  class="title"></span><br>
					      <span id="place-address"></span>
					    </div>

					<div>	        
					    <div id="map_address">
							&nbsp;&nbsp;
							장소 : <input type="text" id="place_name" name="place_name" value="">&nbsp;&nbsp;
							주소 : <input type="text" id="address" name="address" value="" style="width: 400px;">&nbsp;&nbsp;
							위도 : <input type="text" id="latclick" name="latclick" value="" >&nbsp;&nbsp;
							경도 : <input type="text" id="lngclick" name="lngclick" value="">	
					    </div>
			    	</div>
		    </div>    
		 </form>


        </header>
	    
	    
	    
	    
	    
	<!-- 위젯 -->
	<input type="button" class="icon2_3" id="icon2_3" value="계산">
	<input type="button" class="icon2_2" id="icon2_2" value="환율">
	<input type="button" class="icon2" id="icon2" value="위젯">
	<input type="button" class="icon1" id="icon1" value="Chat">
	<iframe src="Chatting" width="500px" height="500px" class="chatt"></iframe>
	<div>
		<iframe class="w1" id="w1" frameborder="0" scrolling="auto" height="195"
			width="555" allowtransparency="true" marginwidth="0" marginheight="0" "
			src="https://sslfxrates.forexprostools.com/index_exchange.php?params&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&inner-text-color=%23000000&currency-name-color=%23000000&header-text-color=%23FFFFFF&force_lang=18"
			align="center">
			<br />
			<div style="width: 540px; padding-left: 20px; padding-top: 20px;">
				<a href="http://kr.investing.com" target="_blank"><img
					src="https://wmt-invdn-com.investing.com/forexpros_kr_logo.png"
					alt="Investing.com" title="Investing.com" style="float: left" /></a><span
					style="float: right"><a href="https://kr.investing.com/"
					rel="nofollow" target="_blank"
					style="font-size: 11px; color: #06529D; font-weight: bold;"
					class="underline_link">Investing.com 한국어</a><span
					style="font-size: 11px; color: #333333; text-decoration: none;">제공하는
						환율표.</span></span>
			</div>
		</iframe>
	</div>
		<iframe class="w2" id="w2" height="365" width="215" style="text-align: center; background-color: white; border-radius: 10px;"
			src="https://ssltools.forexprostools.com/currency-converter/index.php?from=28&to=12&force_lang=18">
			<table>
				<tr>
					<td><span
						style="font-size: 11px; color: #333333; text-decoration: none;">외환가
							제공하는 통화 변환기<a href="https://kr.investing.com/" rel="nofollow"
							target="_blank"
							style="font-size: 11px; color: #06529D; font-weight: bold;"
							class="underline_link">Investing.com 한국어</a> - 외환포털
					</span></td>
				</tr>
			</table>
		</iframe>
	<iframe class="w3" id="w3"
		src="https://kr.widgets.investing.com/top-cryptocurrencies?theme=lightTheme&roundedCorners=true"
		width="300" height="480" frameborder="0" allowtransparency="true"
		marginwidth="0" marginheight="0">
		<div class="poweredBy"
			style="font-family: Arial, Helvetica, sans-serif;">
			제공자 <a
				href="https://kr.investing.com?utm_source=WMT&amp;utm_medium=referral&amp;utm_campaign=TOP_CRYPTOCURRENCIES&amp;utm_content=Footer%20Link"
				target="_blank" rel="nofollow">Investing.com</a>
		</div>
	</iframe>

       <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
       <script>
		$(function() {
			$(".chatt").css("display", "none")
			var show = function() {
				$(".chatt").toggle();
			}
			$("#icon1").on("click", show);
			$(".w1").css("display", "none");
			$(".w2").css("display", "none");
			$(".w3").css("display", "none");
			$("#icon2_2").css("display", "none");
			$("#icon2_3").css("display", "none");
			var show1 = function() {
				/* $(".w1").toggle(); */
				$("#icon2_2").toggle();
				$("#icon2_3").toggle();
				$(".w1").css("display", "none");
				$(".w2").css("display", "none");
				$(".w3").css("display", "none");
			}
			$("#icon2").on("click", show1);
			var show2 = function() {
				$(".w1").toggle();
				$(".w2").css("display", "none");
				$(".w3").css("display", "none");
			}
			$("#icon2_2").on("click", show2);
			var show3 = function() {
				$(".w2").toggle();
				$(".w1").css("display", "none");
				$(".w3").css("display", "none");
			}
			$("#icon2_3").on("click", show3);
			var show4 = function() {
				$(".w3").toggle();
				$(".w2").css("display", "none");
				$(".w1").css("display", "none");
			}
		})
	</script>
	
    <!-- 위젯 -->
        
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
