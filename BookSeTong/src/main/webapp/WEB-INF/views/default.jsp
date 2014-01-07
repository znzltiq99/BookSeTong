<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>책을 추천받아보아요 :)</title>
<style type="text/css">
* {
	font-family: "HU네모굴림150";
}

a {
	text-decoration: none;
}

body {
	width: 100%;
	height: 100%;
	background-color: #F8FFE8;
}

.white {
	width: 100%;
	height: 100px;
	position: fixed;
	top: -10px;
	left: -1px;
	background-color: white;
	margin: 0 auto; 
}

.logo {
	color: #A0BB22;
	width:85px;
	height:78px;
	background-image:url("resources/img/logo.png");
	margin-top: 20px;
	margin-left: 90px;
}

#nav,#nav ul {
	font-family: verdana;
	list-style: none;
	margin: 0;
	padding: 0;
}

#nav {
	height: 50px;
	margin-left: 210px;
	overflow: hidden;
	
	margin-top: -80px;
}

#nav li {
	float: left;
	position: relative;
	z-index: 10;
}

#nav li a {
	background: url(resources/img/bg-menu2.png) no-repeat center top;
	color: #fff;
	display: block;
	float: left;
	font-size: 19px;
	height: 51px;
	line-height: 40px;
	padding: 0 20px;
	position: relative;
	text-decoration: none;
	z-index: 20;
	-moz-transition: 0.3s ease-in-out;
	-o-transition: 0.3s ease-in-out;
	-webkit-transition: all 0.3s ease-in-out;
}

#nav li:first-child a {
	background: url(resources/img/bg-menu2.png) no-repeat left top;
	padding-left: 35px;
}

#nav li ul li:first-child a {
	background-image: none;
	padding-left: 10px;
}

#nav li.pad {
	background: url(resources/img/bg-menu2.png) no-repeat right top;
	display: block;
	height: 51px;
	width: 35px;
}

#nav ul {
	background: #009900;
	height: auto;
	padding: 10px 0;
	position: absolute;
	top: -115px;
	width: 180px;
	z-index: 1;
	border-radius: 8px; /*some css3*/
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	transition: 0.8s ease-in-out;
	box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.5);
	-moz-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.5);
	-webkit-box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.5);
	-moz-transition: 0.8s ease-in-out;
	-o-transition: 0.8s ease-in-out;
	-webkit-transition: all 0.8s ease-in-out;
}

#nav ul li {
	width: 180px;
}

#nav ul li a {
	background: transparent;
	height: 35px;
	line-height: 20px;
	width: 160px;
	z-index: 1;
}

#nav:hover {
	height: 200px;
}

#nav li:hover ul {
	-moz-transform: translate(0, 161px); /*some css3*/
	-o-transform: translate(0, 161px);
	-webkit-transform: translate(0, 161px);
}

#nav a:hover,#nav li:hover>a {
	font-size: 22px;
}

.green {
	position: fixed;
	width: 1280px;
	height: 113px;
	top: 90px;
	left: -1px;
	background-image: url("resources/img/filter_bg.png");
	z-index: 3;
}

.profile {
	width: 130px;
	height: 60px;
	/*border:1px solid black;*/
	float: left;
	position: fixed;
	margin-left: 760px;
	margin-top: 10px;
}

.profile_pic {
	width: 50px;
	height: 50px;
	border: 1px solid black;
	float: left;
	margin: 3px;
	background-image: url("resources/img/profile.jpg");
}

.profile h6 {
	margin: 5px;
	color: #113F00;
}

.profile h6:HOVER {
	color: #B3E148;
}

.profile h4 {
	margin: 5px;
	color: #B3E148;
}

/* search form 
-------------------------------------- */
.searchform {
	position: fixed;
	margin-left: 900px;
	margin-top: 15px;
	display: inline-block;
	zoom: 1; /* ie7 hack for display:inline-block */
	*display: inline;
	border: solid 1px #d2d2d2;
	padding: 3px 5px;
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
	-webkit-box-shadow: 0 1px 0px rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 1px 0px rgba(0, 0, 0, .1);
	box-shadow: 0 1px 0px rgba(0, 0, 0, .1);
	background: #f1f1f1;
	background: -webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#ededed));
	background: -moz-linear-gradient(top, #fff, #ededed);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',
		endColorstr='#ededed'); /* ie7 */
	-ms-filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff',
		endColorstr='#ededed'); /* ie8 */
}

.searchform input {
	font: normal 12px/100% Arial, Helvetica, sans-serif;
}

.searchform .searchfield {
	background: #fff;
	padding: 6px 6px 6px 8px;
	width: 202px;
	border: solid 1px #bcbbbb;
	outline: none;
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2);
}

.searchform .searchbutton {
	color: #fff;
	border: solid 1px #494949;
	font-size: 11px;
	height: 27px;
	width: 27px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .6);
	-webkit-border-radius: 2em;
	-moz-border-radius: 2em;
	border-radius: 2em;
	background: #5f5f5f;
	background: -webkit-gradient(linear, left top, left bottom, from(#B3E148),
		to(#598700));
	background: -moz-linear-gradient(top, #B3E148, #598700);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#B3E148',
		endColorstr='#598700'); /* ie7 */
	-ms-filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#B3E148',
		endColorstr='#598700'); /* ie8 */
}

.searchform .searchbutton:HOVER {
	border: 1px solid #fff008;
	font-weight: bold;
}

#checkbox {
	margin: 8px auto;
	width: 800px;
	height: 100px;
	/*border:1px solid black;*/
}

#checkbox h5 {
	margin-top: 5px;
	margin-bottom: 10px;
}

#checkbox input {
	margin-top: 5px;
}

#search_btn {
	width: 54px;
	height: 28px;
	background-image: url("resources/img/search_btn.png");
	float: right;
	margin-right: 350px;
	margin-top: -6px;
}

#search_btn:HOVER {
	background-image: url("resources/img/search_btn_hover.png");
}

</style>
</head>
<body>

<div class="white">
		<h1 class="logo"></h1>


		<ul id="nav">
			<li><a href="#">홈</a></li>
			<li><a href="#">책 추천</a> <!--  
                <div>
                    <ul>
                        <li><a href="#"><center>취향에 맞는 책을 <br> 추천해드립니다 :)</center></a></li>
                  
                    </ul>
                </div>
                --></li>
			<li><a href="#">내 서재</a> <!-- 
                <div>
                    <ul>
                        <li><a href="#"><center>읽은 책과 읽고 싶은 책, <br> 독후감 서비스입니다 :3</center></a></li>
            
                    </ul>
                </div>
                --></li>
			<li><a href="#">E-Book</a> <!-- 
                <div>
                    <ul>
                        <li><a href="#"><center>다양한 종류의 E-Book과 <br> 뷰어를 다운로드합니다 :D</center></a></li>
       
                    </ul>
                </div>
                 --></li>
			<li><a href="#">이벤트</a>
				<div>
					<!-- 
                    <ul>
                        <li><a href="#"><center>짜릿한 스릴과 경품이 있는 <br> 이벤트로  초대합니다!</center></a></li>
       
                    </ul>
                </div>
                 --></li>

			<li class="pad"></li>
		</ul>
	</div>
	<div class="profile">
		<div class="profile_pic"></div>
		<center>
			<h4>"Stella"</h4>
			<a href="#"><h6>My Page</h6></a> <a href="#"><h6>Log Out</h6></a>
		</center>
	</div>
	<form class="searchform">
		<input class="searchfield" type="text" value="Search..."
			onfocus="if (this.value == 'Search...') {this.value = '';}"
			onblur="if (this.value == '') {this.value = 'Search...';}" /> <input
			class="searchbutton" type="button" value="Go" />
	</form>


<p>미친</p>
<div >



</body>
</html>

