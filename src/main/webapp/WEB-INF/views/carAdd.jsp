<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주현대렌트카</title>
<link rel="stylesheet" type="text/css" href="/resources/css/carAdd.css">
</head>
<script>
	
	function addConfirmation() {
	
		if (document.caradd.cbrend.value == 0) {
			alert("차량브랜드를 선택해주세요");
			return false;
		}
		if (document.caradd.cclass.value == 0) {
			alert("차량등급을 선택해주세요");
			return false;
		}
		if (document.caradd.addcname.value.length == 0){
			alert("차량명칭을 입력해주세요");
			return false;
		}
		if (document.caradd.addccolor.value.length == 0){
			alert("차량색상을 입력해주세요");
			return false;
		}
		if (document.caradd.coil.value == 0) {
			alert("차량유종을 선택해주세요");
			return false;
		}
		if (document.caradd.pricename.value.length == 0){
			alert("대여료를 입력해주세요");
			return false;
		}
	  	if (document.caradd.imageUrlInput.value.length == 0) {
			alert("차량이미지를 등록해주세요");
			return false;
		}		 
		var result = confirm("차량정보를 등록하시겠습니까?"); // 알림창 띄우기
		
		if (result) {	// 'Yes' 버튼을 클릭한 경우
			alert("차량정보가 등록되었습니다.");
			document.caradd.submit();
		}
	}
	
	function validateNumericInput(input) {
		
	    input.value = input.value.replace(/[^0-9]/g, "");
	}	

</script>
<script>
  document.getElementById("fileInput").addEventListener("change", function(event) {
    var input = event.target;
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        var previewImage = document.getElementById("previewImage");
        previewImage.src = e.target.result;
      };

      reader.readAsDataURL(input.files[0]);
    }
  });
</script>
<script>
  function displayImage() {
	  
  	if (document.caradd.imageUrlInput.value.length == 0) {
		alert("이미지 URL를 입력해주세요");
		return false;
	}
    var imageUrl = document.getElementById("imageUrlInput").value;
    var imagePreview = document.getElementById("previewImage");
    imagePreview.src = imageUrl;
  }
</script>
<body>
<%@ include file="include/adminheader.jsp" %>
	<div class="topimg">
		<img src="/resources/img/adminpage1.jpg">
	</div>
	<div class="l-ct">
		<div id="app">
			<h1 class="goodsSectionTitle l-ct">차량등록</h1>
			<form action="carADD" name="caradd" id="myForm" method="post">
				<section class="vehicleSection l-ct" style="margin-bottom: 80px;">
					<div class="vehicleTable">
						<div class="vehicleThum vehicleCell" id="addcarimg">
							<img class="carimg" id="previewImage" src="/resources/img/caradd.png" style="max-width: 420px; max-height: 380px;"><br><br>
							<input class="inputlabel" type="button" onclick="displayImage()" value="이미지 등록">
							<input class="inputtext" type="text" id="imageUrlInput" name="addcimg" placeholder="이미지 URL을 입력하세요">
						</div>
						<div class="vehicleInfo vehicleCell">
							<ul class="vehicleContent">
								<li>
									<span class="vehicleSubject">브랜드</span>
									<select name="cbrend">
										<option class="optionlist" value="0" selected disabled>==선택==</option>
										<option class="optionlist" value="KIA">KIA</option>
										<option class="optionlist" value="현대">현대</option>
										<option class="optionlist" value="쉐보레">쉐보레</option>
										<option class="optionlist" value="쌍용">쌍용</option>
										<option class="optionlist" value="르노삼성">르노삼성</option>
										<option class="optionlist" value="제네시스">제네시스</option>
										<option class="optionlist" value="수입">수입</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량등급</span>
									<select name="cclass">
										<option class="optionlist" value="0" selected disabled>==선택==</option>
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
										<input class="carnameupdate" type="text" name="addcname" value="${cdto.cname}">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량색상</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" type="text" name="addccolor" value="${cdto.ccolor}">
									</span>
								</li>
								<li>
									<span class="vehicleSubject">차량유종</span>									
									<select name="coil">
										<option class="optionlist" value="0" selected disabled>==선택==</option>
										<option class="optionlist" value="가솔린">가솔린</option>
										<option class="optionlist" value="경유">경유</option>
										<option class="optionlist" value="전기차">전기차</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">차량기어타입</span>
									<select name="ctype">
										<option class="optionlist" value="none" selected disabled>==선택==</option>
										<option class="optionlist" value="자동">자동</option>
										<option class="optionlist" value="수동">수동</option>
									</select>
								</li>
								<li>
									<span class="vehicleSubject">대여료/일</span>
									<span class="vehicleSubjectContent">
										<input class="carnameupdate" id="numericInput" type="text" name="pricename" 
											value="${cdto.price}" style="color: red;" oninput="validateNumericInput(this)">
										<label>※숫자만 입력가능합니다.</label>
									</span>
								</li>
								<li>
									<span class="vehicleSubject" id="carprice">비고</span>
									<span class="vehicleSubjectContent">
										<textarea rows="5" cols="65" id="myTextarea" name="cnote">${cdto.cnote}</textarea>
									</span>
								</li>
							</ul>
						</div>
						<div class="buttonformbox">
							<input type="button" value="등록" class="buttons" id="update" name="carupdateok" onclick="addConfirmation()">
						</div>
					</div>
				</section>				
			</form>			
		</div>
	</div>
<%@ include file="include/footer.jsp" %>
</body>
</html>