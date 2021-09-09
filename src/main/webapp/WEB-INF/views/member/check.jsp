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
	<h1>Check Page</h1>
	
	<div class="container-fluid">
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="all">
			<label class="form-check-label" for="all">
				Check ALL
			</label>
		</div>	
		<div class="form-check" >
			<input class="form-check-input check" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				약관 1
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				약관 2
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				약관 3
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">
				약관 4(광고)
			</label>
		</div>
		<button id="btn">회원가입</button>
<!-- 		<a href="./join" id="btn">회원가입</a> -->
	</div>
<script type="text/javascript" src="../resources/js/member.js"></script>
</body>
</html>