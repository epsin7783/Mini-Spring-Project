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
	<div>
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
	</div>

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

									<label> <!-- <span>NAME</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Name</b>
										</div> <input type="text" placeholder="이름" class="size" required>
										<p></p>
									</label> <br>
									<!-- 이름 -->

									<label> <!-- <span>ID</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>ID</b>
										</div> <input type="text" placeholder="아이디" class="size" required>
										<p></p>
									</label> <br>
									<!--아이디-->

									<label> <!-- <span>PW</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Password</b>
										</div> <input type="password" placeholder="비밀번호" class="size"
										required>
									</label> <br>
									<!--비밀번호-->

									<label> <!-- <span>PW</span> -->
										<p style="text-align: left; font-size: 12px; color: #666">
										</p> <input type="password" placeholder="비밀번호 확인" class="size"
										required>
									</label> <br>
									<br>
									<!--비밀번호 확인-->

									<label> <!-- <span>PHONE</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Mobile Phone</b>
										</div> <select class="size num1">
											<option value="1" selected>SKT</option>
											<option value="2" selected>KT</option>
											<option value="3" selected>LG</option>
									</select> <input placeholder="-빼고 숫자만 입력" class="size num2" required>
									</label> <br>
									<br>
									<!--전화번호-->




									<label> <!-- <span>PW</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Email</b>
										</div> <input type="text" placeholder="이메일" class="size" required>
									</label> <br>
									<br>

									<!--이메일-->

									<label> <!-- <span>GENDER</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Gender</b>
										</div> <select class="size gender" required>
											<option value="1" selected>남</option>
											<option value="2" selected>여</option>
											<option value="3" selected>선택 안함</option>
											<option value="4" selected>성별</option>
									</select>
									</label> <br>
									<br>
									<!--성-->

									<label> <!-- <span>ADDRESS</span> -->
										<div style="text-align: left; font-size: 12px; color: #666">
											<b>Address</b>
										</div> <input type="text" id="sample6_postcode" placeholder="우편번호"
										class="add1"> <input type="button"
										onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
										class="add_btn"><br> <input type="text"
										id="sample6_address" placeholder="주소" class="add"><br>
										<input type="text" id="sample6_extraAddress"
										placeholder="참고항목" class="add"><br> <input
										type="text" id="sample6_detailAddress" placeholder="상세주소"
										class="add"> <script
											src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
									    function sample6_execDaumPostcode() {
									        new daum.Postcode({
									            oncomplete: function(data) {
									                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
									
									                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
									                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									                var addr = ''; // 주소 변수
									                var extraAddr = ''; // 참고항목 변수
									
									                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									                    addr = data.roadAddress;
									                } else { // 사용자가 지번 주소를 선택했을 경우(J)
									                    addr = data.jibunAddress;
									                }
									
									                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
									                if(data.userSelectedType === 'R'){
									                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
									                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
									                        extraAddr += data.bname;
									                    }
									                    // 건물명이 있고, 공동주택일 경우 추가한다.
									                    if(data.buildingName !== '' && data.apartment === 'Y'){
									                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
									                    }
									                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									                    if(extraAddr !== ''){
									                        extraAddr = ' (' + extraAddr + ')';
									                    }
									                    // 조합된 참고항목을 해당 필드에 넣는다.
									                    document.getElementById("sample6_extraAddress").value = extraAddr;
									                
									                } else {
									                    document.getElementById("sample6_extraAddress").value = '';
									                }
									
									                // 우편번호와 주소 정보를 해당 필드에 넣는다.
									                document.getElementById('sample6_postcode').value = data.zonecode;
									                document.getElementById("sample6_address").value = addr;
									                // 커서를 상세주소 필드로 이동한다.
									                document.getElementById("sample6_detailAddress").focus();
									            }
									        }).open();
									    }
									</script>
									</label>
									<!--이메일-->


									<br>
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
			</div>
		</div>
	</header>

<%@include file="/resources/includes/footer.jsp" %>
	
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
