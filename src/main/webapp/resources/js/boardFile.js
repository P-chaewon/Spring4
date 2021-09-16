/**
 * boardFile.js
   최대 5개까지만 추가
 */
   let file = '<div class="input-group mb-3">';
 file = file + '<input type="file" name="files" class="form-control">';
 file = file + '<button class="btn btn-outline-secondary del" type="button">X</button>';
 file = file + '</div>';
 
let maxAppend=1;
//let index=0;
$("#fileAdd").click(function(){
/*	index++;
  let file = '<div class="input-group mb-3" id="del'+index+'">';
 file = file + '<input type="file" class="form-control">';
 file = file + '<button data-btn-id="'+index+'" class="btn btn-outline-secondary del" type="button">X</button>';
 file = file + '</div>';*/
	if(maxAppend<=5){
		$("#fileAddResult").append(file);
		maxAppend++;
	} else {
		alert('최대 5개 가능');
	}
				
})

$("#fileAddResult").on('click', '.del', function(){
/*	let num=$(this).attr('data-btn-id');
	$("#del"+num).remove();*/
	$(this).parent().remove();
	maxAppend--;
});
/*$(".del").click(function(){
	alert('test');
})*/