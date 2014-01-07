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
#table{margin-left:500px; margin-top:300px;}
.btn{margin-left:575px; margin-top:10px;  }
</style>
</head>


<body>
<form name="form" method="post" action="insert.bir"> 
<table id="table">
<tr>
<td><font>이름:</font></td>
<td colspan="3">
<spring:bind path="member_infoVO.name">
<input type="text" name="name" size="25" placeholder="Enter your name.." ></td>
</spring:bind>
</tr>

<tr>
<td><font>이메일:</font></td>
<td colspan="3">
<spring:bind path="member_infoVO.email">
<input type="text" name="email" size="25" placeholder="Enter your email.."></td>
</spring:bind>
</tr>

<tr>
<td><font>비밀번호:</font></td>
<spring:bind path="member_infoVO.pass">
<td colspan="3"><input type="text" name="pass" size="25" placeholder="Enter your password.."></td>
</spring:bind>
</tr>

<tr>
<td><font>생년월일:</font></td>
<spring:bind path="member_infoVO.byear">
<td><select name="byear" >
<option value="">년도</option>
<% for(int i = 2015; i>1900;i--){ %>
<option value="<%=i%>"><%=i%>
<%}%>
</spring:bind>
</select></td>

<spring:bind path="member_infoVO.bmonth">
<td><select name="bmonth" >
<option value="">월</option>
<% for(int i = 1; i<13;i++){ %>
<option value="<%=i%>"><%=i%>
<%}%>
</spring:bind>
</select></td>

<spring:bind path="member_infoVO.bday"> 
<td><select name="bday" >
<option value="">일</option>
<% for(int i = 1; i<32;i++){ %>
<option value="<%=i%>"><%=i%>
<%}%>
</spring:bind>
</select></td>
</tr>
</table>

<div class="btn">
	<input type="submit" value="회원가입">
	<input type="reset" value="취소">
</div>

</form>
</body>
</html>