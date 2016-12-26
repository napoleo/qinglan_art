window.onload=init;
function init(){
	var x=document.getElementsByClassName("courses");
	$('course-count').innerHTML=x.length;	
}
function $(id){
	return document.getElementById(id);
}
