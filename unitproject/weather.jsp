<!DOCTYPE html>
<%@ page contentType = "text/html;charset=utf-8" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
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
        <script src="../resources/js/scripts.js"></script>
        <script src="../resources/js/weather.js" defer></script>
    </head>
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
                        <li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
                        <li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
                        <li class="nav-item"><a class="nav-link" href="map">지도</a></li>
                        <li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
                        <li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
                        <li class="nav-item"><a class="nav-link" href="signin">로그인</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="weatherhead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center" >
                                	<div class="card">
		<div class="search">
			<input id="search" list="city" type="text" class="search-bar" placeholder="Search">
      <datalist id="city">
        <option value="korea"></option>
        <option value="japan"></option>
        <option value="china"></option>
        <option value="london"></option>
        <option value="europe"></option>
      </datalist>
			<button class="weatherbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  				<path
  					d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg></button>
		</div>
						<div class="weather loading">
							<h2 class="city">Weather in Denver</h2>
							<h1 class="temp">51°C</h1>
							<div class="flex">
								<img alt="" src="" class="icon" />
								<div class="description">Cloudy</div>
							</div>
							<div class="humidity">습도: 60%</div>
							<div class="wind">풍속: 6.2 km/h</div>
						</div>
					</div>
                    </div>
                </div>
            </div>
        </header>
       
<%@include file="/resources/includes/footer.jsp" %>
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
