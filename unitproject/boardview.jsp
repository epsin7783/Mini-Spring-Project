<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.bodDAO"%>
<%@ page import="board.bod"%>

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
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>



</head>

<body id="page-top">
	<% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
    	int bodID = 0;
    	if(request.getParameter("bodID")!=null){
    		bodID = Integer.parseInt(request.getParameter("bodID"));
    	}
    	if(bodID==0){
    		PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다')");
            script.println("location.href = 'board'");
            script.println("</script>");
    	}
    	bod bbs = new bodDAO().getbod(bodID);
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
                	if(userID == null){
                %>

					<li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="signin">로그인</a></li>

					<%
                	}else{
                    %>

					<li class="nav-item"><a class="nav-link" href="about">여행정보(코로나)</a></li>
					<li class="nav-item"><a class="nav-link" href="hotel">호텔</a></li>
					<li class="nav-item"><a class="nav-link" href="board">게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="weather">날씨</a></li>
					<li class="nav-item"><a class="nav-link" href="#"><%=userID %>님
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
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header">게시판</h1>
						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->
					
				</div>
			</div>
		</div>

	</header>
<section>
	<div class="container">
						<div class="row">
							<table class="table table-striped"
								style="text-align: center; border: 1px solid #dddddd">
								<thead>
									<tr>
										<th colspan="3"
											style="background-color: #eeeeee; text-align: center;">게시판
											글 보기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="width: 20%;">글 제목</td>
										<td colspan="2"><%= bbs.getBodTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
									</tr>
									<tr>
										<td>작성자</td>
										<td colspan="2"><%= bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
									</tr>
									<tr>
										<td>작성일자</td>
										<td colspan="2"><%= bbs.getBodDate().substring(0,11) + bbs.getBodDate().substring(11, 13) + "시" 
                                + bbs.getBodDate().substring(14,16) + "분"  %></td>
									</tr>
									<tr>
										<td>내용</td>
										<td colspan="2" style="min-height: 200px; text-align: left;">
											<!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 --> <%= bbs.getBodContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
									</tr>
								</tbody>
							</table>	
							<a href="board" class="btn btn-primary">목록</a>
							<%
				                if(userID != null && userID.equals(bbs.getUserID()))
				                {
				            %>
							<a href="boardupdate?bodID=<%=bodID%>" class="btn btn-primary">수정</a>
							<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="boarddeleteAction?bodID=<%=bodID %>"
								class="btn btn-primary">삭제</a>

							<%     
				                }
				            %>
						</div>
					</div>
</section>

	<%@include file="../includes/unitfooter.jsp"%>


</body>
</html>
