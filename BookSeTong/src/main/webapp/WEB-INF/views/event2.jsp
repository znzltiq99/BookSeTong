<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

#title {
	float: left;
	margin: 10px 10px 10px 10px;
}

#menu {
	font: bold 15px verdana;
	float: left;
	border-bottom: 1px solid silver;
}

#menu li {
	display: inline;
}

#menu li a {
	float: left;
	color: black;
	text-decoration: none;
	padding: 20px 25px;
	background-color: whitesmoke;
}

#menu li a:hover {
	color: teal;
}

#hr {
	clear: left;
	margin: 10px 10px;
}


div{display:inline-block;}

.pic{width:160px; height:230px;}
.wrapDiv{position:absolute; top:200px; left:230px; width:855px;}

.wrapDiv img{width:135px; height:207px; cursor:pointer;}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">

var fnum=0;
var snum=0;
var count=5;
var chch=0;
var onclick1=0;
var onclick2=0;
var sucessCnt=0;

function hideMessage(){}

function insertEventPoint(point){
  
	ff = document.getElementById("f");
	ff.action="insertCardPoint.bir?eb_point="+point;
	ff.submit();	
}

function ch(val,this2){
	
	if(chch==0){
		alert("게임시작 버튼을 눌러주세요~");
		return;
	}
	
	if(count==0){
		object1 = document.getElementById(this2.id);
			fnum=val;
			count=1;
			this2.src="resources/img/"+this2.value;
		}else{
			
			this2.src="resources/img/"+this2.value;
			snum=val;
			count=0;
			onclick2++;
			if(fnum==snum){
			    sucessCnt++;
			    }else{
			    window.setTimeout(function(){
				object1.src="resources/img/card_img.png";
				this2.src="resources/img/card_img.png";},500);
			}
		}	
	if(onclick2==5){
		alert("성공한 갯수는 "+sucessCnt+"입니다~");
		alert(sucessCnt*10+" 북클립 적립!!");
		insertEventPoint(sucessCnt*10);
		return;
	}
}

function imgArr(){
	chch=1;
	if(onclick1==1){
		alert("기회는 한번뿐~ 내일 다시 도전하세요(하트)");
		return;
	}
	count=0;
	var arr = new Array();
	var arr2 = new Array();
	var rvalu = Math.floor(Math.random()*4)+1; 
		
		arr[0]="card_1.png";
		arr[1]="card_2.png";
		arr[2]="card_1.png";
		arr[3]="card_3.png";
		arr[4]="card_4.png";
		arr[5]="card_4.png";
		arr[6]="card_5.png";
		arr[7]="card_2.png";
		arr[8]="card_5.png";
		arr[9]="card_3.png";
	
		
		for(var i=0;i<10;i++){
			if(i+rvalu>=10){
			    var ii =(i+rvalu)-9;
				ii = ii-1;
				arr2[i]=arr[ii];
			}else{
				arr2[i]=arr[i+rvalu];
			}
		}
	
		cd1 = document.getElementById("cd1");
		cd2 = document.getElementById("cd2");
		cd3 = document.getElementById("cd3");
		cd4 = document.getElementById("cd4");
		cd5 = document.getElementById("cd5");
		cd6 = document.getElementById("cd6");
		cd7 = document.getElementById("cd7");
		cd8 = document.getElementById("cd8");
		cd9 = document.getElementById("cd9");
		cd10 = document.getElementById("cd10");
		

		window.setTimeout(function(){
			cd1.src="resources/img/"+arr2[0];
			cd1.value=arr2[0];
			cd2.src="resources/img/"+arr2[1];
			cd2.value=arr2[1];
			cd3.src="resources/img/"+arr2[2];
			cd3.value=arr2[2];
			cd4.src="resources/img/"+arr2[3];
			cd4.value=arr2[3];
			cd5.src="resources/img/"+arr2[4];
			cd5.value=arr2[4];
			cd6.src="resources/img/"+arr2[5];
			cd6.value=arr2[5];
			cd7.src="resources/img/"+arr2[6];
			cd7.value=arr2[6];
			cd8.src="resources/img/"+arr2[7];
			cd8.value=arr2[7];
			cd9.src="resources/img/"+arr2[8];
			cd9.value=arr2[8];
			cd10.src="resources/img/"+arr2[9];
			cd10.value=arr2[9];},500);
		
		window.setTimeout(function(){
			cd1.src="resources/img/card_img.png";
			cd2.src="resources/img/card_img.png";
			cd3.src="resources/img/card_img.png";
			cd4.src="resources/img/card_img.png";
			cd5.src="resources/img/card_img.png";
			cd6.src="resources/img/card_img.png";
			cd7.src="resources/img/card_img.png";
			cd8.src="resources/img/card_img.png";
			cd9.src="resources/img/card_img.png";
			cd10.src="resources/img/card_img.png";},1500);
		
		onclick1=1;
}

</script>
</head>
<body >
			
<span id="title">A Big Title</span>

	<ul id="menu">
		<li><a href="home.jsp">홈</a>
		<li><a href="recommend.jsp">책추천</a>
		<li><a href="read.jsp">내서재</a>
		<li><a href="ebook.jsp">E-book </a>
		<li><a href="event1.jsp">이벤트</a>
	</ul>

	<div id="title">Search</div>
	<input style="" value="검색" id="title"></input>
	<hr id="hr">
	<font>1.하루에 한번만~</font><br>
	<font>2.카드 뒤집는 기회는 5번!!</font>
	<div class="wrapDiv">
	
	<input type="button" value="게임시작" onclick="imgArr()"><br>
	
	<img id="cd1" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
	<img id="cd2" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
	<img id="cd3" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
	<img id="cd4" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
	<img id="cd5" src="resources/img/card_img.png" onclick="ch(this.value,this)"/><br>
    <img id="cd6" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
    <img id="cd7" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
    <img id="cd8" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
    <img id="cd9" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
    <img id="cd10" src="resources/img/card_img.png" onclick="ch(this.value,this)"/>
	</div>
	
<form id="f" name="f" method="post">
</form>
	
</body>
</html>


