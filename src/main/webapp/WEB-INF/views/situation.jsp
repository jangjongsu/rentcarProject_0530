<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주현대렌트카</title>
<link rel="stylesheet" type="text/css" href="/resources/css/situation.css">
</head>
<body>
<div class="body-wapper">
<%@ include file="include/adminheader.jsp" %>
	<div class="topimg">
		<img src="/resources/img/adminpage1.jpg">
	</div>
	<h1>차량상태 및 예약현황</h1>
	<div class="container">
		<div class="listMenuTabs">
			<input class="listtype" type="button" value="전체차량" onclick="">
			<input class="listtype" type="button" value="예약차량" onclick="">
			<input class="listtype" type="button" value="대기차량" onclick="">
			<input class="listtype" type="button" value="대여차량" onclick="">
		</div>
		<p>&nbsp;&nbsp;<span class="count">${count}개</span>의 차량이 검색되었습니다.</p>
		<table class="carlist">
			<tr class="carlistheadline">
				<th width="9%">예약번호</th>
				<th width="13%">차량명칭</th>
				<th width="13%">예약일</th>
				<th width="13%">대여일</th>
				<th width="13%">반납일</th>
				<th width="13%">대여기간</th>
				<th width="13%">대여료</th>
			</tr>
			<c:forEach items="${carListDto}" var="dtos" >
				<tr class="carlistline" onclick="script:window.location.href='carDetail_form?cindex=${dtos.cindex}'" style="cursor:pointer;" id="carlistline">					
					<td>${dtos.cindex}</td>
					<td>${dtos.cbrend}</td>
					<td>${dtos.cclass}</td>
					<td>${dtos.cname}</td>
					<td>${dtos.ccolor}</td>
					<td>${dtos.coil}</td>
					<td>${dtos.ctype}</td>
					<td class="carlistprice">${dtos.price}</td>					
				</tr>
			</c:forEach>
		</table>
	</div>
<%@ include file="include/footer.jsp" %>
</div>
</body>
</html>