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
<div>
	<form action="./insert" method="post">
		<div class="mb-3">
		      <label for="title" class="form-label">Title</label>
		      <input type="text" id="title" class="form-control" name="title" placeholder="Enter Title">
   		 </div>
		 <div class="mb-3">
		      <label for="contents" class="form-label">Contents</label>
		      <input type="text" id="contents" class="form-control" name="contents" placeholder="Enter Contents">
   		 </div>
   		 <div class="mb-3">
		      <label for="writer" class="form-label">Writer</label>
		      <input type="text" id="writer" class="form-control" name="writer" placeholder="Enter Writer">
   		 </div>
		<button type="submit" class="btn btn-secondary">Insert</button>
	</form>
</div>

</body>
</html>