<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<h2>자유게시판</h2>
	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="b" items="${list}">
			<tr>
				<td>${b.no}</td>
				<td><a href="<c:url value='/board/LBoard/detail.do?no='/>${b.no}" >${b.title}</a></td>
				<td>${b.writer}</td>
				<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd" /></td>
				<td>${b.viewCnt}</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="4"></td>
			<td><a href="<c:url value='/board/LBoard/writeForm.do'/>">글쓰기</a></td>
		</tr>
	</table>
</body>
</html>