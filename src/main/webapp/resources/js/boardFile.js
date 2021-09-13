/**
 * boardFile.js
   최대 5개까지만 추가
 */
 
  let file = '<div class="input-group mb-3">';
 file = file + '<input type="file" class="form-control">';
 file = file + '<button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>';
 file = file + '</div>';
 
 
 
let maxAppend=1;
$("#fileAdd").click(function(){
	if(maxAppend<=5){
		$("#fileAddResult").append(file);
		maxAppend++;
	} else {
		alert('최대 5개 가능');
	}
				
})

