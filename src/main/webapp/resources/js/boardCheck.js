/**
 * 
 */
 
let title = document.getElementById("title");

let writer = document.getElementById("writer");


const bn1 = document.getElementById("bn1");
bn1.addEventListener("click", function(){
	const title = document.getElementById("title");
	const writer = document.getElementById("writer");
	const frm = document.getElementById("frm");
	const t_1 = document.getElementById("t_1");
	const w_1 = document.getElementById("w_1");
	t_1.innerHTML="";
	w_1.innerHTML="";
	
	let t = title.value;
	let w = writer.value;
	
	let check = true;
	if(t == ""){
		check=false;
		t_1.innerHTML = "필수 입력 사항입니다";
	}
	if(w == "") {
		check = false;
		w_1.innerHTML="필수 입력 사항입니다";
	}
	
	if(check){
		frm.submit();
	} else {
		alert('필수입력...');
	}
	
	
/*	if(t != "" && w != ""){
		alert(true);
	} else {
		alert(false);
	}*/
	
});
