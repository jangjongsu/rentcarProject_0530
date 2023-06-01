<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="/resources/css/header.css">
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr class ="headerline">
			<td >&nbsp;</td>
			<td class ="img"><a href="index"><img src="/resources/img/car.png" width="100"></a></td>
			<td class="margin02">&nbsp;</td>
			<%
			
				String sessionId = (String) session.getAttribute("sessionId");
				
				if(sessionId == null){
			%>
			<td class ="headertext"><a href="login">로그인</a></td>
			<%		
				} else{
			%>
			<td class ="headertext"><a href="logout">로그아웃</a></td>
			<%		
				}
			
			%>
			<td class="margin02">&nbsp;</td>
			
			<%
				if(sessionId == null){
			%>
			<td class ="headertext"><a href="join">회원가입</a></td>
			<%		
				} else{
			%>
			<td class ="headertext"><a href="modify">회원정보수정</a></td>
			<%		
				}
			
			%>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="#">실시간예약</a></td>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="#">이용안내</a></td>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="#">보험안내</a></td>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="#">예약확인</a></td>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="#">FAQ</a></td>
			<td class="margin02">&nbsp;</td>
			<td class ="headertext"><a href="userBoardList">문의하기</a></td>
			<td class="margin02">&nbsp;</td>
			<td >&nbsp;</td>
		</tr>
	</table>
</body>
</html>