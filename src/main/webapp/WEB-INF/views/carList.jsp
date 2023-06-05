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
	<h1>등록된 차량정보</h1>
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
			<tr class="carlistline">
				<th width="9%">차량식별번호</th>
				<th width="13%">브랜드</th>
				<th width="13%">등급</th>
				<th width="13%">명칭</th>
				<th width="13%">색상</th>
				<th width="13%">유종</th>
				<th width="13%">타입</th>
				<th width="13%">대여료/일</th>
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