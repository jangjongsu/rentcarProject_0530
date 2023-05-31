<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/css/content.css">
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
		<table border="0" cellspacing="0" cellpadding="10" width="80%">
			<tr>
				<td class="contentbox">
					<center>
						<table border="0" cellspacing="0" cellpadding="10">
							<form action="loginOk" method="post">
								<tr>
									<td class="contenttext">아 이 디 :</td>
									<td><input class="inputbox01" type="text" name="rid"></td>
								</tr>
								<tr>
									<td class="contenttext">비밀번호 :</td>
									<td><input class="inputbox01" type="password" name="rpw"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
									<input class="contentbtn01" type="submit" value="로그인">
									&nbsp;
									<input class="contentbtn01" type="button" value="회원가입 화면으로" onclick="script:window.location.href='join'">
									</td>
								</tr>
							</form>
						</table>
					</center>
				</td>
			</tr>
		</table>
	</center>
<%@ include file="include/footer.jsp" %>
</body>
</html>