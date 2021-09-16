<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>

</style>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Join Page</h1>
	<div class="container-fluid">
		<form id="frm" class="col-md-3 mx-auto" action="join" method="post" enctype="multipart/form-data">
			<div class="mb-3">
			    <label for="title" class="form-label">ID</label>
			    <input type="text" class="form-control put" name="id" id="id" placeholder="Enter ID">
			    <button type="button" id="idCheck" class="btn btn-primary">ID 중복확인</button>
			    <div id=idResult"></div>
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password</label>
			    <input type="password" class="form-control put pw" name="pw" id="pw" placeholder="Enter password">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Password 확인</label>
			    <input type="password" class="form-control put pw" name="pwCheck" id="pwCheck" placeholder="Enter password">
			    <div id="pwResult"></div>
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Name</label>
			    <input type="text" class="form-control put" name="name" id="name" placeholder="Enter name">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Phone</label>
			    <input type="tel" class="form-control put" name="phone" id="phone" placeholder="010-1234-5678">
			  </div>
			<div class="mb-3">
			    <label for="title" class="form-label">Email</label>
			    <input type="email" class="form-control put" name="email" id="email" placeholder="abcd1234@naver.com">
			</div>
			<div class="mb-3" id="f">
			    <label for="photo" class="form-label">Photo</label>
			    <input type="file" class="form-control put" name="photo" id="photo">
			</div>
			<!-- input file 추가 영역 -->
			<div id="addResult">
			
			</div>
			
			<button type="submit" class="btn btn-primary" id="btn">Join</button>
		</form>	

	</div>
<!-- 	<script type="text/javascript" src="../resources/js/join.js"></script>
	<script type="text/javascript" src="../resources/js/file.js"></script> -->
</body>
</html>