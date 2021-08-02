<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="/inc/asset.jsp"%>
<style>
.main-section {
	width: 800px;
	margin: 35px auto;
	padding-bottom: 300px;
}
</style>

</head>
<body>
	<%@ include file="/inc/header.jsp"%>
	<!--  -->
	<section class="main-section">
		<h1>
			내 예약내역 <small>List</small>
		</h1>

		<table class="table table-bordered">
			<tr>
				<th>예약 번호</th>
				<th>투어 이름</th>
				<th>사용처</th>
				<th>사용기간</th>
				<th>투어 가격</th>
				<th>취소여부</th>
				<th>예약자 이름</th>
				<th>예약 취소</th>
			</tr>

			<c:if test="${list.size() ==0 }">
				<tr>
					<td colspan="8">게시물이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty id }">
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.reservationseq}</td>
						<td><a
							href="/SIST2_Travel/mypage/revview.do?tourseq=${dto.tourseq }">${dto.tourname}</a></td>
						<td>${dto.use}</td>
						<td>${dto.validdate}</td>
						<td>${dto.tourprice}</td>
						<td>${dto.iscancel }</td>
						<td>${dto.membername }</td>
						<td>
							<form method="get"
								action="/SIST2_Travel/mypage/revcancel.do?reservationseq=${dto.reservationseq}">
								<button type="submit" id="btnCancel">예약 취소하기</button>
								<input type="hidden" name="reservationseq"
									value="${dto.reservationseq }" />
							</form>

						</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>

	</section>



	<%@ include file="/inc/init.jsp"%>
	<%@ include file="/inc/footer.jsp"%>
	<script>
		$("#btnCancel").click(function() {
			if (confirm("정말 예약을 취소하시겠습니까?")) {
				alert('취소되었습니다.');
			}
		});
	</script>
</body>
</html>