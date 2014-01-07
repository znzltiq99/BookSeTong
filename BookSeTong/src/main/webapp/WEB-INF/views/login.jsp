<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
* {
	font-family: "HU네모굴림160";
}

a {
	text-decoration: none;
}

body {
	width: 100%;
	height: 100%;
	background-image: url(login_img/login_bg.png);
}

.text {
	width: 698px;
	height: 183px;
	float: left;
	margin: 250px 300px;
	background-image: url(login_img/text1.png);
}

.input_form {
	width: 300px;
	height: 100px;
	float: left;
	margin: -180px 500px;
}

.input_form input {
	font-family: "HU네모굴림160";
	color: gray;
	width: 230px;
	height: 20px;
	margin: 5px;
	clear: left;
	border-radius: 5px 5px 5px 5px;
}

.login_btn {
	width: 116px;
	height: 46px;
	background-image: url(login_img/login_btn.png);
	margin: -90px 500px;
	float: left;
}

.login_btn:HOVER {
	background-image: url(login_img/login_btn_hover.png);
}

.member_btn {
	width: 116px;
	height: 46px;
	background-image: url(login_img/member_btn.png);
	margin: -90px 630px;
	float: left;
}

.member_btn:HOVER {
	background-image: url(login_img/member_btn_hover.png);
}

#pop {
	width: 400px;
	height: 600px;
	background: #3d3d3d;
	opacity: .97;
	color: #fff;
	position: absolute;
	top: 120px;
	left: 420px;
	text-align: center;
}

#pop h1 {
	font-size: 40px;
	margin-bottom: 20px;
}

#pop input {
	font-family: "HU네모굴림160"; color : gray;
	width: 230px;
	height: 30px;
	margin: 15px;
	clear: left;
	border-radius: 5px 5px 5px 5px;
	color: gray;
}

#close {
	width: 116px; height : 46px; background-image :
	url(login_img/member_btn.png);
	margin: auto;
	height: 46px;
	background-image: url(login_img/member_btn.png);
}

#close:HOVER {
	background-image: url(login_img/member_btn_hover.png);
}

.year {
	font-family: "HU네모굴림160";
	clear: left;
	color: gray;
	width: 67px;
	height: 30px;
	margin: 5px;
	clear: left;
	border-radius: 5px 5px 5px 5px;
}

.month {
	font-family: "HU네모굴림160";
	clear: left;
	color: gray;
	width: 67px;
	height: 30px;
	margin: 5px;
	clear: left;
	border-radius: 5px 5px 5px 5px;
}

.day {
	font-family: "HU네모굴림160";
	clear: left;
	color: gray;
	width: 67px;
	height: 30px;
	margin: 5px;
	clear: left;
	border-radius: 5px 5px 5px 5px;
}
</style>

<script>
	function submitForm() {

		if (!chkEmail(document.getElementById("email").value)) {
			alert('이메일을 확인하세요.');
			document.getElementById("email").focus();
			return false;
		} else if (document.getElementById("password").value == "") {
			alert('비밀번호를 입력하세요.');
			document.getElementById("password").focus();
			return false;
		}
		document.form.submit();
	}

	function chkEmail(str) {
		var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

		if (!reg_email.test(str)) {
			return false;
		}
		return true;
	}
</script>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#pop').hide();
		$('#pop_bt').click(function() {
			$('#pop').show();
		});
		$('#close').click(function() {
			$('#pop').hide();
		});
	});
</script>

</head>
<body>
	<div class="text"></div>
	<form class="input_form" id="form">
		<input type="text" placeholder="이메일" id="email"> <input
			type="password" placeholder="비밀번호" id="password">
	</form>

	<a href="recommend.jsp" onclick="submitForm()"><div class="login_btn"></div></a>
	<a href="#"><div class="member_btn" id="pop_bt"></div></a>

	<div id="pop">

		<br>
		<h1>회원가입</h1>
		<br> <br> <br>
		<form>
			<input type="text" placeholder="이름" id="name"> <input
				type="text" placeholder="이메일" id="email"> <input
				type="password" placeholder="비밀번호" id="password">
		</form>
		<select name='year' class="year">
			<option value=''>년도</option>
			<option value='2014'>2014</option>
			<option value='2013'>2013</option>
			<option value='2012'>2012</option>
			<option value='2011'>2011</option>
			<option value='2010'>2010</option>
			<option value='2009'>2009</option>
			<option value='2008'>2008</option>
			<option value='2007'>2007</option>
			<option value='2006'>2006</option>
			<option value='2005'>2005</option>
			<option value='2004'>2004</option>
			<option value='2003'>2003</option>
			<option value='2002'>2002</option>
			<option value='2001'>2001</option>
			<option value='2000'>2000</option>
			<option value='1999'>1999</option>
			<option value='1998'>1998</option>
			<option value='1997'>1997</option>
			<option value='1996'>1996</option>
			<option value='1995'>1995</option>
			<option value='1994'>1994</option>
			<option value='1993'>1993</option>
			<option value='1992'>1992</option>

		</select> <select name='year' class="month">
			<option value=''>월</option>
			<option value='1'>1</option>
			<option value='2'>2</option>
			<option value='3'>3</option>
			<option value='4'>4</option>
			<option value='5'>5</option>
			<option value='6'>6</option>
			<option value='7'>7</option>
			<option value='8'>8</option>
			<option value='9'>9</option>
			<option value='10'>10</option>
			<option value='11'>11</option>
			<option value='12'>12</option>
		</select> <select name='day' class="day">
			<option value=''>일</option>
			<option value='1'>1</option>
			<option value='2'>2</option>
			<option value='3'>3</option>
			<option value='4'>4</option>
			<option value='5'>5</option>
			<option value='6'>6</option>
			<option value='7'>7</option>
			<option value='8'>8</option>
			<option value='9'>9</option>
			<option value='10'>10</option>
			<option value='11'>11</option>
			<option value='12'>12</option>
			<option value='13'>13</option>
			<option value='14'>14</option>
			<option value='15'>15</option>
			<option value='16'>16</option>
			<option value='17'>17</option>
			<option value='18'>18</option>
			<option value='19'>19</option>
			<option value='20'>20</option>
			<option value='21'>21</option>
			<option value='22'>22</option>
			<option value='23'>23</option>
			<option value='24'>24</option>
			<option value='25'>25</option>
			<option value='26'>26</option>
			<option value='27'>27</option>
			<option value='28'>28</option>
			<option value='29'>29</option>
			<option value='30'>30</option>
			<option value='31'>31</option>

		</select> <br> <br> <br> <br>
		<div>
			<a href="#" onclick="submitForm()"><div id="close"></div></a>
		</div>



	</div>


</body>
</html>