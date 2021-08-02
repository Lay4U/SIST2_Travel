<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myapp</title>

<%@ include file="/inc/asset.jsp"%>

<style>
.main-section .table th {
	width: 120px;
}

.main-section .table td {
	width: 280px;
	text-align: left;
}

.main-section .table tr:nth-child(4) {
	height: 300px;
}

.main-section {
	width: 800px;
	margin: 35px auto;
}
</style>

</head>
<body>
	<!-- board/view.jsp -->
	<%@ include file="/inc/header.jsp"%>

	<section class="main-section">

		<h1>
			질문게시판 <small>View</small>
		</h1>


		<table class="table table-bordered">
			<tr>
				<th>번호</th>
				<td>${dto.questionseq }</td>
				<th>이름</th>
				<td colspan="3">${dto.name }(${dto.id })</td>
			</tr>
			<tr>
				<th>날짜</th>
				<td>${dto.regdate }</td>
				<th>조회수</th>
				<td>${dto.viewcnt }</td>
				<th>추천수</th>
				<td>${dto.recommcnt }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="5">${dto.subject }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="5">${dto.content }</td>
			</tr>

		</table>

		<
		<div class="btns">

			<c:if test="${not empty id }">

				<c:if test="${dto.id == id }">
					<button type="button" class="btn btn-primary"
						onclick="location.href='/SIST2_Travel/community/question/edit.do?questionseq=${dto.questionseq}';">수정하기</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href='/SIST2_Travel/community/question/del.do?questionseq=${dto.questionseq}';">삭제하기</button>

				</c:if>
				
				<button type="button" class="btn btn-primary"
					onclick="location.href='/SIST2_Travel/community/question/add.do?reply=1&thread=${dto.thread}&depth=${dto.depth }';">답변달기</button>

			</c:if>
			
			<button type="button" class="btn btn-default"
				onclick="location.href='/SIST2_Travel/community/question/list.do?column=${column}&search=${search }';">돌아가기</button>
		</div>
		
		
		<div>
			<c:if test="${not empty id }">
				<form method="POST"
					action="/SIST2_Travel/community/question/addcomment.do">
					<table id="tblAddComment" class="table table-bordered">
						<tr>
							<td><input type="text" name="content" id="content"
								class="form-control" required placeholder="댓글을 입력하세요." /></td>
							<td><input type="submit" value="댓글쓰기"
								class="btn btn-default" /></td>
						</tr>
					</table>
					<input type="hidden" name="questionseq" value="${dto.questionseq }" />
				</form>
			</c:if>
			<table id="tblListComment" class="table table-bordered">

				<c:if test="${clist.size() ==0 }">
					<tr>
						<td colspan="2">댓글이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach items="${clist }" var="cdto">
					<tr>
						<td>${cdto.content }<span>${cdto.name }
								${cdto.regdate }</span>
						</td>
						<c:if test="${not empty id }">
							<c:if test="${cdto.id == id }">
								<td><input type="button" value="삭제하기"
									class="btn btn-default"
									onclick="location.href='/SIST2_Travel/community/question/delcomment.do?questioncommentseq=${cdto.questioncommentseq}&questionseq=${dto.questionseq }';" />
								</td>
							</c:if>
						</c:if>
					</tr>
				</c:forEach>

			</table>

		</div>
	</section>

	<%@ include file="/inc/init.jsp"%>
	<script>
		
	</script>
</body>
</html>