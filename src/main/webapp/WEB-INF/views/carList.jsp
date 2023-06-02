<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주현대렌트카</title>
</head>
<body>
	<table  border="1" cellspacing="0" cellpadding="10" width="1200">
		<tr>
			<td>차량식별번호</td>
			<td>브랜드</td>
			<td>등급</td>
			<td>명칭</td>
			<td>색상</td>
			<td>유종</td>
			<td>타입</td>
			<td>대여료</td>
		</tr>
		<c:forEach items="${carListDto}" var="dtos" >
		<tr>
			<td>${dtos.cindex}</td>
			<td>${dtos.cbrend}</td>
			<td>${dtos.cclass}</td>
			<td>${dtos.cname}</td>
			<td>${dtos.ccolor}</td>
			<td>${dtos.coil}</td>
			<td>${dtos.ctype}</td>
			<td>${dtos.price}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>