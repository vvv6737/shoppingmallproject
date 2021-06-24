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
<title>게시글 작성</title>
</head>
<body>

<div class="container">
	<h2 align="left">게 시 글 작 성</h2>
	<form class="form-horizontal" action="/board/insertProc" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="subject">제 목</label>
			<input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요"/>
		</div>
		
		<c:if test="${member != null}">
			<div class="form-group">
				<label for="writer">작 성 자</label>
				 <input type="text" class="form-control" id="writer" name="writer" value="${member.userId}"/>
			</div>
		</c:if> 
			
			<c:if test="${member == null}">
			<div class="form-group">
				<label for="writer">작 성 자</label>
				 <input type="text" class="form-control" id="writer" name="writer" placeholder="작성자를 입력하세요"/>
			</div>
		</c:if>
		
		<div class="form-group">
			<label for="content">내 용</label>
			<textarea rows="4" cols="100" class="form-control" id="content" name="content" placeholder="내용을 입력하세요"></textarea>
			<br>
			<button type="submit" class="btn btn-primary">등 록</button>
			
		</div>
	</form>
</div>

</body>
</html>
</layoutTag:layout>