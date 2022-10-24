<!DOCTYPE html>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="en">
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>       
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        
        <script type="text/javascript">
		$(document).ready(function(){
			var result = '<c:out value="$(result)"/>';
		});
		</script>
		        
        <script>
		$(document).ready(
			function() {
				var result = '<c:out value="${result}"/>';

				checkModal(result);

				function checkModal(result) {
					if (result === '') {
						return;
					}

					if (parseInt(result) > 0) {
						$(".modal-body").html(
								"게시글 " + parseInt(result) + "번이 등록되었습니다.");
					}
					$("#myModal").modal("show");
				}

				$("#regBtn").on("click", function() {
					self.location = "/board/register";
			});
		});
		</script>
        
    </head>

	<body id="page-top">
        <% 
        String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
	%>
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
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">게시판</h1>
							</div>
							<!-- /.col-lg-12 -->
						</div>
							<!-- /.row -->
							<div class="row" style="background-color:white; width:900px; height:650px; border:1">
								<div class="col-lg-12">
									<div class="panel panel-default" >
										<div class="panel-heading">게시글 목록
											<button id='regBtn' type="button" class="btn btn-xs" style="float:right;">글쓰기</button>
										</div>
										<!-- /.panel-heading -->
										<div class="panel-body">
											<table class="table table-striped table-bordered table-hover" >
												<thead>
													<tr>
														<th style="width:100px">#번호</th>
														<th style="width:600px">제목</th>
														<th style="width:100px">작성자</th>
														<th style="width:100px">작성일</th>
													</tr>
												</thead>
												<c:forEach items="${list}" var="board">
													<tr>
														<td><c:out value="${board.bno}" /></td>
														<td><a href='/board/get?bno=<c:out value="${board.bno }"/>'>
																<c:out value="${board.title}" />
														</a></td>
														<td><c:out value="${board.writer}" /></td>
														<td><fmt:formatDate pattern="yyyy-MM-dd"
																value="${board.regDate}" /></td>
														<td><fmt:formatDate pattern="yyyy-MM-dd"
																value="${board.updateDate}" /></td>
													</tr>
												</c:forEach>
							
											</table>
										</div>
											<!-- .modal -->
							
							
									</div>
										<!-- /.panel-body -->
								</div>
									<!-- /.panel -->
							</div>
								<!-- /.col-lg-12 -->
					</div>
                </div>
            </div>
        </header>


<%@include file="../includes/unitfooter.jsp" %>


    </body>
</html>