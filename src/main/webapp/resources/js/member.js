/**
 * 
 */
 

 const check = document.getElementsByClassName('check');
 const all = document.getElementById('all');
 const btn = document.getElementById('btn');
 
 btn.addEventListener('click', function(){
	if(all.checked){
		location.href="./join"
	} else {
		alert('필수 약관 동의');
	}
})
 
all.addEventListener('click', function(){
	for(let ch of check){
		ch.checked=all.checked;
	}
})

for(let ch of check){
	ch.addEventListener('click', function(){
		let result = true;
		for(let c of check){
			if(!c.checked){
				result = false;
				break;
			}
		}
		all.checked=result;
	})
}




/* for(ch of check){
	ch.addEventListener('click', function(){
		c1.checked=true;
	})
}*/

/*all.addEventListener('click', function(){
	if(all.checked){
		for(c of c1){
			c.checked=true;
		}
	}
})
*/
/*
for(c of c1){
	c.addEventListener('click', function(){
		alert(c.checked);
	})
}*/
