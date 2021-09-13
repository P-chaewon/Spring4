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
	<h1>Login Page</h1>
	<div class="container-fluid">
		<form id="frm" class="col-md-3 mx-auto" action="login" method="post" >
			<div class="mb-3">
			    <label for="title" class="form-label">ID</label>
			    <input type="text" class="form-control put" name="id" id="id" placeholder="Enter ID">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password</label>
			    <input type="password" class="form-control put pw" name="pw" id="pw" placeholder="Enter password">
			 </div>
			 <button type="submit" class="btn btn-primary" id="btn">Login</button>
		</form>
	</div>
</body>
</html>