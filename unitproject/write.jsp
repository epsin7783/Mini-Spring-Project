<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
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
<link rel="icon" type="image/x-icon"
	href="../resources/assets/favicon.ico" />
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
<link href="../resources/css/styles.css" rel="stylesheet" />
</head>


<body id="page-top">
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="index">BITTRIP</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<%
					if (userID == null) {
					%>

					<li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="map">지도</a></li>
					<li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="signin">로그인</a></li>

					<%
					} else {
					%>

					<li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="map">지도</a></li>
					<li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><%=userID%>님
							환영합니다!</a></li>
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
		<div
			class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
			<div class="d-flex justify-content-center">
				<div class="text-center">
					<!-- 쓰기 코드 -->
					<div class="container">
						<div class="row">
							<form method="post" action="writeAction">
								<table class="table table-stripped"
									style="text-align: center; boarder: 1px solid #dddddd">
									<thead>
										<tr>
											<th colspan="2"
												style="background-color: #eeeeee; text-align: center;">게시판
												글쓰기 양식</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="text" class="form-control"
												placeholder="글 제목" name="bodTitle" maxlength="50"></td>
										</tr>
										<tr>
											<td><textarea class="form-control" placeholder="글 내용"
													name="bodContent" maxlength="2048" style="height: 350px"></textarea></td>
										</tr>
									</tbody>
								</table>
								<input type="submit" class="btn btn-primary pull-right"
									value="글쓰기">
							</form>
						</div> <!-- row end -->
					</div> <!-- container end -->
				</div> <!-- text-center end -->
			</div> <!-- d-flex end -->
		</div>
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





	<%@include file="../includes/unitfooter.jsp"%>

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
