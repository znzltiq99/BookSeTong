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

.fixbox{position:relative; position:absolute; top:240px; left:230px; width:850px;}	
.fixbox img{cursor:pointer;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

function insert(bnum,sval){
	ff = document.getElementById("f");
	ff.action="insertStar.bir?bnum="+bnum+"&sval="+sval;
	ff.submit();
}

function update(bnum,sval){
	ff = document.getElementById("f");
	ff.action="update.bir?bnum="+bnum+"&sval="+sval;
	ff.submit();
}

function ebookbuy(bnum){
	
	ff = document.getElementById("f");
	ff.action="ebookbuy.bir?bnum="+bnum;
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
<div >
	<div id="banner">
		E-BOOK으로 즐기세요! ebook리더 다운받기->
	<a href="http://www.adobe.com/kr/products/digital-editions.html" target="_blank"><img src="img/ebook.jpg" border="0" id="ebook"/></a>
</div>

<div class="fixbox" >
<%!int cnt=0;%>
	<c:forEach var="row" items="${list}">
	<% cnt=0; %>
	  <div>
		  <img class="pic" src="resources/img/${row.img}"></img><br>
		  	${row.title}<br>
		  	${row.author}<br>
		 	${row.pub}<br>
		  	${row.eb_price}<br>
		    <c:forEach var="row2" items="${memberstar_list}">
		    <c:if test="${row.bnum == row2.bnum}">
		        <% cnt=1; %>
		   		<c:if test="${row2.bstar == 1}">
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},1)"/>
		        	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},2)"/>
		        	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},3)"/>
		        	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},4)"/>
		        	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},5)"/>  
		  	    </c:if>
		  	    
		  	    <c:if test="${row2.bstar == 2}">
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},1)"/>
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},2)"/>
		    	    <img src="resources/img/empty_star.png" onclick="update(${row.bnum},3)"/>
		       		<img src="resources/img/empty_star.png" onclick="update(${row.bnum},4)"/>
		       	    <img src="resources/img/empty_star.png" onclick="update(${row.bnum},5)"/>
		  	    </c:if>
		  	    
		  	    <c:if test="${row2.bstar == 3}">
		      		<img src="resources/img/full_star.png" onclick="update(${row.bnum},1)"/>
		     		<img src="resources/img/full_star.png" onclick="update(${row.bnum},2)"/>
		    	 	<img src="resources/img/full_star.png" onclick="update(${row.bnum},3)"/>
		         	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},4)"/>
		       	 	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},5)"/>
		  	    </c:if>
		  	    
		  	    <c:if test="${row2.bstar == 4}">
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},1)"/>
		       	  	<img src="resources/img/full_star.png" onclick="update(${row.bnum},2)"/>
		      	  	<img src="resources/img/full_star.png" onclick="update(${row.bnum},3)"/>
		     	  	<img src="resources/img/full_star.png" onclick="update(${row.bnum},4)"/>
		      	  	<img src="resources/img/empty_star.png" onclick="update(${row.bnum},5)"/>
		       </c:if>
		  	    
		  	    <c:if test="${row2.bstar == 5}">
		       		<img src="resources/img/full_star.png" onclick="update(${row.bnum},1)"/>
		       	 	<img src="resources/img/full_star.png" onclick="update(${row.bnum},2)"/>
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},3)"/>
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},4)"/>
		        	<img src="resources/img/full_star.png" onclick="update(${row.bnum},5)"/>
		      </c:if>
		    </c:if>
		    </c:forEach>
		    <% if(cnt==0){ %>
		   	   	<img src="resources/img/empty_star.png" onclick="insert(${row.bnum},1)"/>
		    	<img src="resources/img/empty_star.png" onclick="insert(${row.bnum},2)"/>
		    	<img src="resources/img/empty_star.png" onclick="insert(${row.bnum},3)"/>
		   		<img src="resources/img/empty_star.png" onclick="insert(${row.bnum},4)"/>
		   		<img src="resources/img/empty_star.png" onclick="insert(${row.bnum},5)"/>
		    <%}%>
      	 <br><input type="button" value="구매하기" onclick="ebookbuy(${row.bnum})">
      	
      </div>
	</c:forEach>
</div>

</div>
<form id="f" name="f" method="post">
</form>

</body>
</html>


