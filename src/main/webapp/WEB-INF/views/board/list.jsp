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
	<h1>${board} List Page</h1>
<div class="container-fluid">
	<div class="col-md-7 my-2 mx-auto">
	<!-- search form start -->
	<form action="./list" method="get">
		<div class="input-group mb-3" >
		  <select name="kind" class="form-select form-select-sm" aria-label=".form-select-sm example">
			  <option value="k1" >TITLE</option>
			  <option value="k2">CONTENTS</option>
			  <option value="k3">WRITER</option>
			</select>
		  
			<input type="text" name="search" class="form-control" aria-label="Text input with dropdown button">
			<button type="submit" class="btn btn-outline-secondary">Search</button>
		</div>
	</form>
	<!-- search form finish -->
		<table class="table table-hover">
			<tr>
				<th>Num</th><th>Title</th><th>Writer</th><th>REGDate</th><th>Hits</th>
			</tr>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td><a href="./select?num=${dto.num}">
				
				<c:catch>
					<c:forEach begin="1" end="${dto.depth}">
						--
					</c:forEach>
				</c:catch>
				
				${dto.title}</a></td>
				<td>${dto.writer }</td>
				<td>${dto.regDate}</td>
				<td>${dto.hits }</td>			
			</tr>
			</c:forEach>
		</table>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item">
					<a class="page-link" href="./list?pn=1&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<li>
					<a class="page-link" href="./list?pn=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
						<span aria-hidden="true">&lt;</span>
					</a>
				</li>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="n">
					<li class="page-item"><a class="page-link" href="./list?pn=${n}&kind=${pager.kind}&search=${pager.search}">${n}</a></li>
				</c:forEach>
				<li>
					<a class="page-link" href="./list?pn=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
						<span aria-hidden="true">&gt;</span>
					</a>
				</li>
				<li>
					<a class="page-link" href="./list?pn=${pager.totalPage }&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</ul>
		</nav>
		<c:if test="${not empty member }">
			<a href="./insert" class="btn btn-primary">Write</a>		
		</c:if>
		
		
	</div>
</div>
</body>
</html>