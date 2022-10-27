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
                        <h1 class="mx-auto my-0 text-uppercase">여행지 정보</h1>
                        <h2 class="text-white-50 mx-auto mt-2 mb-5">아래 표를 확인하시고 여행을 생각하시는 나라의 <br>정보를 확인하세요</br></h2>
                    </div>
                </div>
            </div>
        </header>
        
        
        <!-- 여행경보-->
        <section class="travelWarning">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        	<div><p style="text-align: center;">
				<span style="font-size: 36px;"><strong>여행경보단계</strong></span><span style="font-size: 18px;"><strong>&nbsp;</strong></span></p>
			</div>
        	<div style="width: 46%; margin-right: auto; margin-left: auto;">
        		<img src="../resources/assets/img/TravelWarning.jpg" alt="여행경보 단계" />
        	</div>
        	<div style="text-align:center;">
        		<h5>※ 더 자세한 사항을 확인하시고 싶으신 분은 <a href="https://www.0404.go.kr/walking/walking_intro.jsp" target="blank"><span style="text-decoration: underline;">외교부 홈페이지</span></a>를 참고하세요.</h5>
        	</div>
        	<br>
        	
        	<p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
        </section>
        
        
        <!-- 표 반영 -->
        
        <section class="여행가능지역">     
		<main> 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div class="doz_row">
					<div><p style="text-align: center;">
						<span style="font-size: 36px;"><strong>여행가능지역</strong></span><span style="font-size: 18px;"><strong>&nbsp;</strong></span></p>
						<p>&nbsp;</p>
					</div>
				</div>
				<div style="width: 1320px; height:783px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
					<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
						<tbody>
							<tr style="	height: 50px; border-spacing:0px;" >
								<td><div id="td_one">지역</div></td>
								<td><div id="td_two">국가</div></td>
								<td><div id="td_three">항공현황</div></td>
								<td><div id="td_four">입국 정책</div></td>
							</tr>
							<tr>  
								<td rowspan="4" style="width: 150px; background-color: #8AC0BC; color:white; font-size:16pt; font-weight:bold; border:1px solid #cee0df; text-align: center;  border-bottom-left-radius: 10px;"><strong>미주</strong></td>
								<td><div id="td_usa_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=69&hash=&chkvalue=no2&stext=&group_idx=2&alert_level=0" target="blank">미국</a></div></td>
								<td><div id="td_usa_two"><strong>*대한항공</strong><br>로스엔젤레스 : 데일리<br>샌프란시스코 : 화수목금일<br>시애틀 : 월수토<br>뉴욕 : 데일리 (수/금 2편)<br>보스턴 : 수금일<br>워싱턴 : 화수금일<br>댈러스 : 월수토<br>애틀란타: 데일리<br>시카고 : 수금일<br>호놀룰루(하와이): 금<br></div></td>
								<td><div id="td_usa_three">*한국 국적자 무비자 입국 가능 (ESTA 발급)<br><br>*PCR 검사 증명서 필수<br>-백신 미접종자는 24시간 이내의 코로나 검사 확인서가 필요하며 도착 후 백신 접종</div></td>
							</tr>					
							<tr>
								<td><div id="td_cnd_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=204&hash=&chkvalue=no2&stext=&group_idx=2&alert_level=0" target="blank">캐나다</a></div></td>
								<td><div id="td_cnd_two"><strong>*대한항공</strong><br>벤쿠버 : 화목금일<br>토론토 : 월수토</div></td>
								<td><div id="td_cnd_three">*한국 국적자 무비자 입국 가능<br>*백신 접종확인서 필수 (백신 접종 완료자에 한하여 가능) <br>*입국 2주전 접종 필수<br>*PCR 음성검사 확인서 필요<br>*입국서류 정보 입력후 영수증 제시 (ArriveCAN)</div></td>
							</tr>
							<tr>
								<td><div id="td_gua_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=69&hash=&chkvalue=no2&stext=&group_idx=2&alert_level=0" target="blank">괌/사이판</a></div></td>
								<td><div id="td_gua_two"><strong>괌</strong><br>*대한항공 : 수목토일<br>*진에어 : 화금<br><br><strong>사이판</strong><br>*아시아나 : 토</div></td>
								<td><div id="td_gua_three">*한국 국적자 무비자 입국 가능<br>*PCR 음성검사 확인서 필요<br>*사이판은 체크인 리조트 내에서만 머물수 있으며 5일 이후 외부 관광 가능</div></td>
							</tr>
							<tr>
								<td><div id="td_mex_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=58&hash=&chkvalue=no2&stext=&group_idx=3&alert_level=0" target="blank">멕시코</a></div></td>
								<td><div id="td_mex_two"><strong>멕시코시티/과달라하라 : </strong>직항 없음</div></td>
								<td><div id="td_mex_three">*여행 허용<br>*입국시 체온측정 및 문진표 작성, 이상없을 시 입국<br>*멕시코 - 미국간 육로 이동 불가</div></td>
							</tr>
						</tbody>
					</table>			
				</div>
			</div>
			
		</main>


		<main> 		
		    <p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>	 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div style="width: 1320px; height:798px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
					<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
						<tbody>
							<tr style="	height: 50px; border-spacing:0px;" >
								<td><div id="td_one">지역</div></td>
								<td><div id="td_two">국가</div></td>
								<td><div id="td_three">항공현황</div></td>
								<td><div id="td_four">입국 정책</div></td>
							</tr>
							<tr>
								<td rowspan="7" style="width: 150px; background-color: #E49F6E; color:white; font-size:16pt; font-weight:bold; border:1px solid #cee0df; text-align: center;  border-bottom-left-radius: 10px;"><strong>동남아</strong></td>
								<td><div id="td_twa_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=260" target="blank">태국</a></div></td>
								<td><div id="td_twa_two"><strong>방콕</strong><br>*대한항공 : 데일리<br>*아시아나 :데일리 (타이항공 코드쉐어)</div></td>
								<td><div id="td_twa_three">*백신 접종 확인서 필요<br>*12시간 동안 지정 호텔에서 격리 . PCR 음성 확인 필요<br>*5일 일정은 추가 검사 없이 한국으로 출국 가능<br>*5일 이상은 출국 72시간 전에 PCR 재검사 후 음성 확인서 필요</div></td>
							</tr>					
							<tr>
								<td><div id="td_phi_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=252" target="blank">필리핀</a></div></td>
								<td><div id="td_phi_two"><strong>마닐라</strong><br>*대한항공 : 데일리</div></td>
								<td><div id="td_phi_three">*백신접종 확인서 필요<br>*14일간 격리</div></td>
							</tr>
							<tr>
								<td><div id="td_cam_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=259" target="blank">캄보디아</a></div></td>
								<td><div id="td_cam_two"><strong>프놈펜</strong><br>*대한항공 : 화목금일</div></td>
								<td><div id="td_cam_three"><br></div></td>
							</tr>
							<tr>
								<td><div id="td_mal_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=56" target="blank">말레이시아</a></div></td>
								<td><div id="td_mal_two"><strong>쿠알라룸프</strong><br>*대한항공 : 수금일</div></td>
								<td><div id="td_mal_three">*여행 목적으로는 입국 불가<br>*PCR 음성 확인서 필요<br>*14일간 격리</div></td>
							</tr>
							<tr>
								<td><div id="td_shi_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=134" target="blank">싱가포르</a></div></td>
								<td><div id="td_shi_two">*대한항공 : 화금일<br>*아시아나 : 화수금일</div></td>
								<td><div id="td_shi_three">*백신접종 확인서 필요<br>*트래블버블 국가</div></td>
							</tr>
							<tr>
								<td><div id="td_vtn_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=86" target="blank">베트남</a></div></td>
								<td><div id="td_vtn_two"><strong>하노이</strong><br>*대한항공:운영중지<br>*아시아나:운영중지<br><strong>호치민</strong><br>*대한항공: 운영중지<br>*아시아나: 운영중지</div></td>
								<td><div id="td_vtn_three">*현재 여행 목적으로 입국 불가<br>*출국은 가능한 상황</div></td>
							</tr>
							<tr>
								<td><div id="td_idn_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=181">인도네시아</a></div></td>
								<td><div id="td_idn_two"><strong>발리(덴파사)</strong><br>*대한항공 : 직항없음<br>*아시아나 : 직항없음</div></td>
								<td><div id="td_idn_three">*코로나 백신 접종 확인서<br>*도착 72시간내 PCR 음성 확인서<br>*자카르타 등 경유 필요</div></td>
							</tr>
						</tbody>
					</table>			
			</div>
		</div>			
		</main>
		
		<main> 			 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			    <p>&nbsp;</p>
				<p>&nbsp;</p>
				<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
					<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
				</div>
				<p>&nbsp;</p>
				<p>&nbsp;</p>					
				<div style="width: 1320px; height:1345px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
						<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
							<tbody>
								<tr style="	height: 50px;" >
									<td><div id="td_one">지역</div></td>
									<td><div id="td_two">국가</div></td>
									<td><div id="td_three">항공현황</div></td>
									<td><div id="td_four">입국 정책</div></td>
								</tr>
								<tr>
									<td rowspan="6" style="width: 150px; text-align: center; background-color: #64A19D; border:1px solid #cee0df; color:white; font-size:16pt; font-weight:bold; border-bottom-left-radius: 10px;"><strong>서유럽</strong></td>
									<td><div id="td_lon_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=159">영국</a></div></td>
									<td><div id="td_lon_two"><strong>런던 : 11월 부터<br></strong> *대한항공 : 매일 운항 예정<br> *아시아나 : 금요일 운항 예정<br> *브리티시에어라인 : 운항중단</div></td>
									<td><div id="td_lon_three"> *한국국적자 무비자 입국 가능<br> *10월 4일 부로 자가격리 해제<br> *영국정부사이트 (GOV.UK)에서 입국 48시간 전 온라인으로 승객위치 질문서(Pasenger Locator Form)을 작성하여 영국 입국시 출입국 심사대에 제출</div></td>
								</tr>
								<tr>
									<td><div id="td_fra_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=248">프랑스</a></div></td>
									<td><div id="td_fra_two"><strong>파리 : 11월 부터</strong><br>*대한항공 : 월수토 운항 예정<br>*아시아나 : 운항 중단<br>*에어프랑스 : 월목토 예정</div></td>
									<td><div id="td_fra_three">*한국국적자 무비자 입국 가능<br>(단, 백신 접종을 한경우 파리 입국 가능)<br>-한국 등 방역 우수국가에 한정된 특별입국허가<br>-자가격리와 72시간 이전 PCR 음성 확인서 없이 입국허용<br>*EU 전 국가들에서 통용되는 보건패스 신청 필요<br>(화이자, 모더나, 아스트라 제네카, 얀센)</div></td>
								</tr>
								<tr>
									<td><div id="td_ger_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=34">독일</a></div></td>
									<td><div id="td_ger_two"><strong>프랑크푸르트 : 11월 부터</strong><br>*대한항공 : 목토 예정<br>*아시아나 : 월수금일 예정<br>*루프트한자 : 월화수금일 예정<br><br><strong>뮌헨 : 11월 부터</strong><br>*루프트한자 : 화목금토일 예정</div></td>
									<td><div id="td_ger_three">*한국국적자 무비자 입국 가능<br>*자가 격리 없음<br>*백신접종증명서와 입국 72시간내 PCR검사 음성확인서 필요</div></td>
								</tr>
								<tr>
									<td><div id="td_ity_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=179">이탈리아</a></div></td>
									<td><div id="td_ity_two"><strong>로마 : 12월 부터</strong><br>*대한항공 : 월화목토일 예정<br>*아시아나 : 운항 중단<br><br><strong>밀라노 : 11월 부터</strong><br>*대한항공 : 월수금일<br><br><strong>베니스 : 11월 부터</strong><br>*아시아나 : 운항중단</div></td>
									<td><div id="td_ity_three">*한국국적자 무비자 입국 가능<br>*자가 격리 없음<br>*백신접종증명서와 입국 72시간내 PCR검사 음성확인서 필요<br>*EU Digital Passenger locator Form 필수<br>*실내식당 및 중장거리 운송수단, 박물관 등의 입장을 위해 48시간이내 실시한 항원검사 증명서가 필요함</div></td>
								</tr>
								<tr>
									<td><div id="td_spa_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=128">스페인</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=244">포르투갈</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=60">모로코</a></div></td>
									<td><div id="td_spa_two"><strong>바르셀로나 : 11월 부터</strong><br>*대한항공 : 임시중단<br>*아시아나 : 임시중단<br><br><strong>마드리드 : 11월 부터</strong><br>*대한항공 : 임시중단<br><br><strong>리스본 : 11월 부터</strong><br>*아시아나 : 임시중단</div></td>
									<td><div id="td_spa_three"><strong>현재 스페인은 직항이 없어 핀에어 등 경유편을 이용합니다.</strong><br><strong><br></strong>1.스페인 / 포르투갈 : 한국국적자 무비자 입국 가능<br>*코로나 19 음성 확인서는 필요 없으나 도착 48시간 이내 (www.spth.gob.es)에서 특별검역신고서를 작성하고 QR 코드를 발급받아야 함<br>*QR코드제시 - 발열체크 - 대면심사 3단계의 특별검역절차를 거침<br><br>2.모로코 : 백신 접종 또는 PCR 음성 증명서 공항에서 제출 후 입국 (격리 없음)</div></td>
								</tr>
								<tr>
									<td><div id="td_hol_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=21">네덜란드</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=87">벨기에</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=127">스위스</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=297">몰타</a></div></td>
									<td><div id="td_hol_two"><strong>암스테르담 : 11월 부터</strong><br>*대한항공 : 화토 운항<br>*KLM : 월화수금토일<br><br><strong>취리히 : 11월 부터</strong><br>*대한항공 : 임시중단</div></td>
									<td><div id="td_hol_three">1.스위스 : 한국 국적자 무비자 입국가능<br>*입국 72시간 전 PCR 테스트 음성 결과지 필수<br><br>2.네덜란드 : 한국 국적자 입국가능<br>3.벨기에 : 한국 국적자 입국가능<br>4.몰타 : 한국 국적자 입국 가능</div></td>
								</tr>
							</tbody>
						</table>
				
			</div>
		</div>
		</main>
		
		
		
		
		<main> 		
		    <p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>	 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div style="width: 1320px; height:950px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
						<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
							<tbody>
								<tr style="	height: 50px; border-spacing:0px;" >
									<td><div id="td_one">지역</div></td>
									<td><div id="td_two">국가</div></td>
									<td><div id="td_three">항공현황</div></td>
									<td><div id="td_four">입국 정책</div></td>
								</tr>
								<tr>
									<td rowspan="7" style="width: 150px; background-color: #d9ead3; color:black; font-size:16pt; font-weight:bold; border:1px solid #cee0df; text-align: center;  border-bottom-left-radius: 10px;"><strong>지중해<br><br>중동</strong></td>
									<td><div id="td_trk_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=228">터키</a></div></td>
									<td><div id="td_trk_two"><strong>이스탄불</strong><br>*대한항공 : 월수금일, 12월 부터<br>*아시아나 : 운항중단<br>*터키항공 : 월수목토일, 11월 부터</div></td>
									<td><div id="td_trk_three">*한국 국적자 무비자 입국 가능<br>*PCR 음성 확인서 면제 (출발전 재확인 필수)<br>*항공 탑승 72시간 전에 <a data-fr-linked="true" href="//www.register.health.gov.tr">www.register.health.gov.tr</a> 사이트에 접속하여 성명, 성별, 이메일, 여권번호, 출발지, 국적, 도착일, 컨택장소 등을 작성해야 함<br>*한국 귀국시 자가격리 필요</div></td>
								</tr>
								<tr>
									<td><div id="td_gre_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=11">그리스</a></div></td>
									<td><div id="td_gre_two"><strong>아테네</strong><br>*직항 없음</div></td>
									<td><div id="td_gre_three">*한국 국적자 무비자 입국 가능 (90일)<br>*입국 72시간 전 음성 확인서 또는 백신 접종완료 증명서 필수<br>*PLF(Passenger Locator Form) 작성 필수, 도착 24시간 전<br>*www.travel.gov.gr</div></td>
								</tr>
								<tr>
									<td><div id="td_eyt_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=178">이집트</a></div></td>
									<td><div id="td_eyt_two"><strong>카이로</strong><br>*직항없음</div></td>
									<td><div id="td_eyt_three">*한국 국적자 관광비자 입국 가능 (도착비자)<br>*백신접종 증명서, PCR 검사 음성 확인서 휴대 필수<br>*여행자 신고서 양식을 작성 후 제출해야 함<br>*<a data-fr-linked="true" href="//www.egypt.travel/media/2364/declaration_form">www.egypt.travel/media/2364/declaration_form.pdf</a></div></td>
								</tr>
								<tr>
									<td><div id="td_esl_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=177">이스라엘</a></div></td>
									<td><div id="td_esl_two"><strong>텔아비브 : 12월 부터</strong><br>*대한항공 : 화목토</div></td>
									<td><div id="td_esl_three">*한국국적자 무비자 입국 가능<br>*백신 접종증명서와 PCR 음성 확인서 필수<br>*코로나 치료 커버 가능한 보험 가입 필수<br></div></td>
								</tr>
								<tr>
									<td><div id="td_dby_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=135">두바이<br>아부다비</a></div></td>
									<td><div id="td_dby_two"><strong>두바이</strong><br>*대한항공 : 데일리 예정. 12월 부터<br>*EK항공 : 데일리 운항중<br><br><strong>아부다비</strong><br>*EY항공 : 데일리 운항중</div></td>
									<td><div id="td_dby_three">*한국 국적자 무비자 입국 가능<br>*96시간전 PCR검사증(영문) 필요<br>*공항 도착 후 검사 가능하며 약 100불</div></td>
								</tr>
								<tr>
									<td><div id="td_kar_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=202">카타르</a></div></td>
									<td><div id="td_kar_two"><strong>도하</strong><br>*카타르 항공 : 매일 운항중</div></td>
									<td><div id="td_kar_three">*한국 국적자 무비자 입국 가능<br>*환승객 입국가능</div></td>
								</tr>
								<tr>
									<td><div id="td_jor_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=165">요르단</a></div></td>
									<td><div id="td_jor_two"><strong>암만</strong><br>*직항없음</div></td>
									<td><div id="td_jor_three">*한국 국적자 입국가능 (도착비자)<br>*공항에서 코로나 검사 진행 후 음성 확인 후 입국, 격리 없음<br>*자가격리 요르단 이동관련 앱 설치 후 관련보험 가입 의무</div></td>
								</tr>
							</tbody>
						</table>
				
			</div>
		</div>
		
		</main>


		<main> 		
		    <p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>	 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div style="width: 1320px; height:1188px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
					<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
						<tbody>
							<tr style="	height: 50px; border-spacing:0px;" >
								<td><div id="td_one">지역</div></td>
								<td><div id="td_two">국가</div></td>
								<td><div id="td_three">항공현황</div></td>
								<td><div id="td_four">입국 정책</div></td>
							</tr>
							<tr>
								<td rowspan="12" style="width: 150px; background-color: #CC8F64; color:white; font-size:16pt; font-weight:bold; border:1px solid #cee0df; text-align: center;  border-bottom-left-radius: 10px;"><strong>동유럽<br><br>발칸</strong></td>
								<td><div id="td_chk_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=195">체코</a></div></td>
								<td><div id="td_chk_two"><strong>프라하: 12월</strong><br>*대한항공 : 월수금토<br>*체코항공 : 미정</div></td>
								<td><div id="td_chk_three">*한국국적자 무비자 입국가능<br>*온라인 사전입국신고서 작성<br>*72시간 이내 PCR 검사 또는 48시간이내 항권검사 제출<br>*한국 백신 접종증명서 불인정<br>*격리 없음</div></td>
							</tr>
							<tr>
								<td><div id="td_ost_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=163">오스트리아</a></div></td>
								<td><div id="td_ost_two"><strong>비엔나 : 12월</strong><br>*대한항공 : 화목토</div></td>
								<td><div id="td_ost_three">*한국국적자 무비자 입국가능<br>*격리 없음<br>*백신접종증명서 제시 필수(화이자, 아스트라제네카, 모더나, 시노팜, 얀센)<br>*입국자 온라인 사전등록 필수<a href="//www.oesterreich.gv.at">(www.oesterreich.gv.at)</a></div></td>
							</tr>
							<tr>
								<td><div id="td_hug_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=254">헝가리</a></div></td>
								<td><div id="td_hug_two"><strong>부다페스트 : 11월</strong><br>*폴란드항공 :월수<br>*대한항공 : 미정</div></td>
								<td><div id="td_hug_three"><span style="color: rgb(255, 0, 0);">*한국국적자 무비자 입국 불가<br></span>*헝가리 경찰청에서 특별입국허가시에 가능</div></td>
							</tr>
							<tr>
								<td><div id="td_pol_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=246">폴란드</a></div></td>
								<td><div id="td_pol_two"><strong>바르샤바 : 11월</strong><br>*폴란드항공 : 화목토</div></td>
								<td><div id="td_pol_three">*한국국적자 무비자 입국가능<br>*72시간 내 PCR 음성 확인서 필수</div></td>
							</tr>
							<tr>
								<td><div id="td_cro_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=218">크로아티아</a></div></td>
								<td><div id="td_cro_two"><strong>자그레브 : 11월</strong><br>*대한항공 : 미정</div></td>
								<td><div id="td_cro_three">*한국국적자 무비자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br>*거주지 및 연락처 기재 필수</div></td>
							</tr>
							<tr>
								<td><div id="td_rum_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=43">루마니아</a></div></td>
								<td rowspan="7"><div id="td_rum_two">*직항없음</div></td>
								<td><div id="td_rum_three">*한국국적자 무비자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></div></td>
							</tr>
							<tr>
								<td><div id="td_bos_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=298">보스니아<br> 헤르체고비나</a></div></td>
								<td><div id="td_bos_three">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></div></td>
							</tr>
							<tr>
								<td><div id="td_mon_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=290">몬테네그로</a></div></td>
								<td><div id="td_mon_three">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></div></td>
							</tr>
							<tr>
								<td><div id="td_bul_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=98">불가리아</a></div></td>
								<td><div id="td_bul_three">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></div></td>
							</tr>
							<tr>
								<td><div id="td_sev_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=287">세르비아</a></div></td>
								<td><div id="td_sev_three">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수<br></div></td>
							</tr>
							<tr>
								<td><div id="td_sel_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=129">슬로바키아</a></div></td>
								<td><div id="td_sel_three">*한국국적자 입국가능<br>*PCR 검사 음성확인서 제출 필수 <br></div></td>
							</tr>
							<tr>
								<td><div id="td_svb_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=130">슬로베니아</a></div></td>
								<td><div id="td_svb_three">*14일 의무적 자가격리</div></td>
							</tr>
						</tbody>
					</table>

			</div>
		</div>
		
		</main>

		<main> 		
		    <p>&nbsp;</p>
			<p>&nbsp;</p>
			<div class="line_box holder" style="width: 65%;  margin-right: auto; margin-left: auto;">
				<hr style="border-top-width:3px; border-color:rgba(0, 0, 0, 0.05);" />	
			</div>
			<p>&nbsp;</p>
			<p>&nbsp;</p>	 			 			 		 			 			 			 		 			 			 			 		 			 			 			 		
			<div class="inside">
				<div style="width: 1320px; height:972px; background-color: #cee0df; margin-left: auto; margin-right: auto; border-radius: 10px;">
				<div style="padding:3px"></div>
					<table style="width: 1300px;  margin-right: auto; margin-left: auto;">
						<tbody>
							<tr style="	height: 50px; border-spacing:0px;" >
								<td><div id="td_one">지역</div></td>
								<td><div id="td_two">국가</div></td>
								<td><div id="td_three">항공현황</div></td>
								<td><div id="td_four">입국 정책</div></td>
							</tr>
							<tr>
								<td rowspan="8" style="width: 150px; background-color: #D0A485; color:white; font-size:16pt; font-weight:bold; border:1px solid #cee0df; text-align: center;  border-bottom-left-radius: 10px;"><strong>러시아<br><br>북유럽<br><br>발틱</strong></td>
								<td><div id="td_rus_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=39">러시아</div></td>
								<td><div id="td_rus_two"><strong>모스크바 : 11월~</strong><br>*대한항공 : 목<br>*SU : 월토<br><br><strong>상트 페테르브르크</strong><br>*대한항공 : 임시중단</div></td>
								<td><div id="td_rus_three"><span style="color: rgb(255, 0, 0);"><strong>*현재 입국 제한</strong><br><br></span>*한국 국적자 무비자 입국 가능<br>*PCR 검사 증명서<br></div></td>
							</tr>					
							<tr>
								<td> <div id="td_fin_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=251">핀란드</div></td>
								<td> <div id="td_fin_two"><strong>헬싱키 : 11월~</strong><br>*AY : 데일리 운항<br><br><strong>부산-헬싱키</strong><br>*AY:운항미정</div></td>
								<td> <div id="td_fin_three">*한국 국적자 무비자 입국 가능<br>*PCR 검사 증명서 제출<br></div></td>
							</tr>
							<tr>
								<td> <div id="td_den_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=31">덴마크<br></div></td>
								<td> <div id="td_den_two"><strong>코펜하겐 / 페로제도 : </strong>직항없음</div></td>
								<td> <div id="td_den_three">*한국 국적자 무비자 입국 가능<br>*마스크 착용 의무 / 입국카드 작성<br>*PCR 검사 증명서</div></td>
							</tr>
							<tr>
								<td> <div id="td_nrw_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=23">노르웨이</div></td>
								<td> <div id="td_nrw_two"><strong>오슬로 : </strong>직항없음</div></td>
								<td> <div id="td_nrw_three">*한국 국적자 무비자 입국 가능<br>*현재 관광비자 발급 불가<br>*모든 국경 폐쇄</div></td>
							</tr>
							<tr>
								<td> <div id="td_swd_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=126">스웨덴</div></td>
								<td> <div id="td_swd_two"><strong>스톡홀름 : </strong>직항없음</div></td>
								<td> <div id="td_swd_three">*한국 국적자 무비자 입국 가능<br>*입국카드 장성<br>*PCR 검사 증명서 제출</div></td>
							</tr>
							<tr>
								<td> <div id="td_thr_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=154">에스토니아</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=344">라트비아</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=345">리투아니아</a></div></td>
								<td> <div id="td_thr_two"><strong>탈린 / 리가 / 빌리우스 : </strong>직항없음<br></div></td>
								<td> <div id="td_thr_three">*라트비아/에스토니아/리투아니아 : 한국 국적자 무비자 입국</div></td>
							</tr>
							<tr>
								<td> <div id="td_icl_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=130">아이슬란드</div></td>
								<td> <div id="td_icl_two"><strong>레이캬비크 : </strong>직항없음</div></td>
								<td> <div id="td_icl_three">*한국 국적자 무비자 입국 가능</div></td>
							</tr>
							<tr>
								<td> <div id="td_cort_one"><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=332">조지아</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=334">아르메니아</a><br><a href="https://www.0404.go.kr/dev/country_view.mofa?idx=335">아제르바이잔</a></div></td>
								<td> <div id="td_cort_two"><strong>트빌리시/예레반/바쿠 : </strong>직항없음</div></td>
								<td> <div id="td_cort_three">*조지아 : 한국 국적자 무비자 입국 가능, 72시간내 PCR 검사 확인서<br> *아르메니아 : 한국 국적자 무비자 입국 가능, 72시간내 PCR 검사 확인서<br>*아제르바이잔 : <span style="color: rgb(255, 0, 0);">한국 국적자 무비자 입국 불가</span></div></td>
							</tr>
						</tbody>
					</table>
					

			</div>
		</div>
		</main>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
        
   	</section>
   	

<%@include file="../includes/unitfooter.jsp" %>

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

    </body>
</html>
