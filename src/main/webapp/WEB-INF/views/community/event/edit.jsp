<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="/inc/asset.jsp" %>
<style>

</style>

</head>
<body>
<!-- template.jsp > add.jsp > edit.jsp -->
<%@ include file="/inc/header.jsp" %>

<section class="main-section">

	<h1>Board <small>Edit</small></h1>

	<form method="POST" action="/SIST2_Travel/community/event/editok.do">
		<table class="table table-bordered">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="subject" id="subject"
						   class="form-control" required value="${dto.subject}">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea name="content" id="content" class="form-control" required>${dto.content}</textarea>
				</td>
			</tr>

		</table>

		<div class="btns">
			<button type="submit" class="btn btn-primary">수정하기</button>
			<button type="button" class="btn btn-default"
					onclick="location.href='/SIST2_Travel/community/event/list.do';">돌아가기</button>
		</div>

		<input type="hidden" name="seq" value="${dto.seq}">
	</form>


</section>

<%@ include file="/inc/footer.jsp" %>
<script>


</script>
</body>
</html>