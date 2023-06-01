<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/main2.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="/resources/js/jquery.timepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.timepicker.css">
<script>
  $( function() {
    $( "#datepicker1,#datepicker2" ).datepicker();
  } );
  
  $( function() {
	 $("#time1,#time2").timepicker({  
		step: 60,            //시간간격 : 5분
		timeFormat: "H:i"    //시간:분 으로표시
	});
  });
</script>
<title>렌트카</title>
</head>
<body>
	<div id="mainview">
		<div class="wrapper">		
			<div class="mainvisual">
				<section class="searchSection">
				<center>
					<div class="search" id="l-search">
						<div class="calenderLabel">
							<label class="DateBind">
								<div class="searchLabel current">
									<img src="/resources/img/start.png" class="icon">
									<input type="text" id="datepicker1">
								</div>
								<div class="searchLabel timePartition current">									
									<input type="text" name="time1" value="" placeholder="시간선택"  id="time1" required size="8" maxlength="5">
								</div>
								<div class="searchLabel searchPartition">
									<img src="/resources/img/end.png" class="icon">
									<input type="text" id="datepicker2">
								</div>
								<div class="searchLabel timePartition">
									<input type="text" name="time2" value="" placeholder="시간선택"  id="time2" required size="8" maxlength="5">
								</div>
							</label>
							<div class="searchLabel searchPartition searchCategory">
								<select>
								    <option value="allcar">전체</option>
								    <option value="lightcar">경차</option>
								    <option value="smallcar">소형/준중형</option>
								    <option value="mediumcar">중형</option>
								    <option value="Advancedcar">고급</option>
								    <option value="rvcar">RV</option>
								    <option value="bencar">승합</option>
								</select>
							</div>							
							<button type="button"><img src="/resources/img/search.png" onclick="#"></button>
						</div>
					</div>
					</center>
				</section>
			</div>
			<section class="carSection" id="centerimg">
				<h2 class="carTitle"><span class="point">제주현대렌트카</span> 인기차종</h2>
				<ul class="carList">
					<li>
						<a href="#">
							<div class="car1" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">모닝 · 스파크</p>
								<p class="listLabel">경차</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li> 
					<li>
						<a href="#">
							<div class="car2" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">쏘울 · 엑센트 · 아반떼</p>
								<p class="listLabel">소형/준중형</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li> 
					<li>
						<a href="#">
							<div class="car3" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">K5 · 쏘나타 · SM6</p>
								<p class="listLabel">중형</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="car4" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">K7 · 그랜져 · 제네시스</p>
								<p class="listLabel">고급</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="car5" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">니로 · 싼타페 · 펠리세이드</p>
								<p class="listLabel">RV</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li>
					<li>
						<a href="#">
							<div class="car6" id="carbox"></div>
							<div class="" id="cartext">
								<p class="listTitle">카니발 · 그랜드스타렉스</p>
								<p class="listLabel">승합</p>
								<p class="listLink">예약하기</p>
							</div>
						</a>
					</li>
				</ul>
			</section>			
		</div>
	</div>
</body>
</html>