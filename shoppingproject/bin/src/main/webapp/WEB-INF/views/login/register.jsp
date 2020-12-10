<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
<style>
	*{
		font-size: 16px;
		font-family : Consolas,sans-serif;
		}

</style>
</head>
<body>
<div class="container-fluid">
	<form class="form-horizontal" method="post" action="/login/register">
		<div class="form-group">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<h2 align="left">회 원 가 입</h2>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon-user">아 이 디</span></label>
			<div class="col-sm-6">
			<input type="text" class="form-control" id="userId" name="userId"
			maxlength=20 placeholder="id를 입력하세요"/>
		</div>
		<div class="col-sm-2">
			<button class="btn btn-warning idCheck" type="button" id="idCheck" onclick="dupCheck();" value="N">중복확인</button> 
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon-eye-open">비 밀 번 호</span></label>
			<div class="col-sm-6">
			<input type="password" class="form-control" id="userPw" name="userPw"
			maxlength=20 placeholder="비밀번호를 입력하세요"/>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-user">이 름</span></label>
			<div class="col-sm-6">
			<input type="text" class="form-control" id="userName" name="userName"
			maxlength=20 placeholder="이름을 입력하세요"/>
		</div>
	</div>
	
	
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-user">생 년 월 일</span></label>
		<div class="col-sm-6">
		<input type="date" value="2020-11-14" min="1910-01-01" max="2020-11-14" name="userBirth"/>
		<fmt:formatDate value="${DateValue}" pattern="yy-MM-dd"/>
	</div>
</div>
<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-home">우편번호</span></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="zipcode"
			id="zipcode" readonly/>
			<input type="button" class="form-control"
			onclick="daumZipCode()" value="우편번호검색"/>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-home">주소</span></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="address01" id="address01" placeholder="주소"/>
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-home">상세주소</span></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" name="address02" id="address02" placeholder="상세주소"/>
		
		</div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-phone-alt">전 화 번 호</span></label>
			<div class="col-sm-2" id="tel1">
			<select class="form-control" name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			</select>
		</div>
			<div class="input-group col-sm-3">
				<div class="input-group-addon">-</div>
				<div><input type="text" class="form-control col-sm-1" id="tel2"name="tel2" 
					maxlength="4" placeholder="Tel">
				</div>
				<div class="input-group-addon">-</div>
				<div><input type="text" class="form-control col-sm-1" id="tel3" name="tel3" 
					maxlength="4" placeholder="Tel">
				</div>
			</div>
		</div>
		<div class="form-group">
		<label class="control-label col-sm-2"><span class="glyphicon glyphicon glyphicon glyphicon-send">이 메 일</span></label>
			<div class="col-sm-6">
			<input type="email" class="form-control" id="userEmail" name="userEmail"
			maxlength=40 placeholder="이메일을 입력하세요"/>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-4">
			<button class="btn btn-success" type="submit" id="submit">회원가입</button>
			<button class="btn btn-danger cancel" type="button">취소</button>
			
		</div>
	</div>
	

</form>

</div>

<!-- <script src="/static/js/profunction.js"></script> -->

<script>
$(document).ready(function() {
	//취소버튼을 눌렀을 경우
	
	$(".cancel").on("click",function(){
		alert("취소되었습니다.");
		location.href="/"
	});
	//회원가입 버튼을 눌렀을 경우 =>입력필드가 비어있는지 검사한다.
	$("#submit").on("click",function(){
		if($("#userId").val() == ""){
			alert("아이디를 입력하세요");
			$("#userId").focus();
			return false;
		}
		if($("#userPw").val() == ""){
			alert("비밀번호를 입력하세요");
			$("#userPw").focus();
			return false;
		}
		if($("#userName").val() == ""){
			alert("이름을 입력하세요");
			$("#userName").focus();
			return false;
		}
		if($("#userBirth").val() == ""){
			alert("생년월일을 입력하세요");
			$("#userBirth").focus();
			return false;
		}
		if($("#address01").val() == ""){
			alert("주소를 입력하세요");
			$("#address01").focus();
			return false;
		}
		if($("#address02").val() == ""){
			alert("상세주소를 입력하세요");
			$("#address02").focus();
			return false;
		}
		
		if($("#tel2").val() == ""){
			alert("전화번호를 입력하세요");
			$("#address01").focus();
			return false;
		}
		if($("#tel3").val() == ""){
			alert("전화번호를 입력하세요");
			$("#address01").focus();
			return false;
		}
		if($("#userEmail").val() == ""){
			alert("이메일을 입력하세요");
			$("#address01").focus();
			return false;
		}
		
		
	});
	
})
//아이디 중복 검사
//입력한 아이디에 해당한느 정보가 있는지 검사하고 결과값(정수)을 리턴받는다.
function dupCheck(){
	//alert("중복확인");
	if($("#userId").val() == ""){
		alert("아이디를 입력하세요");
		$("#userId").focus();
		return false;
		}
	$.ajax({
		url : "/login/idCheck",
		type : "post",
		dataType : "json",
		data : {"userId" : $("#userId").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디 입니다.");
				}else if(data == 0){
					$("#idCheck").attr("value","Y");
					alert("사용가능한 아이디 입니다.");
				}
			}
		})	
	}
</script>


<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function daumZipCode() {
	new daum.Postcode({
		oncomplete: function(data) {
			//팝업창에서 검색한 결과 중 항목을 클릭하였을 경우에 
			//실행할 코드를 이곳에 작성한다.

			//각 주소의 노출 규칙에 따라 주소를 조합한다.
			//내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로,
			//이름 참고하여 분기한다.
			var fullAddr  = '';	//최종 주소 변수
			var subAddr   = ''; //조합형 주소 변수

			//사용자가 선택한 주소의 타입에 따라서 해당 주소값을 가져온다.
			if(data.userSelectedType == 'R') { //도로명 주소를 선택한 경우
				fullAddr = data.roadAddress;
			} else { //지번 주소를 선택한 경우
				fullAddr = data.jibunAddress;
			}

			//사용자가 선택한 주소가 도로명 타입일 때 조합한다.
			if(data.userSelectedType == 'R') {
				//법정동명이 있을 경우 추가한다.
				if(data.bname != '') {
					subAddr += data.bname;
				}
				//건물명이 있을 경우에 추가한다.
				if(data.buildingName != '') {
					subAddr += (subAddr != '' ? ', ' + data.buildingName : data.buildingName);
				}
				//조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (subAddr != '' ? '(' + subAddr + ')' : '');
			}
			//우편번호와 주소정보를 행당 필드에 나타낸다.
			//5자리의 새 우편번호
			document.getElementById('zipcode').value   = data.zonecode; 
			document.getElementById('address01').value = fullAddr;
			//커서를 상세주소 입력필드로 이동시킨다.
			document.getElementById('address02').focus();
		}
	}).open();
}
</script>

</body>
</html>
</layoutTag:layout>