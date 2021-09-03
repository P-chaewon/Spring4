<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>
<h1>List Page</h1>
<div class="container-fluid">
	<div class="col-md-7 my-2 mx-auto">
		<table class="table table-hover">
			<tr>
				<th>Num</th><th>Title</th><th>Writer</th><th>REGDate</th><th>Hits</th>
			</tr>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td><a href="./select?num=${dto.num}">${dto.title}</a></td>
				<td>${dto.writer }</td>
				<td>${dto.regDate}</td>
				<td>${dto.hits }</td>			
			</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>