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
	<div class="container-fluid">
		<form id="frm" class="col-md-3 mx-auto" action="update" method="post" >
			<div class="mb-3">
			    <label for="title" class="form-label">ID</label>
			    <input type="text" class="form-control put" name="id" id="id" value="${member.id}" readonly="readonly" placeholder="Enter ID">
			</div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password</label>
			    <input type="password" class="form-control put pw" name="pw" value="${member.pw}" id="pw" placeholder="Enter password">
			  </div>

			<div class="mb-3">
			    <label for="title" class="form-label">Name</label>
			    <input type="text" class="form-control put" name="name" value="${member.name}" readonly="readonly" id="name" placeholder="Enter name">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Phone</label>
			    <input type="tel" class="form-control put" name="phone" value="${member.phone }" id="phone" placeholder="010-1234-5678">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Email</label>
			    <input type="email" class="form-control put" name="email" value="${member.email}" id="email" placeholder="abcd1234@naver.com">
			</div>
			<button type="submit" class="btn btn-primary" id="btn22">UPDATE</button>
		</form>	
	</div>
	
</body>
</html>