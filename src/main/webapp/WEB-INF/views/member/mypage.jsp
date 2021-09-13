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
	<h1>My Page</h1>
	<h1>${member.id}</h1>
	<h1>${member.name }</h1>
	<h1>${member.email }</h1>
	<h1>${member.phone }</h1>
	<a href="./update?id=${member.id}" class="btn btn-primary">정보수정</a>
	<a href="#" class="btn btn-danger" id="del">회원탈퇴</a>
	
	<script type="text/javascript">
		const del = document.getElementById("del");
		del.addEventListener('click', function(){
			let result = confirm('탈퇴하시겠습니까?');
			if(result){
				location.href="./delete";
			}
		});

		
	</script>
</body>

</html>