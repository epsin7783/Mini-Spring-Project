<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>BITTRIP</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#page-top">BITTRIP</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="about.jsp">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel.jsp">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="board.jsp">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather.jsp">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="signin.jsp">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header class="masthead">
		<div
			class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
			<div class="d-flex justify-content-center">
				<div class="text-center">
					<div id="con">
						<div id="login">
							<div id="login_form">
								<!--로그인 폼-->
								<form>
									<h3 class="login" style="letter-spacing: -1px;">Sign up to
										BITTRIP</h3>

									<!-- <p>
            <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
        </p> 구글로 로그인-->

									<hr>

									<!-- <span>ID</span> -->
									<p  style="text-align: left; font-size: 12px; color: #666">username</p>
									<input type="text" placeholder="아이디" class="size">
									<p></p>
									</label>
									<!--아이디-->

									<label> <!-- <span>PW</span> -->
										<p style="text-align: left; font-size: 12px; color: #666">Password
										</p> <input type="password" placeholder="비밀번호" class="size">
									</label>
									<!--비밀번호-->

									<label> <!-- <span>PW</span> -->
										<p style="text-align: left; font-size: 12px; color: #666">
										</p> <input type="password" placeholder="비밀번호 확인" class="size">
									</label>
									<!--비밀번호 확인-->

									<label> <!-- <span>PW</span> -->
										<p style="text-align: left; font-size: 12px; color: #666">Mobile
											Phone</p> <select class="size num1">
											<option value="1" selected>SKT</option>
											<option value="2" selected>KT</option>
											<option value="3" selected>LG</option>
									</select> <input placeholder="-빼고 숫자만 입력" class="size num2" required>
									</label>
									<!--전화번호-->


									<label> <!-- <span>PW</span> -->
										<p style="text-align: left; font-size: 12px; color: #666">E-mail</p>
										<input type="text" placeholder="이메일" class="size">
									</label>
									<!--이메일-->


									<br>
									<p>
										<input type="submit" value="Create Acoout" class="log_btn">

									</p>
									<hr>
								</form>

								
								<p class="find">
									<span><a href="signin.jsp">로그인 페이지로 이동</a></span>
								</p>
							</div>
							<div></div>


						</div>
					</div>
				</div>
	</header>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
