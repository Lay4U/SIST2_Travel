<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>TP</title>

   <%@ include file="/inc/asset.jsp" %>

   <style>
   
   	.main-section { padding: 100px; }

   </style>

</head>
<body>
<!-- del.jsp -->
<%@ include file="/inc/header.jsp" %>

<section class="main-section">

		<h1>건의게시판<small>게시글 삭제</small></h1>
		
		<form method="POST" action="/SIST2_Travel/community/suggest/delok.do">		
			<table class="table table-bordered">
				<tr>
					<th>번호</th>
					<td>${suggestSeq}번 게시물을 삭제합니다.</td>
				</tr>
			</table>
			
			<div class="btns">
				<button type="submit" class="btn btn-primary">삭제하기</button>
				<button type="button" class="btn btn-default"
					onclick="location.href='/SIST2_Travel/community/suggest/view.do?suggestSeq=${suggestSeq}';">돌아가기</button>
			</div>			
			<input type="hidden" name="suggestSeq" value="${suggestSeq}">
		</form>

</section>


<%@ include file="/inc/init.jsp" %>
<%@ include file="/inc/footer.jsp" %>
<script>

</script>
</body>
</html>















