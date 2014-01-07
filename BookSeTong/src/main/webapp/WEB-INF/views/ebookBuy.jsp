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
	#banner{
		position:absolute;
		border:4px solid black;
		width:850px;
		height:100px;
		top:100px;
		left:230px;
		text-align:center;
	}
	
.pic{width:160px; height:230px; }
div{display:inline-block;}

.eventdiv1{position:absolute; top:220px; height:60px; left:230px; width:855px; cursor:pointer;
border:1px red dotted}
.eventdiv2{position:absolute; top:300px; height:60px; left:230px; width:855px; cursor:pointer;
border:1px green dotted}
.fixTable{ width:855px;}
table td{border:1px red solid; text-align:center;}
.wrapDiv img{cursor:pointer;}
.pic{width:160px; height:230px;}
.wrapDiv{position:absolute; top:370px; left:230px; width:855px;}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">

function ebookBuyOk(email,point,bnum,title,eb_point){
	
	if(point>= 0){
		var flag = confirm("정말 구매하시겠습니까?");
		
		if(flag==true){
			
		    ff = document.getElementById("f");
		    document.getElementById("title33").value = title;
		  
			ff.action="updateBmoney.bir?email="+email+"&point="+point+"&bnum="+bnum+"&eb_point="+eb_point;
			
			ff.submit();
		}else{
			ff = document.getElementById("f");
			ff.action="goEbook.bir"
			ff.submit();
		}
		
	}else{
			alert("북클립이 부족합니다.");
			ff = document.getElementById("f");
			ff.action="goEbook.bir"
			ff.submit();
		
	}
}

function cancle(){
	ff = document.getElementById("f");
	ff.action="goEbook.bir"
	ff.submit();
}

</script>
</head>
<body>
			
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
<div>
	<div id="banner">
		E-BOOK으로 즐기세요! ebook리더 다운받기->
	<a href="http://www.adobe.com/kr/products/digital-editions.html" target="_blank"><img src="img/ebook.jpg" border="0" id="ebook"/></a>
</div>

<div class="eventdiv1">event 광고1</div>
<div class="eventdiv2">event 광고2</div>


<div class="wrapDiv">
<table class="fixTable">
<tr>
<td colspan="2">상품명</td>
<td>필요한 북클립</td>
<td>내 북클립</td>
<td>잔여 북클립</td>
</tr>
<tr>
<td><img class="pic" src="resources/img/${vo1.img}"></td>
<td>${vo1.title} ${vo1.author} ${vo1.pub}</td>
<td>${vo1.eb_price}</td>
<td>${vo2.point}</td>
<td>${vo2.point-vo1.eb_price}</td>
</tr>
</table>
<center>
<img src="resources/img/ebuy_btn.png" 
onclick="ebookBuyOk('${vo2.email}',${vo2.point-vo1.eb_price},${vo1.bnum},
'${vo1.title}',${vo1.eb_price})">
<img src="resources/img/ebuy_cancle.png" onclick="cancle()">
</center>
</div>

<form id="f" name="f" method="post">
<input type="hidden" name="title" id="title33" value="hello,,,,"/> 
</form>

</body>
</html>


