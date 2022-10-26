<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.bodDAO" %>
<%@ page import="board.bod" %>
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
	 if (userID == null){
	    	PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('로그인하세요.')");
	        script.println("location.href = 'signin'");
	        script.println("</script>");
	    }
	    int bodID = 0;
	    if (request.getParameter("bodID") != null)
	    {
	        bodID = Integer.parseInt(request.getParameter("bodID"));
	    }
	    if (bodID == 0)
	    {
	        PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('유효하지 않은 글입니다')");
	        script.println("location.href = 'board'");
	        script.println("</script>");
	    }
	    bod bbs = new bodDAO().getbod(bodID);
	    if (!userID.equals(bbs.getUserID())){
	    	PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('권한이 없습니다.')");
	        script.println("location.href = 'board'");
	        script.println("</script>");
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
					

					<li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="map">지도</a></li>
					<li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><%=userID%>님
							환영합니다!</a></li>
					<li class="nav-item"><a class="nav-link" href="logoutAction">로그아웃</a></li>
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
							<form method="post" action="boardupdateAction?bodID=<%= bodID%>">
    			<table class= "table table-stripped" style= "text-align: center; boarder: 1px solid #dddddd">
	    	    	<thead>
		    	    	<tr>
		    	    		<th colspan= "2" style= "background-color: #eeeeee; text-align: center;">게시판 글 수정 양식</th>
		    	    	</tr>
	    	    	</thead>
			    	<tbody>
			    		<tr>
			    			<td><input type="text" class="form-control" placeholder="글 제목"  name="bodTitle" maxlength="50" value="<%= bbs.getBodTitle()%>"></td>
			    		</tr>
			    		<tr>
			    			<td><textarea class="form-control" placeholder="글 내용"  name="bodContent" maxlength="2048" style= "height:350px"><%= bbs.getBodContent()%></textarea></td>
			    		</tr>
			    	</tbody>
    	    	</table>
    	    	<input type="submit" class="btn btn-primary pull-right" value="글수정">
    		</form>
						</div> <!-- row end -->
					</div> <!-- container end -->
				</div> <!-- text-center end -->
			</div> <!-- d-flex end -->
		</div>
	</header>
	





	<%@include file="../includes/unitfooter.jsp"%>

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
