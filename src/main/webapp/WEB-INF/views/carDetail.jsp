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
<script>
	function deleteConfirmation(cindex) {
		var result = confirm("등록된 차량정보를 삭제하시겠습니까?"); // 알림창 띄우기
	
		if (result) {	// 'Yes' 버튼을 클릭한 경우
		alert("등록된 차량정보가 삭제되었습니다.");
		document.cardelete.submit();
		}
	}
	
	function updateConfirmation() {

		 if (document.carupdate.updatecname.value.length == 0){
			 alert("차량명칭을 입력해주세요");
			 return false;
		 }		 
		 if (document.carupdate.updateccolor.value.length == 0){
			 alert("차량색상을 입력해주세요");
			 return false;
		 }
		 document.carupdate.submit();
	}
	
  document.getElementById("myForm").addEventListener("submit", function(event) {
    event.preventDefault(); // 폼 제출 이벤트의 기본 동작을 막음

    var textareaValue = document.getElementById("myTextarea").value;

    // 파라미터 값을 동적으로 설정
    var formData = new FormData();
    formData.append("cnote", textareaValue);

    // AJAX 요청 보내기
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/carListUpdate", true);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
          console.log(xhr.responseText);
          // 요청이 성공적으로 처리됨
        } else {
          console.error(xhr.status);
          // 요청이 실패했거나 오류가 발생함
        }
      }
    };
    xhr.send(formData);
  });	  
</script>
<body>
<%@ include file="include/adminheader.jsp" %>
	<div class="topimg">
		<img src="/resources/img/adminpage1.jpg">
	</div>
	<div class="l-ct">
		<div id="app">
			<h1 class="goodsSectionTitle l-ct">차량정보</h1>
			<section class="vehicleSection l-ct">
				<div class="vehicleTable">
					<div class="vehicleThum vehicleCell">
						<img class="carimg" src="${cdto.cimg}">
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
								<span class="vehicleSubjectContent">${cdto.cclass}&nbsp;&nbsp;|&nbsp;&nbsp;${cdto.coil}
									&nbsp;&nbsp;|&nbsp;&nbsp;${cdto.ctype}&nbsp;&nbsp;|&nbsp;&nbsp;${cdto.ccolor}</span>
							</li>
							<li>
								<span class="vehicleSubject">비고</span>
								<span class="vehicleSubjectContent">${cdto.cnote}<br>
								<p style="color: red; font-weight: 600; font-size: 16px;">만26세이상 운전경력 1년</p></span>
							</li>
							<li>
								<span class="vehicleSubject"></span>
								<span class="vehicleSubjectContent">💥 차량색상은 이미지와 다를 수 있습니다</span>
							</li>
						</ul>
					</div>
					<div class="buttonformbox">
						<form action="carListDelete" name="cardelete">
							<input type="hidden" name="cindex" value="${cdto.cindex}">
							<input type="button" value="삭제" class="buttons" id="delete" name="cardeleteok" onclick="deleteConfirmation()">
						</form>
					</div>
				</div>
			</section>
			<h1 class="goodsSectionTitle l-ct"><span>차량</span>정보 수정하기</h1>
			<form action="carListUpdate" name="carupdate" id="myForm" method="post">
				<section class="vehicleSection l-ct" style="margin-bottom: 80px;">
					<div class="vehicleTable">
						<div class="vehicleThum vehicleCell">
							<img class="carimg" src="${cdto.cimg}">
							<input type="file" id="imageInput" accept="image/*">
						</div>
						<div class="vehicleInfo vehicleCell">
							<ul class="vehicleContent">
								<li>
									<span class="vehicleSubject">브랜드</span>
									<select name="cbrend">
										<option class="optionlist" value="${cdto.cbrend}" selected>${cdto.cbrend}&nbsp;(현재값)</option>
										<c:forEach items="${brendlist}" var="dto">
										<option class="optionlist" value="${dto.cbrend}">${dto.cbrend}</option>
										</c:forEach>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량등급</span>
									<select name="cclass">
										<option class="optionlist" value="${cdto.cclass}" selected>${cdto.cclass}&nbsp;(현재값)</option>
										<option class="optionlist" value="경차">경차</option>
										<option class="optionlist" value="준중형">소형/준중형</option>
										<option class="optionlist" value="중형">중형</option>
										<option class="optionlist" value="고급">고급</option>
										<option class="optionlist" value="RV">RV</option>
										<option class="optionlist" value="승합">승합</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량명칭</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" type="text" name="updatecname" value="${cdto.cname}">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량색상</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" type="text" name="updateccolor" value="${cdto.ccolor}">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량유종</span>									
									<select name="coil">
										<option class="optionlist" value="${cdto.coil}" selected>${cdto.coil}&nbsp;(현재값)</option>
										<option class="optionlist" value="가솔린">가솔린</option>
										<option class="optionlist" value="경유">경유</option>
										<option class="optionlist" value="전기차">전기차</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량기어타입</span>
									<select name="ctype">
										<option class="optionlist" value="${cdto.ctype}" selected>${cdto.ctype}&nbsp;(현재값)</option>
										<option class="optionlist" value="자동">자동</option>
										<option class="optionlist" value="수동">수동</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject" id="carprice">대여비용/일</span>
									<span class="vehicleSubjectContent">
										<textarea rows="5" cols="70" id="myTextarea" name="cnote">${cdto.cnote}</textarea>
									</span>
								</li>
							</ul>
						</div>
						<div class="buttonformbox">
							<input type="hidden" name="cindex" value="${cdto.cindex}">
							<input type="button" value="수정" class="buttons" id="update" name="carupdateok" onclick="updateConfirmation()">
						</div>
					</div>
				</section>				
			</form>			
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>