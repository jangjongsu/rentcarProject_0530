<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차리스트</title>
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/carList.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>
$(function() {
    //모든 datepicker에 대한 공통 옵션 설정
    $.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: true //콤보박스에서 년 선택 가능
        ,changeMonth: true //콤보박스에서 월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
    });

    //input을 datepicker로 선언
    $("#datepicker").datepicker();                    
    $("#datepicker2").datepicker();
    
    //From의 초기값을 오늘 날짜로 설정
    $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
    //To의 초기값을 내일로 설정
    $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
    $('#datepicker').change(function() {
	    var nextDayDate = $('#datepicker').datepicker('getDate', '+1d');
	    nextDayDate.setDate(nextDayDate.getDate() + 1);
	    $('#datepicker2').datepicker('setDate', nextDayDate);
	});
 
    
    $('#datepicker').datepicker("option", "minDate",'today');
    $('#datepicker').datepicker("option", "maxDate");
    $('#datepicker').datepicker("option", "onClose", function ( selectedDate ) {
    	$('#datepicker2').datepicker( "option", "minDate", selectedDate );
    	
    });
    
});
</script>
</head>
<body>
<%@ include file="include/header.jsp" %>
		<div class="wrapper">		
			<div class="mainvisual">
				<section class="searchSection">
				<center>
					<form action="carListSearch">
						<div class="search" id="l-search">
							<div class="calenderLabel">
								<label class="DateBind">
									<div class="searchLabel current">
										<img src="/resources/img/start.png" class="icon"> <input
											type="text" id="datepicker" name="rtdate">
									</div>
									<div class="searchLabel searchPartition">
										<img src="/resources/img/end.png" class="icon"> <input
											type="text" id="datepicker2" name="returndate">
									</div>

								</label>
								<div class="searchLabel searchPartition searchCategory">
									<select name="searchOption">
										<option value="allcar">전체</option>
										<option value="경차">경차</option>
										<option value="준중형">준중형</option>
										<option value="중형">중형</option>
										<option value="고급">고급</option>
										<option value="RV">RV</option>
										<option value="승합">승합</option>
									</select>
								</div>		
									<input type="image" src="/resources/img/search.png">
							</div>
						</div>
					</form>
					</center>
				</section>
			</div>
			
			<section class="carSection" id="centerimg">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr class="headerline">
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=allcar">전체차량</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=경차">경차</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=준중형">준중형</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=중형">중형</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=고급">고급</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=RV">RV</a></td>
					<td class="margin02">&nbsp;</td>
					<td class="headertext"><a href="carListSearch?rtdate=${rtdate } &returndate=${returndate }&searchOption=승합">승합</a></td>
					<td class="margin02">&nbsp;</td>
				</tr>
			</table>
			<ul class="carList">
					<c:forEach items="${dtos }" var="dtos">
						<li class="carLabel">
							<a href="carReservation?cindex=${dtos.cindex }&rtdate=${rtdate } &returndate=${returndate }">
								<div>
									<img alt="차량사진" src="${dtos.cimg }" id="carbox">
								</div>
								<div class="" id="cartext">
									<p class="listTitle">&nbsp;&nbsp;&nbsp;${dtos.cname }</p>
									<p class="listContent"> ${dtos.cclass } | ${dtos.ccolor } |  ${dtos.coil } </p>
									<p class="listPrice">${dtos.price }원&nbsp;&nbsp;&nbsp;</p>
									<p class="listLink">예약하기</p>
								</div>
							</a>
						</li> 
					</c:forEach>
				</ul>
			</section>			
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주현대렌트카</title>
<link rel="stylesheet" type="text/css" href="/resources/css/carList.css">
</head>
<body>
<div class="body-wapper">
<%@ include file="include/adminheader.jsp" %>
	<div class="topimg">
		<img src="/resources/img/adminpage1.jpg">
	</div>
	<h1>현재 등록된 차량정보</h1>
	<div class="container">
		<div class="listMenuTabs">
			<input class="listtype" type="button" value="전체차량" onclick="script:window.location.href='carList_form'">
			<input class="listtype" type="button" value="경차" onclick="script:window.location.href='carList_type?cclass=경차'">
			<input class="listtype" type="button" value="소형/준중형" onclick="script:window.location.href='carList_type?cclass=준중형'">
			<input class="listtype" type="button" value="고급" onclick="script:window.location.href='carList_type?cclass=고급'">
			<input class="listtype" type="button" value="RV" onclick="script:window.location.href='carList_type?cclass=RV'">
			<input class="listtype" type="button" value="승합" onclick="script:window.location.href='carList_type?cclass=승합'">
			<input class="listtype" type="button" value="수입차" onclick="script:window.location.href='carList_type?cclass=수입'">
			<input class="listtype" id="caradd"  type="button" value="차량등록" onclick="script:window.location.href='carAdd_form'">
		</div>
		<p>&nbsp;&nbsp;<span class="count">${count}개</span>의 등록차량이 검색되었습니다.</p>
		<table class="carlist">
			<tr class="carlistheadline">				
				<th width="12.5%">브랜드</th>
				<th width="12.5%">등급</th>
				<th width="12.5%">명칭</th>
				<th width="12.5%">색상</th>
				<th width="12.5%">유종</th>
				<th width="12.5%">타입</th>
				<th width="12.5%">대여료/일</th>
				<th width="12.5%">누적대여일</th>
			</tr>
			<c:forEach items="${carListDto}" var="dtos" >
				<tr class="carlistline" onclick="script:window.location.href='carDetail_form?cindex=${dtos.cindex}'" style="cursor:pointer;" id="carlistline">					
					<td>${dtos.cbrend}</td>
					<td>${dtos.cclass}</td>
					<td>${dtos.cname}</td>
					<td>${dtos.ccolor}</td>
					<td>${dtos.coil}</td>
					<td>${dtos.ctype}</td>
					<td class="carlistprice">${dtos.price}</td>
					<td>${dtos.cindex}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
<%@ include file="include/footer.jsp" %>
</div>
</body>
>>>>>>> refs/heads/rlagus
</html>