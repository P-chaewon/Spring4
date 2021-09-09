<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Join Page</h1>
	<div class="container-fluid">
		<form class="col-md-6 mx-auto" action="#" method="post" >
			<div class="mb-3">
			    <label for="title" class="form-label">ID</label>
			    <input type="text" class="form-control" name="id" id="id" placeholder="Enter ID">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password</label>
			    <input type="text" class="form-control" name="pw" id="pw" placeholder="Enter password">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password 확인</label>
			    <input type="text" class="form-control" name="pw" id="pw" placeholder="Enter password">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Name</label>
			    <input type="text" class="form-control" name="name" id="name" placeholder="Enter name">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Phone</label>
			    <input type="text" class="form-control" name="phone" id="phone" placeholder="010-1234-5678">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Email</label>
			    <input type="text" class="form-control" name="email" id="email" placeholder="abcd1234@naver.com">
			  </div>
		</form>	
	</div>
</body>
</html>