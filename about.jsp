<!DOCTYPE html>
<%@ page contentType = "text/html;charset=utf-8" %>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>BITTRIP</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="index.jsp">BITTRIP</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
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
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <h1 class="mx-auto my-0 text-uppercase">여행지 정보</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5">아래 표를 확인하시고 여행을 생각하시는 나라의 <br>정보를 확인하세요</br></h2>
                    </div>
                </div>
            </div>
        </header>
        
        
        <!-- 여행경보-->
        <section class="travelWarning">
        	<p>&nbsp;</p>
        	<div><p style="text-align: center;">
				<span style="font-size: 36px;"><strong>여행경보단계</strong></span><span style="font-size: 18px;"><strong>&nbsp;</strong></span></p>
			</div>
        	<div style="width: 60%;  margin-right: auto; margin-left: auto;">
        		<img src="../resources/assets/img/TravelWarning.jpg" alt="여행경보 단계" />
        		<h5>※ 더 자세한 사항을 확인하시고 싶으신 분은 <a href="https://www.0404.go.kr/walking/walking_intro.jsp" target="blank"><span style="text-decoration: underline;">외교부 홈페이지</span></a>를 참고하세요.</h5>
        	</div>
        	<br>
        </section>
        
        
        <!-- 표 반영 -->
        
        <section class="여행가능지역">     
		<main> 			 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div doz_type="row" doz_grid="12" class="doz_row">
					<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
						<div doz_type="widget" id="w202111025a1a32200d8e6">
							<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
								<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
									<div id="padding_w202111025a1a32200d8e6" style="width:100%; min-height:1px; height:30px; "></div>
								</div>
							</div>
						</div>
					</div>
				</div>
					<div doz_type="row" doz_grid="12" class="doz_row">
						<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
							<div doz_type="widget" id="w202111022f9f755dd6a82">
								<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
									<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w202111022f9f755dd6a82" >
										<div class="text-table ">
											<div><p style="text-align: center;">
												<span style="font-size: 36px;"><strong>여행가능지역</strong></span><span style="font-size: 18px;"><strong>&nbsp;</strong></span></p>
											</div>
										</div>		
									</div>
								</div>
							</div>
						</div>
					</div>
				<div doz_type="row" doz_grid="12" class="doz_row">
					<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
						<div doz_type="widget" id="w202111025c3ddfa18f98c">
							<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
								<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w202111025c3ddfa18f98c" >
									<div class="text-table ">
										<div><p><br></p>
											<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto;">
												<tbody>
													<tr style="border: 1px solid lightgray;">
														<td style="width: 15.84%; background-color: rgb(111, 168, 220); border: 1px solid lightgray;">
															<div style="text-align: center; border: 1px solid lightgray;">지역</div>
														</td>
														<td style="width: 16.4875%; text-align: center; background-color: rgb(111, 168, 220); border: 1px solid lightgray;"><strong>국가</strong></td>
														<td style="width: 24.9925%; background-color: rgb(111, 168, 220); border: 1px solid lightgray;">
															<div style="text-align: center; border: 1px solid lightgray;"><strong>항공현황</strong></div>
														</td>
														<td style="width: 42.6875%; background-color: rgb(111, 168, 220); border: 1px solid lightgray;">
															<div style="text-align: center; border: 1px solid lightgray;"><strong>입국정책</strong></div>
														</td>
													</tr>
													<tr>
														<td rowspan="6" style="width: 15.76%; text-align: center; background-color: rgb(208, 224, 227); border: 1px solid lightgray;"><strong>서유럽</strong></td>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;" >영국</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;"><strong>런던 : 11월 부터<br></strong>*대한항공 : 매일 운항 예정<br>*아시아나 : 금요일 운항 예정<br>*브리티시에어라인 : 운항중단</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;">*한국국적자 무비자 입국 가능<br>*10월 4일 부로 자가격리 해제<br>*영국정부사이트 (GOV.UK)에서 입국 48시간 전 온라인으로 승객위치 질문서(Pasenger Locator Form)을 작성하여 영국 입국시 출입국 심사대에 제출</td>
													</tr>
													<tr>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;">프랑스</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;"><strong>파리 : 11월 부터</strong><br>*대한항공 : 월수토 운항 예정<br>*아시아나 : 운항 중단<br>*에어프랑스 : 월목토 예정</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;">*한국국적자 무비자 입국 가능<br>(단, 백신 접종을 한경우 파리 입국 가능)<br>-한국 등 방역 우수국가에 한정된 특별입국허가<br>-자가격리와 72시간 이전 PCR 음성 확인서 없이 입국허용<br>*EU 전 국가들에서 통용되는 보건패스 신청 필요<br>(화이자, 모더나, 아스트라 제네카, 얀센)</td>
													</tr>
													<tr>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;">독일</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;"><strong>프랑크푸르트 : 11월 부터</strong><br>*대한항공 : 목토 예정<br>*아시아나 : 월수금일 예정<br>*루프트한자 : 월화수금일 예정<br><br><strong>뮌헨 : 11월 부터</strong><br>*루프트한자 : 화목금토일 예정</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;">*한국국적자 무비자 입국 가능<br>*자가 격리 없음<br>*백신접종증명서와 입국 72시간내 PCR검사 음성확인서 필요</td>
													</tr>
													<tr>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;">이탈리아</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;"><strong>로마 : 12월 부터</strong><br>*대한항공 : 월화목토일 예정<br>*아시아나 : 운항 중단<br><br><strong>밀라노 : 11월 부터</strong><br>*대한항공 : 월수금일<br><br><strong>베니스 : 11월 부터</strong><br>*아시아나 : 운항중단</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;">*한국국적자 무비자 입국 가능<br>*자가 격리 없음<br>*백신접종증명서와 입국 72시간내 PCR검사 음성확인서 필요<br>*EU Digital Passenger locator Form 필수<br>*실내식당 및 중장거리 운송수단, 박물관 등의 입장을 위해 48시간이내 실시한 항원검사 증명서가 필요함</td>
													</tr>
													<tr>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;">스페인<br>포르투칼<br>모로코</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;"><strong>바르셀로나 : 11월 부터</strong><br>*대한항공 : 임시중단<br>*아시아나 : 임시중단<br><br><strong>마드리드 : 11월 부터</strong><br>*대한항공 : 임시중단<br><br><strong>리스본 : 11월 부터</strong><br>*아시아나 : 임시중단</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;"><strong>현재 스페인은 직항이 없어 핀에어 등 경유편을 이용합니다.&nbsp;</strong><br><strong><br></strong>1.스페인 / 포르투칼 : 한국국적자 무비자 입국 가능<br>*코로나 19 음성 확인서는 필요 없으나 도착 48시간 이내 (www.spth.gob.es)에서 특별검역신고서를 작성하고 QR 코드를 발급받아야 함<br>*QR코드제시 - 발열체크 - 대면심사 3단계의 특별검역절차를 거침<br><br>2.모로코 : 백신 접종 또는 PCR 음성 증명서 공항에서 제출 후 입국 (격리 없음)</td>
													</tr>
													<tr>
														<td style="width: 16.4875%; text-align: center; border: 1px solid lightgray;">네덜란드<br>벨기에<br>스위스<br>몰타</td>
														<td style="width: 24.9925%; border: 1px solid lightgray;">암스텔담 : 11월 부터<br>*대한항공 : 화토 운항<br>*KLM : 월화수금토일<br><br>취리히 : 11월 부터<br>*대한항공 : 임시중단</td>
														<td style="width: 42.6875%; border: 1px solid lightgray;">1.스위스 : 한국 국적자 무비자 입국가능<br>*입국 72시간 전 PCR 테스트 음성 결과지 필수<br><br>2.네덜란드 : 한국 국적자 입국가능<br>3.벨기에 : 한국 국적자 입국가능<br>4.몰타 : 한국 국적자 입국 가능</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>		
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div doz_type="row" doz_grid="12" class="doz_row">
					<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
						<div doz_type="widget" id="w20211102a48aadc22d275">
							<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
								<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
									<div id="padding_w20211102a48aadc22d275" style="width:100%; min-height:1px; height:30px; "></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div doz_type="row" doz_grid="12" class="doz_row">
					<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
						<div doz_type="widget" id="w20211102fa7a8cb7fd524">
							<div class="_widget_data " data-widget-name="가로선" data-widget-type="hr" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
								<div class="widget line type01 _hide" id="hr_w20211102fa7a8cb7fd524">
									<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
									<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div doz_type="row" doz_grid="12" class="doz_row">
					<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
						<div doz_type="widget" id="w202111025a1a32200d8e6">
							<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
								<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
									<div id="padding_w202111025a1a32200d8e6" style="width:100%; min-height:1px; height:30px; "></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</main>
	
		
		<main>
		<div doz_type="inside" class="inside">
			<div doz_type="row" doz_grid="12" class="doz_row">
				<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
					<div doz_type="widget" id="w202111029ddec12aad2dc"><div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w202111029ddec12aad2dc" >
							<div class="text-table ">
								<div>
									<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto; ">
										<tbody>
											<tr>
												<td style="width: 15.88%; background-color: rgb(159, 197, 232); text-align: center; border: 1px solid lightgray;"><strong>지역</strong></td>
												<td style="width: 16.5212%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;"><strong>국가</strong></td>
												<td style="width: 25.04%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;"><strong>항공현황</strong></td>
												<td style="width: 42.56%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;"><strong>입국정책</strong></td>
											</tr>
											<tr>
												<td rowspan="7" style="width: 15.84%; background-color: rgb(217, 234, 211); text-align: center;">지중해<br><br><br>중동</td>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">터키</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">이스탄불<br>*대한항공 : 월수금일, 12월 부터<br>*아시아나 : 운항중단<br>*터키항공 : 월수목토일, 11월 부터</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*PCR 음성 확인서 면제 (출발전 재확인 필수)<br>*항공 탑승 72시간 전에 <a data-fr-linked="true" href="//www.register.health.gov.tr">www.register.health.gov.tr</a> 사이트에 접속하여 성명, 성별, 이메일, 여권번호, 출발지, 국적, 도착일, 컨택장소 등을 작성해야 함<br>*한국 귀국시 자가격리 필요</td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">그리스</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">아테네<br>*직항 없음</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능 (90일)<br>*입국 72시간 전 음성 확인서 또는 백신 접종완료 증명서 필수<br>*PLF(Passenger Locator Form) 작성 필수, 도착 24시간 전<br>*www.travel.gov.gr</td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">이집트</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">카이로<br>*직항없음</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 관광비자 입국 가능 (도착비자)<br>*백신접종 증명서, PCR 검사 음성 확인서 휴대 필수<br>*여행자 신고서 양식을 작성 후 제출해야 함<br>*<a data-fr-linked="true" href="//www.egypt.travel/media/2364/declaration_form">www.egypt.travel/media/2364/declaration_form</a>.pdf</td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">이스라엘</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">텔아비브 : 12월 부터<br>*대한항공 : 화목토</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국 가능<br>*백신 접종증명서와 PCR 음성 확인서 필수<br>*코로나 치료 커버 가능한 보험 가입 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">두바이<br>아부다비</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">두바이<br>*대한항공 : 데일리 예정. 12월 부터<br>*EK항공 : 데일리 운항중<br><br>아부다비<br>*EY항공 : 데일리 운항중</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*96시간전 PCR검사증(영문) 필요<br>*공항 도착 후 검사 가능하며 약 100불</td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">카타르</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">도하<br>*카타르 항공 : 매일 운항중</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*환승객 입국가능</td>
											</tr>
											<tr>
												<td style="width: 16.5212%; text-align: center; border: 1px solid lightgray;">요르단</td>
												<td style="width: 25.04%; text-align: left; border: 1px solid lightgray;">암만<br>*직항없음</td>
												<td style="width: 42.56%; text-align: left; border: 1px solid lightgray;">*한국 국적자 입국가능 (도착비자)<br>*공항에서 코로나 검사 진행 후 음성 확인 후 입국, 격리 없음<br>*자가격리 요르단 이동관련 앱 설치 후 관련보험 가입 의무</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w20211102daf16c7cb029a">
				<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
					<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
					<div id="padding_w20211102daf16c7cb029a" style="width:100%; min-height:1px; height:30px; "></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</main>

		
	
			
	<main>
	<div doz_type="inside" class="inside">
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w2021110272237f3e9dc41">
					<div class="_widget_data " data-widget-name="가로선" data-widget-type="hr" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div class="widget line type01 _hide" id="hr_w2021110272237f3e9dc41">
							<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
							<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102daf16c7cb029a">
					<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
						<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
						<div id="padding_w20211102daf16c7cb029a" style="width:100%; min-height:1px; height:30px; "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102aaca92f3111f9">
					<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w20211102aaca92f3111f9" >
							<div class="text-table ">
								<div>
									<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto;">
										<tbody>
											<tr>
												<td style="width: 16.02%; background-color: rgb(207, 226, 243); text-align: center; border: 1px solid lightgray;"><strong>지역</strong></td>
												<td style="width: 16.5012%; text-align: center; background-color: rgb(207, 226, 243); border: 1px solid lightgray;"><strong>국가</strong></td>
												<td style="width: 25.0337%; text-align: center; background-color: rgb(207, 226, 243); border: 1px solid lightgray;"><strong>항공현황</strong></td>
												<td style="width: 42.4063%; text-align: center; background-color: rgb(207, 226, 243); border: 1px solid lightgray;"><strong>입국정책</strong></td>
											</tr>
											<tr>
												<td rowspan="12" style="width: 16%; background-color: rgb(234, 209, 220); text-align: center; border: 1px solid lightgray;">동유럽<br><br><br>발칸<br></td>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">체코</td>
												<td style="width: 25.0337%; text-align: left; border: 1px solid lightgray;">프라하: 12월<br>*대한항공 : 월수금토<br>*체코항공 : 미정</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국가능<br>*온라인 사전입국신고서 작성<br>*72시간 이내 PCR 검사 또는 48시간이내 항권검사 제출<br>*한국 백신 접종증명서 불인정<br>*격리 없음</td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">오스트리아</td>
												<td style="width: 25.0337%; text-align: left; border: 1px solid lightgray;">비엔나 : 12월<br>*대한항공 : 화목토</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국가능<br>*격리 없음<br>*백신접종증명서 제시 필수<br>(화이자, 아스트라제네카, 모더나, 시노팜, 얀센)<br>*입국자 온라인 사전등록 필수<br><a href="//www.oesterreich.gv">www.oesterreich.gv</a>.at</td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">헝가리</td>
												<td style="width: 25.0337%; text-align: left; border: 1px solid lightgray;">부다페스트 : 11월<br>*폴란드항공 :월수<br>*대한항공 : 미정</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;"><span style="color: rgb(255, 0, 0);">*한국국적자 무비자 입국 불가<br></span>*헝가리 경찰청에서 특별입국허가시에 가능</td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">폴란드</td>
												<td style="width: 25.0337%; text-align: left; border: 1px solid lightgray;">바르샤바 : 11월<br>*폴란드항공 : 화목토</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국가능<br>*72시간 내 PCR 음성 확인서 필수</td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">크로아티아</td>
												<td style="width: 25.0337%; text-align: left; border: 1px solid lightgray;">자그레브 : 11월<br>*대한항공 : 미정</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br>*거주지 및 연락처 기재 필수</td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">루마니아</td>
												<td rowspan="7" style="width: 25.04%; text-align: left; border: 1px solid lightgray;">*직항없음</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 무비자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">보스니아 헤르체고비나</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">몬테네그로</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">불가리아</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">세르비아</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">슬로바키아</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수 <br></td>
											</tr>
											<tr>
												<td style="width: 16.5012%; text-align: center; border: 1px solid lightgray;">슬로베니아</td>
												<td style="width: 42.4063%; text-align: left; border: 1px solid lightgray;">*14일 의무적 자가격리</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w2021110269022ea929c7f">
				<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
					<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
						<div id="padding_w2021110269022ea929c7f" style="width:100%; min-height:1px; height:30px; "></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w202111021174e0516c01a">
				<div class="_widget_data " data-widget-name="가로선" data-widget-type="hr" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
					<div class="widget line type01 _hide" id="hr_w202111021174e0516c01a">
						<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
						<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102a48aadc22d275">
					<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
						<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
							<div id="padding_w20211102a48aadc22d275" style="width:100%; min-height:1px; height:30px; "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	
		
	
			
	<main>
	<div doz_type="inside" class="inside">
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102fa25d4f70385b">
					<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w20211102fa25d4f70385b" >
							<div class="text-table ">
								<div>
									<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto;">
										<tbody>
											<tr>
												<td style="width: 16.34%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">지역</td>
												<td style="width: 16.2825%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">국가</td>
												<td style="width: 25.2075%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">항공현황</td>
												<td style="width: 42.1525%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">입국정책</td>
											</tr>
											<tr>
												<td rowspan="8" style="width: 16.32%; text-align: center; background-color: rgb(217, 234, 211); border: 1px solid lightgray;">북유럽<br>러시아<br>발틱</td>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">러시아<br></td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">모스크바 : 11월~<br>*대한항공 : 목<br>*SU : 월토<br><br>상트 페테르브르크<br>*대한항공 : 임시중단</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*PCR 검사 증명서<br></td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">핀란드</td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">헬싱키 : 11월~<br>*AY : 데일리 운항<br><br>부산-헬싱키<br>*AY:운항미정</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*PCR 검사 증명서 제출<br></td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">덴마크<br></td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">코펜하겐 / 페로제도 : 직항없음</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*마스크 착용 의무 / 입국카드 작성<br>*PCR 검사 증명서</td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">노르웨이</td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">오슬로 : 직항없음</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*현재 관광비자 발급 불가<br>*모든 국경 폐쇄</td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">스웨덴</td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">스톡홀름 : 직항없음</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*입국카드 장성<br>*PCR 검사 증명서 제출</td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">발틱 3국</td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">탈린 / 리가 / 빌리우스 : 직항없음<br></td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*라트비아/에스토니아/리투아니아 : 한국 국적자 무비자 입국</td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">아이슬란드</td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">레이캬비카 : 직항없음</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능</td>
											</tr>
											<tr>
												<td style="width: 16.2825%; text-align: center; border: 1px solid lightgray;">코카서스 3국<br></td>
												<td style="width: 25.2075%; border: 1px solid lightgray;">트빌리시/예레반/바쿠 : 직항없음</td>
												<td style="width: 42.1525%; border: 1px solid lightgray;">*조르지아, 아르메니아 : *한국 국적자 무비자 입국 가능, 72시간내 PCR 검사 확인서<br><br>*아제르바이잔 : <span style="color: rgb(255, 0, 0);">*한국 국적자 무비자 입국 불가</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102a48aadc22d275">
					<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
						<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
							<div id="padding_w20211102a48aadc22d275" style="width:100%; min-height:1px; height:30px; "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w20211106f5e40095a7ae1">
				<div class="_widget_data " data-widget-name="가로선" data-widget-type="hr" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
					<div class="widget line type01 _hide" id="hr_w20211106f5e40095a7ae1">
						<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
						<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211102a48aadc22d275">
					<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
						<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
							<div id="padding_w20211102a48aadc22d275" style="width:100%; min-height:1px; height:30px; "></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
		
	
			
	<main> 			 			 			 		 			 			 			 		
	<div doz_type="inside" class="inside">
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w202111062d22afbd4cf82">
					<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w202111062d22afbd4cf82" >
							<div class="text-table ">
								<div>
									<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto;">
										<tbody>
											<tr>
												<td style="width: 16.46%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">지역</td>
												<td style="width: 16.4025%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">국가</td>
												<td style="width: 25.04%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">항공현황</td>
												<td style="width: 42.08%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;"><div style="text-align: center;">입국정책</div></td>
											</tr>
											<tr>
												<td rowspan="3" style="width: 16.4%; background-color: rgb(182, 215, 168); text-align: center; border: 1px solid lightgray;">미주</td>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">미국</td>
												<td style="width: 25.04%; border: 1px solid lightgray;"><strong>*대한항공</strong><br>로스엔젤레스 : 데일리<br>샌프란시스코 : 화수목금일<br>시애틀 : 월수토<br>뉴욕 : 데일리 (수/금 2편)<br>보스턴 : 수금일<br>워싱턴 : 화수금일<br>댈러스 : 월수토<br>애틀란타: 데일리<br>시카고 : 수금일<br>호놀룰루(하와이): 금<br></td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능 (ESTA 발급)<br><br>*PCR 검사 증명서 필수<br>-백신 미접종자는 24시간 이내의 코로나 검사 확인서가 필요하며 도착 후 백신 접종</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">캐나다</td>
												<td style="width: 25.04%; border: 1px solid lightgray;"><strong>*대한항공</strong><br>벤쿠버 : 화목금일<br>토론토 : 월수토</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*백신 접종확인서 필수 (백신 접종 완료자에 한하여 가능) * 입국 2주전 접종 필수<br>*PCR 음성검사 확인서 필요<br>*입국서류 정보 입력후 영수증 제시 (ArriveCAN)</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">괌/사이판</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">괌<br>*대한항공 : 수목토일<br>*진에어 : 화금<br><br>사이판<br>*아시아나 : 토</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*한국 국적자 무비자 입국 가능<br>*PCR 음성검사 확인서 필요<br>*사이판은 체크인 리조트 내에서만 머물수 있으며 5일 이후 외부 관광 가능</td>
											</tr>
											<tr>
												<td style="width: 16.4%; background-color: rgb(182, 215, 168); text-align: center; border: 1px solid lightgray;"><br></td>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">멕시코</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">멕시코시티/과달라하라 : 직항 없음</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*여행 허용<br>*입국시 체온측정 및 문진표 작성, 이상없을 시 입국<br>*멕시코 - 미국간 육로 이동 불가</td>
											</tr>
										</tbody>
									</table>
									<p><br></p>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
		
	
	<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w20211106028c88dda118f">
				<div class="_widget_data " data-widget-name="가로선" data-widget-type="hr" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
					<div class="widget line type01 _hide" id="hr_w20211106028c88dda118f">
						<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
						<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div doz_type="row" doz_grid="12" class="doz_row">
		<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
			<div doz_type="widget" id="w20211102a48aadc22d275">
				<div class="_widget_data _ds_animated_except" data-widget-name="여백" data-widget-type="padding"    data-widget-parent-is-mobile="N">
					<div class="widget padding" data-height="30" style="margin-top:px; margin-bottom:px;">
						<div id="padding_w20211102a48aadc22d275" style="width:100%; min-height:1px; height:30px; "></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</main>

			
	<main> 			 			 			 		 			 			 			 		
	<div doz_type="inside" class="inside">
		<div doz_type="row" doz_grid="12" class="doz_row">
			<div doz_type="grid" doz_grid="12" class="col-dz col-dz-12">
				<div doz_type="widget" id="w20211106513a819cd2355">
					<div class="_widget_data " data-widget-name="텍스트" data-widget-type="text" data-widget-anim="none" data-widget-anim-duration="0.7" data-widget-anim-delay="0" data-widget-parent-is-mobile="N">
						<div doz_type="text" class="widget _text_wrap widget_text_wrap fr-view  default_padding " id="text_w20211106513a819cd2355" >
							<div class="text-table ">
								<div>
									<table style="border: 1px solid lightgray; width: 70%;  margin-right: auto; margin-left: auto;">
										<tbody>
											<tr>
												<td style="width: 16.46%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">지역</td>
												<td style="width: 16.4025%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">국가</td>
												<td style="width: 25.04%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;">항공현황</td>
												<td style="width: 42.08%; text-align: center; background-color: rgb(159, 197, 232); border: 1px solid lightgray;"><div style="text-align: center;">입국정책</div></td>
											</tr>
											<tr>
												<td rowspan="7" style="width: 16.4082%; background-color: rgb(182, 215, 168); text-align: center; border: 1px solid lightgray;">동남아</td>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">태국</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*방콕<br>대한항공 : 데일리<br>아시아나 :데일리 (타이항공 코드쉐어)</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*백신 접종 확인서 필요<br>*12시간 동안 지정 호텔에서 격리 . PCR 음성 확인 필요<br>*5일 일정은 추가 검사 없이 한국으로 출국 가능<br>*5일 이상은 출국 72시간 전에 PCR 재검사 후 음성 확인서 필요</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">필리핀</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*마닐라<br>대한항공 : 데일리</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*백신접종 확인서 필요<br>*14일간 격리</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">캄보디아</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*프놈펜<br>대한항공 : 화목금일</td>
												<td style="width: 42.08%; border: 1px solid lightgray;"><br></td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">말레이시아</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*쿠알라룸프<br>대한항공 : 수금일</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*여행 목적으로는 입국 불가<br>*PCR 음성 확인서 필요<br>*14일간 격리</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">싱가포르</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">대한항공 : 화금일<br>아시아나 : 화수금일</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*백신접종 확인서 필요<br>*트래블버블 국가</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">베트남</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*하노이<br>대한항공:운영중지<br>아시아나:운영중지<br>*호치민<br>대한항공: 운영중지<br>아시아나: 운영중지</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*현재 여행 목적으로 입국 불가<br>*출국은 가능한 상황</td>
											</tr>
											<tr>
												<td style="width: 16.4025%; text-align: center; border: 1px solid lightgray;">인도네시아</td>
												<td style="width: 25.04%; border: 1px solid lightgray;">*발리 (덴파사)<br>대한항공 : 직항없음<br>아시아나 : 직항없음</td>
												<td style="width: 42.08%; border: 1px solid lightgray;">*코로나 백신 접종 확인서<br>*도착 72시간내 PCR 음성 확인서<br>*자카르타 등 경유 필요</td>
											</tr>
										</tbody>
									</table>
									<p><br></p>
								</div>
							</div>		
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
        
   	</section>
   	

<%@include file="/resources/includes/footer.jsp" %>

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
