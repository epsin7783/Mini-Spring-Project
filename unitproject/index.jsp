<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<%@ page contentType = "text/html;charset=utf-8" %>
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
                        <h1 class="mx-auto my-0 text-uppercase">BITTRIP</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5">비트트립에 오신것을 환영합니다.</h2>
                    </div>
                </div>
            </div>
        </header>


        <!-- 세계시간-->
        
        <section class="page-section" id="globalTime">
        	<div class="container">
        	    <div class="text-center">
                    	<h2 class="section-heading text-uppercase" style="text-align: center;">세계 시간</h2>
		    </div>
		</div>
		<p>&nbsp;</p>
		<c:set var="now" value="<%= new java.util.Date() %>"/>
			<div style="width: 1550px; height:350px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;"><br>
				<table style="width:1500px; margin-left: auto; margin-right: auto; text-align: center;  ">
					<tr style="height: 50px; background-color: white;">
						<td style="background-color: #64A19D; color:white; font-size: 20px; font-weight: bold; border-top-left-radius: 10px;">대한민국<br></td>
						<td style="border-left: 1px solid white; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">뉴욕<br></td>
						<td style="border-left: 1px solid white; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">LA<br></td>
						<td style="border-left: 1px solid white; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold; border-top-right-radius: 10px;">런던<br></td>
					</tr>
					<tr style="height: 100px;  font-weight: bold; background-color: white;">
						<td>
						<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/>
						</td>
						<td style="border: 0.5px solid  #64A19D;">
							<fmt:setTimeZone value="Europe/Newyork" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/><br>
						</td>
						<td style="border: 0.5px solid  #64A19D;">
							<fmt:setTimeZone value="America/Los_Angeles" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/><br>
						</td>
						<td>
							<fmt:setTimeZone value="Europe/London" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/><br>
						</td>
					</tr>

					<tr style="height: 50px;">
						<td style="background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">도쿄<br></td>
						<td style="border-left: 1px solid white; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">상하이<br></td>
						<td style="border-left: 1px solid white; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">로마<br></td>
						<td style="border-left: 1px solid white; border-right: 1px solid #64A19D; background-color: #64A19D; color:white; font-size: 20px; font-weight: bold;">파리<br></td>
					</tr>
					<tr style="height: 100px;  font-weight: bold; background-color: white;">
						<td style="border-bottom-left-radius: 10px;">
							<fmt:setTimeZone value="Asia/Tokyo" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/>
						</td>
						<td style="border-left: 1px solid  #64A19D;">
							<fmt:setTimeZone value="Asia/Shanghai" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/>
						</td>
						<td style="border-left: 1px solid  #64A19D;">
							<fmt:setTimeZone value="Europe/Rome" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/>
						</td>
						<td style="border-left: 1px solid  #64A19D; border-bottom-right-radius: 10px;">
							<fmt:setTimeZone value="Europe/Paris" />
							<fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="medium"/>
						</td>
					</tr>
				</table>
			</div>

			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
		</section>

        
        
        
        <!-- Services-->

        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Services</h2>
                    <h3 class="section-subheading text-muted">비트트립은 여행을 계획하시는 분들에게 언제나 열려있습니다.</h3>
                </div>

                <div class="row text-center">
                	<div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-globe-asia fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3"> 전세계 여행</h4>
                        <p class="text-muted">전세계 여행하시고 싶은 나라를 검색해보세요!</p>
                    </div>	
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-umbrella-beach fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3"> 고객 맞춤형 휴양지</h4>
                        <p class="text-muted">찾으시는 휴양지를 검색하시고 여행 계획을 세우세요! </p>
                    </div>
                    
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-hotel fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">숙소 검색</h4>
                        <p class="text-muted">원하시는 여행지 주변의 숙소를 검색해 보세요</p>
                    </div>
                </div>
            </div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
		<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
	</div>
            
        </section>

	   
	   

<!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">11~12월 겨울 여행지 추천</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <img class="img-fluid" src="../resources/assets/img/111.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">일본</div>
                                <div class="portfolio-caption-subheading text-muted">홋카이도</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <img class="img-fluid" src="../resources/assets/img/222.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">독일</div>
                                <div class="portfolio-caption-subheading text-muted">뉘른베르크</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <img class="img-fluid" src="../resources/assets/img/333.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">캐나다</div>
                                <div class="portfolio-caption-subheading text-muted">옐로나이프</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <img class="img-fluid" src="../resources/assets/img/444.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">코스타리카</div>
                                <div class="portfolio-caption-subheading text-muted">마누엘 안토니오</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <img class="img-fluid" src="../resources/assets/img/555.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">괌</div>
                                <div class="portfolio-caption-subheading text-muted">리티디안 해변</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <img class="img-fluid" src="../resources/assets/img/666.jpg" alt="..." />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">태국</div>
                                <div class="portfolio-caption-subheading text-muted">방콕</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">일본-홋카이도</h2>
                                    <p class="item-intro text-muted">한 겨울의 홋카이도 - 새하얀 설원의 아름다운 풍경 속으로

                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/hokaido.jpg" alt="..." />
                                    <p>고료카쿠 공원에는 '고료 호시노유메(고료 별의 꿈)' 라는 일루미네이션이 펼쳐진다. 일몰 ~ 20시까지 물이 있는 부위가 라이트 업되어 고료카쿠의 별모양이 선명하게 떠올라 보인다. 고료카쿠 타워에 올라가 위에서 바라보는 것을 추천한다. 밤낮으로 바뀌는 매력의 변화를 즐겨보자.</p>

                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">독일 - 뉘른베르크</h2>
                                    <p class="item-intro text-muted">유럽의 3대 크리스마스마켓</p>
                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/ger.jpg" alt="..." />
                                    <p>유럽 3대 크리스마스 마켓 중 하나로 전통 공예품과 핸드메이드 상품을 팔고, 렙쿠헨 과자나 맥주를 맛볼 수도 있어 많은 방문객이 이 도시를 찾는다.
뉘른베르크에는 크리스마스마켓 뿐만 아니라, 하늘을 찌르는 듯한 모습의 ‘성 로렌츠 교회’는 정문에 디테일한 조각들이 새겨져 있으며 엄숙한 분위기가 인상적인 교회가 있다.
1천 년 역사를 자랑하는 ‘카이저 부르크’에서는 가이드의 친절한 설명으로 성체의 역사에 대해 들을 수 있으며 이곳에서 바라보는 뉘른베르크의 전경을 즐겨보자.</p>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">캐나다 - 옐로나이프</h2>
                                    <p class="item-intro text-muted">NASA가 인정한 세계 최고의 오로라 관측지</p>
                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/orora.jpg" alt="..." />
                                    <p>노스웨스트 준주의 주도인 옐로나이프(Yellowknif)는 미 항공우주국(NASA)이 선정한 최고의 오로라 관측 지역으로 3박 체류 시 오로라를 관측할 확률이 무려 95%에 달하는, 이른바 '오로라의 성지'이다.황홀한 장관을 연출해내는 오로라를 캐나다에서 즐겨보자.</p>
                                       <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">코스타리카 - 마누엘 안토니오 국립공원</h2>
                                    <p class="item-intro text-muted">희귀동물들이 사는 자연공원</p>
                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/mon.jpg" alt="..." />
                                    <p>마누엘 안토니오 국립 공원은 코스타리카에서 가장 작은 공원이지만, 이 곳에 서식하는 100 종이 넘는 동물 종으로 카푸 친과 다람쥐 원숭이, 나무 늘보, 아구스 티, 이구아나 등을 비롯해 다양한 조류 관찰자의 천국이기도합니다. 정글을 탐험 한 후 공원에있는 매우 부드러운 하얀 모래 해변 중 하나를 편안하게 즐겨보자.</p>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">괌 - 리티디안 해변</h2>
                                    <p class="item-intro text-muted">야생동물 보호구역으로 지정된 괌 최북단의 아름다운 해변</p>
                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/guam.jpg" alt="..." style="max-width: 100%; height: auto;"/>
                                    <p>괌 최북단에 자리한 아름다운 해변으로, 자연 그대로의 모습을 간직하고 있다. 마리아나 과일박쥐, 녹색 바다거북, 코코넛 크랩 같은 동물들이 서식하며, 현재 야생동물 보호구역으로 지정되어 보호받고 있다. 깨끗하고 푸른 바다의 아름다운 모습을 즐겨보자</p>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="../resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">방콕 - 왕궁</h2>
                                    <p class="item-intro text-muted">방콕의 중요한 랜드마크 '왕궁'</p>
                                    <img class="img-fluid d-block mx-auto" src="../resources/assets/img/bang.jpg" alt="..." style="max-width: 100%; height: auto;"/>
                                    <p>과거 왕족이 거주했던 이 궁에서는 아직도 국가적 행사가 열린다. 왕궁은 태국의 전통 건축물과 공예품을 감상할 수 있는 최적의 장소이기도 하다. 왕궁 구내에는 그 유명한 에메랄드 불상이 있는 곳이자 태국에서 가장 중요한 불교 사원인 왓 프라깨우 사원도 있다. 사원 내부로 들어가면 옥을 깎아 만든 몸에 은은하게 빛나는 금빛 천을 걸친 아름다운 불상이 좌선을 하고 있는 모습들을 즐겨보자</p>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    
 

<%@include file="../includes/unitfooter.jsp" %>
        
                <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
