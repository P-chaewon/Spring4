/**
 * 
 */
 
 const put = document.getElementsByClassName('put');
 const pws = document.getElementsByClassName('pw');
 const btn = document.getElementById('btn');
 const frm = document.getElementById('frm');
 const id = document.getElementById('id');
 const idResult = document.getElementById('idResult');
 const pwResult = document.getElementById('pwResult');
 const pwCheck = document.getElementById('pwCheck');
 const idCheck = document.getElementById('idCheck');
 
 idCheck.addEventListener('click', function(){
	open("./idCheck?id="+id.value, "", "width=400, height=200, top=200, left=300");
});



/*id.addEventListener('change', function(){

	alert('change');	
});*/

/*id.addEventListener('focus', function(){
	id.value="";
})*/


btn.addEventListener('click',function(){
	//비어있는것들 검사
	let ce = checkEmpty(put);
	//두개 값이 같은지 검사
	let ce2 = checkEqual(pws[0], pws[1]);
	//글자수 검사
	let cl = checkLength();
	
	if(ce&&ce2&&cl){
		frm.submit();
	} else {
		alert("필수 입력");
	}
	
})

 
function checkLength(){
	let l = pws[0].value.trim().length;
	if(l>6){
		return true;
	} else {
		return false;
	}
}

function checkEmpty(puts){
	let result = true;
	for(r of puts){
		if(r.value.trim()==""){
			result = false;
			break;
		}
	}
	return result;
}

function checkEqual(check1, check2){
	return check1.value == check2.value;
}