<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/modify.js"></script>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
		<table border="0" cellspacing="0" cellpadding="10" width="80%">
			<tr>
				<td class="contentbox">
					<center>
						<table border="0" cellspacing="0" cellpadding="10">
							<form action="modifyOk" method="post" name="modify_frm">
								<tr>
									<td class="contenttext">아 이 디 : </td>
									<td><input class="inputbox01" type="text" name="rid" value="${dto.rid}" readonly="readonly"></td>
								</tr>
								<tr>
									<td class="contenttext">비밀번호 :</td>
									<td><input class="inputbox01" type="password" name="rpw"></td>
								</tr>
								<tr>
									<td class="contenttext">비밀번호 확인 :</td>
									<td><input class="inputbox01" type="password"
										name="rpw_check"></td>
								</tr>
								<tr>
									<td class="contenttext">이&nbsp;&nbsp;&nbsp;&nbsp;름 :</td>
									<td><input class="inputbox01" type="text" name="rname" value="${dto.rname}"></td>
								</tr>
								<tr>
									<td class="contenttext">전화번호 :</td>
									<td><input class="inputbox01" type="text" name="rmobile" value="${dto.rmobile}"></td>
								</tr>
								<tr>
									<td class="contenttext">이 메 일 :</td>
									<td><input class="inputbox01" type="text" name="remail" value="${dto.remail}"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input class="contentbtn01"
										type="button" value="정보수정" onclick="modifyCheck()">&nbsp;
										<input class="contentbtn01" type="button" value="메인화면으로"
										onclick="script:window.location.href='index'"></td>
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