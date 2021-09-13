/**
 * 
 */
 

 
 
 $("#all").click(function(){
 	$(".check").prop("checked", $(this).prop("checked"));		
 });
 

$(".check").click(function(){
	let result = true;
	$(".check").each(function(v1, v2){
		if(!$(v2).prop("checked")){
			result=false;
			console.log(v1, $(v2).prop("checked"));
		//	break; each문 내에서 사용 불가
		}
	});
	$("#all").prop("checked", result);
});

$("#btn").click(function(){
	if($("#all").prop("checked")){
		location.href="join";
	} else {
		alert('약관동의하세요');
	}
});

