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
			<input class="form-check-input check ch" type="checkbox" value="" id="policy1">
			<label class="form-check-label" for="policy1">
				약관 1
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check ch" type="checkbox" value="" id="policy2">
			<label class="form-check-label policy" for="policy2">
				약관 2
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check ch" type="checkbox" value="" id="policy3">
			<label class="form-check-label policy" for="policy3">
				약관 3
			</label>
		</div>
		<div class="form-check">
			<input class="form-check-input check" type="checkbox" value="" id="ad">
			<label class="form-check-label" for="ad">
				약관 4(광고)
			</label>
		</div>
		<button id="btn">회원가입</button>
<!-- 		<a href="./join" id="btn">회원가입</a> -->
	</div>
<script type="text/javascript" src="../resources/js/member.js"></script>
</body>
</html>