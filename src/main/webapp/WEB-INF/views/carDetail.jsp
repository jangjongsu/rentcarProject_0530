<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주현대렌트카</title>
<link rel="stylesheet" type="text/css" href="/resources/css/carDetail.css">
</head>
<body>
<%@ include file="include/adminheader.jsp" %>
	<div class="l-ct">
		<div id="app">
			<h1 class="goodsSectionTitle l-ct">차량명칭</h1>
			<section class="vehicleSection l-ct">
				<div class="vehicleTable">
					<div class="vehicleThum vehicleCell">
						<img class="carimg" src="/resources/img/k8.png">
					</div>
					<div class="vehicleInfo vehicleCell">
						<ul class="vehicleContent">
							<li>
								<span class="vehicleSubject">고유번호</span>
								<span class="vehicleSubjectContent">${cdto.cindex}</span>
							</li>
							<li>
								<span class="vehicleSubject">브랜드</span>
								<span class="vehicleSubjectContent">${cdto.cbrend}</span>
							</li>
							<li>
								<span class="vehicleSubject">차량명칭</span>
								<span class="vehicleSubjectContent">${cdto.cname}</span>
							</li>
							<li>
								<span class="vehicleSubject">대여료/일</span>
								<span class="vehicleSubjectContent" style="color:red">${cdto.price}</span>
							</li>
							<li>
								<span class="vehicleSubject">차량 정보</span>
								<span class="vehicleSubjectContent">${cdto.coil}&nbsp;&nbsp;|&nbsp;&nbsp;${cdto.cclass}&nbsp;&nbsp;|&nbsp;&nbsp;${cdto.ccolor}</span>
							</li>
							<li>
								<span class="vehicleSubject">비고</span>
								<span class="vehicleSubjectContent">네비(내장),후방센서,후방카메라,블루투스,USB,썬루프,스마트키,열선시트,통풍시트,핸들열선,금연차<br>
								<p style="color: red; font-weight: 600; font-size: 16px;">만26세이상 운전경력 1년</p></span>
							</li>
							<li>
								<span class="vehicleSubject"></span>
								<span class="vehicleSubjectContent">💥 차량색상은 이미지와 다를 수 있습니다</span>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<h1 class="goodsSectionTitle l-ct"><span>차량</span>정보 수정하기</h1>
			<form>
				<section class="vehicleSection l-ct">
					<div class="vehicleTable">
						<div class="vehicleThum vehicleCell">
							<img class="#" src="#">
						</div>
						<div class="vehicleInfo vehicleCell">
							<ul class="vehicleContent">
								<li>
									<span class="vehicleSubject">브랜드</span>
									<select>
										<c:forEach items="${brendlist}" var="dto">
										<option class="optionlist">${dto.cbrend}</option>
										</c:forEach>									
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량등급</span>
									<select>
										<option class="optionlist">경차</option>
										<option class="optionlist">소형/준중형</option>
										<option class="optionlist">중형</option>
										<option class="optionlist">고급</option>
										<option class="optionlist">RV</option>
										<option class="optionlist">승합</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량명칭</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" type="text">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량색상</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" type="text">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량유종</span>									
									<select>
										<option class="optionlist">가솔린</option>
										<option class="optionlist">경유</option>
										<option class="optionlist">전기차</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량기어타입</span>
									<select>
										<option class="optionlist">자동</option>
										<option class="optionlist">수동</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">대여비용/일</span>
									<span class="vehicleSubjectContent">pindex</span>
								</li>
							</ul>
						</div>
					</div>
				</section>
			</form>
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>