<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
<style type="text/css">
	.more {
		cursor: pointer;
	}
</style>
</head>
<body>
<c:import url="../temp/boot_nav.jsp"></c:import>
	<div class="container-fluid col-md-8">
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
		<hr>
		<div id="commentList" data-board-num="${dto.num}">
		
		</div>
		<c:if test="${not empty member}">
			<div>
				<div class="mb-3">
			    	<label for="writer" class="form-label">Writer</label>
			    	<input type="text" class="form-control" name="writer" id="writer" value="${member.id }" placeholder="Enter Writer" readonly="readonly">
			  	</div>
			  
				<div class="mb-3">
					<label for="contents" class="form-label">Contents</label>
	  				<textarea class="form-control" cols=""  name="contents" id="contents" rows="2"></textarea>
			  	</div>
			 	<!-- button 추가 -->
			    <button type="button" class="btn btn-primary" id="comment">WRITE</button>
			
			</div>
		</c:if>
		

		
		<hr>
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
<script type="text/javascript">
	getCommentList(1);
	let content = '';
	$("#commentList").on("click", ".update", function () {
		console.log('update');
		let num=$(this).attr("data-comment-update");
		content = $("#content"+num).text().trim();
		$("#content"+num).children().css('display', 'none');
		let ta='<textarea class="form-control" cols=""  name="contents" id="con" rows="">'
		ta = ta +content+'</textarea>'
		ta = ta + '<button class="btn btn-primary up">update</button>'
		ta = ta + '<button class="btn btn-danger cancel">cancel</button>'
		$("#content"+num).append(ta);
	});
	
	$("#commentList").on("click", ".cancel", function () {
		console.log(content);
		$(this).parent().children('div').css('display', 'block');
		$(this).parent().children('textarea').remove();
		$(this).parent().children('button').remove();
	});
	
	$("#commentList").on("click", ".up", function () {
		let contents = $(this).prev().val();
		let commentNum = $(this).parent().prev().text().trim();
		console.log(commentNum);
		$.ajax({
			type : "POST",
			url : "./commentUpdate",
			data : {
				commentNum:commentNum,
				contents : contents
			},
			success : function (result) {
				result = result.trim();
				if(result>0){
					alert("update 성공");
					getCommentList(1);
/* 					selector.parent().children('div').text(contents);
					selector.parent().children('div').css('display', 'block');
					selector.parent().children('textarea').remove();
					selector.parent().children('button').remove(); */
				} else{
					alert("update 실패");
				}
				
			},
			error : function (xhr, status, error) {
				alert("update 실패");
			}
		});
	});

	
	
	//del click event
	$("#commentList").on("click", ".del", function () {
		let commentNum=$(this).attr("data-comment-del");
		console.log(commentNum);
		//url ./commentDel
		$.ajax({
			type : "POST",
			url : "./commentDel",
			data : {
				commentNum:commentNum
			},
			success : function (result) {
				result = result.trim();
				if(result>0){
					alert("삭제 성공");
					getCommentList(1);	
				} else{
					alert("삭제 실패");
				}
				
			},
			error : function (xhr, status, error) {
				alert("삭제 실패");
			}
		});
		
	});

	$("#commentList").on("click", ".more", function () {
		//data-comment-pn의 값을 출력
		let pn=$(this).attr("data-comment-pn");
		getCommentList(pn);
	});
	


	
	function getCommentList(pageNumber) {
		let num=$("#commentList").attr("data-board-num");
		$.ajax({
			type : "GET",
			url : "./getCommentList",
			data : {
				num:num, 
				pn : pageNumber	
			},
			success : function (result) {
		//		result = result.trim();
				console.log(result);
				$("#commentList").html(result);
			},
			error : function (xhr, status, error) {
				console.log(error);				
			}
		});
	}
	
	$('#comment').click(function () {
		//작성자, 내용을 콘솔에 출력
		let writer = $('#writer').val();
		let contents = $('#contents').val();
		$.post('./comment', {num:'${dto.num}', writer:writer, contents:contents}, function (result) {
			alert(result);
			console.log(result);
			
			$('#contents').val('');
			getCommentList();
		});
	});
	
</script>
</body>
</html>