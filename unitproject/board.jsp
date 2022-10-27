<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.bodDAO"%>
<%@ page import="board.bod"%>
<%@ page import="java.util.ArrayList"%>
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
    	int pageNumber=1;
    	if(request.getParameter("pageNumber")!=null){
    		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
						<div id="scroll">
							<span> <i class="fa-sharp fa-solid fa-computer-mouse"></i><br>
								<i class="fa-solid fa-arrow-down"></i>
							</span>
						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->

				</div>
			</div>
		</div>

	</header>
	<section class="page-section">
		<div class="container">
			<div= "row">
				<table class="boardtable">
					<thead>
						<tr class="boardtabletr">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>

						<%
											bodDAO BodDAO = new bodDAO();
											ArrayList<bod> list = BodDAO.getList(pageNumber);
											for(int i=0;i<list.size();i++){
										%>

						<tr class="boardtabletr">
							<td><%=list.get(i).getBodID() %></td>
							<!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 -->
							<td><a href="boardview?bodID=<%= list.get(i).getBodID()%>"><%= list.get(i).getBodTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></a></td>
							<td><%=list.get(i).getUserID() %></td>
							<td><%=list.get(i).getBodDate().substring(0,11) + list.get(i).getBodDate().substring(11, 13) + "시" 
					                        + list.get(i).getBodDate().substring(14,16) + "분" %></td>
					        <td><%=list.get(i).getBodCount()%></td>
						</tr>
						<%
    	    							}
    	    						%>

					</tbody>
				</table>
				<br>
				<div class="boarda">
					<%
    	    				if(pageNumber != 1){
    	    				%>
					<a href="board?pageNumber=<%=pageNumber -1%>"
						class="btn btn-success btn-arraw-left">이전</a>
					<% 
    	    				}	if(BodDAO.nextPage(pageNumber + 1)){
    	   					 %>
					<a href="board?pageNumber=<%=pageNumber +1%>"
						class="btn btn-success btn-arraw-left">다음</a>
					<% 
    	    					}
    	    				%>


					<a href="write" class="btn btn-primary pull-right">글쓰기</a>
				</div>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<br>
	</section>

	<%@include file="../includes/unitfooter.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>
</html>
