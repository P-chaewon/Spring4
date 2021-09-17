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
	<div class="container-fluid">
		<h3>NUM : ${dto.num}</h3>
		<h3>Title : ${dto.title}</h3>
		
		<div>
			${dto.contents}
		</div>
		
		<h3>Writer : ${dto.writer}</h3>
		<h3>DATE : ${dto.regDate}</h3>
		<h3>HITS : ${dto.hits}</h3>
		<c:forEach items="${dto.files}" var="files">
			<div>
				<a href="./down?fileName=${files.fileName}">${files.oriName }</a>
			</div>		
		</c:forEach>
	</div>
	
	
	<div class="mb3 ml-0">
		<c:if test="${not empty member and dto.writer eq member.id}">
			<a class="btn btn-danger" href="./delete?num=${dto.num}">Delete</a>	
			<a class="btn btn-success" href="./update?num=${dto.num}">Update</a>
			<c:if test="${board ne 'notice'}">
				<a class="btn btn-light" href="./reply?num=${dto.num}">REPLY</a>
			</c:if>
			
		</c:if>
	</div>	

</body>
</html>