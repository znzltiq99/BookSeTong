<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#form{text-align:center }
</style>
</head>
<body>

<form name="login" method="post" action="login.bir"> 
<div id="form">
<spring:bind path ="member_infoVO.email">
	<input type="text" name="email" size="25" placeholder="email.." ><br>
</spring:bind>

<spring:bind path ="member_infoVO.pass">
	<input type="text" name="pass" size="25" placeholder="password.."><br>
</spring:bind>

<input type="submit" value="로그인" >

</form>

<form name="tojoin" method="get" action="insert.bir"> 
	<input type="submit" value="회원가입">
</form>

<script> 
go = function(url) { 
   var f = document.form; 
   f.action = url; 
   f.submit(); 
} 
</script> 
</div>

</body>
</html>