<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDate"%>
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
	<h1>차량대여 예약목록</h1>
	<div class="container">
		<p>&nbsp;&nbsp;<span class="count">${count}개</span>의 예약이 검색되었습니다.</p>
		<table class="carlist">
			<tr class="carlistheadline">
				<th width="16%">예약일</th>
				<th width="8%">예약번호</th>
				<th width="10%">브랜드</th>
				<th width="10%">등급</th>
				<th width="16%">명칭</th>				
				<th width="16%">대여일</th>
				<th width="16%">반납일</th>
				<th width="8%">대여기간</th>
			</tr>
			<c:forEach items="${dtos}" var="dtos" >
				<tr class="carlistline" onclick="script:window.location.href='situationDetail_form?rtnum=${dtos.rtnum}'" style="cursor:pointer;" id="carlistline">
					<td>${dtos.rvdate.substring(0,10)}</td>					
					<td>${dtos.rtnum}</td>
					<td>${dtos.cbrend}</td>
					<td>${dtos.cclass}</td>
					<td>${dtos.cname}</td>					
					<td>${dtos.rtdate.substring(0,10)}</td>
					<td>${dtos.returndate.substring(0,10)}</td>
					<c:set var="startDate" value="${dtos.rtdate.substring(0, 10)}"/>
					<c:set var="endDate" value="${dtos.returndate.substring(0, 10)}"/>					
					<c:set var="startLocalDate" value="<%= LocalDate.parse((String) pageContext.getAttribute(\"startDate\")) %>"/>
					<c:set var="endLocalDate" value="<%= LocalDate.parse((String) pageContext.getAttribute(\"endDate\")) %>"/>
					<c:set var="daysBetween" value="${startLocalDate.until(endLocalDate).days}"/>
					<td>${daysBetween}일</td>
				</tr>
			</c:forEach>
		</table>
	</div>
<%@ include file="include/footer.jsp" %>
</div>
</body>
</html>