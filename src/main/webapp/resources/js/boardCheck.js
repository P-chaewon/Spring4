/**
 * 
 */
 
let title = document.getElementById("title");

let writer = document.getElementById("writer");


const bn1 = document.getElementById("bn1");
bn1.addEventListener("click", function(){
	alert("add");
	alert(title.getAttribute("title"));
	alert(writer.getAttribute("writer"));
});
