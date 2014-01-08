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
	
#pic{width:160px; height:230px; 
     margin:50px auto 0;
     opacity:1;/*�̹����� ������ �� ��  ������ 0.1 ~ 1 ���� */
     transition: 0.4s ease;/*transitionȿ���� �ѿ��������� �ε巴��ó��
             �ڼ��Ѱ� http://blog.naver.com/the_sara/130159973784 */
     position:relative; /*���ΰ��ִ� ������ relative������*/
     overflow: hidden;/*��ġ�� �κ� �Ⱥ�������*/
     }
     
#pic:hover{border-color:#fff;
    opacity:1;/*�ѿ��������� ���۽�Ƽ0.5�ΰ� �ٽ� 1�����ϰ� ó��*/}
    
#pic span{width:160px; height:150px; 
    display:block;/*span�±״� �ζ��ο�ұ⶧���� ��ó�� �׷��� ȿ���� ����*/
    position:absolute;/*�������ְ� �������� �� ������ absoluteó��*/
    left:0; bottom:-150px;/*span�� �Ʒ��� ������ overflow:hidden���� �Ⱥ��̰� ó��*/
    background:rgba(0,0,0,0.7);
    opacity:0.5;
    font:10px;
    text-align:center;
    color:#fff;
    text-shadow:2px 2px 2px #000;
    transition:0.3s ease; 
    }
    
#pic img{width:160px; height:230px; }
    
#pic:hover span{bottom: 0;}/*hover������ span�� ���� �ö��*/
     
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
		<li><a href="home.jsp">Ȩ</a>
		<li><a href="recommend.jsp">å��õ</a>
		<li><a href="read.jsp">������</a>
		<li><a href="ebook.jsp">E-book </a>
		<li><a href="event1.jsp">�̺�Ʈ</a>
	</ul>

	<div id="title">Search</div>
	<input style="" value="�˻�" id="title"></input>
	<hr id="hr">
<div >
	<div id="banner">
		E-BOOK���� ��⼼��! ebook���� �ٿ�ޱ�->
	<a href="http://www.adobe.com/kr/products/digital-editions.html" target="_blank"><img src="img/ebook.jpg" border="0" id="ebook"/></a>
</div>

<div class="fixbox" >
<%!int cnt=0;%>
	<c:forEach var="row" items="${list}">
	<% cnt=0; %>
	  <div>
	      <div id="pic">
		  <img src="resources/img/${row.img}"></img><br>
		  <span> 
		 	 ${row.title}<br>${row.author}<br>${row.pub}<br>${row.eb_price}<br>
		  	 <input type="button" value="�����ϱ�" onclick="ebookbuy(${row.bnum})">
		  </span>
	      </div><br>
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
    
      	
      </div>
	</c:forEach>
</div>

</div>
<form id="f" name="f" method="post">
</form>



</body>
</html>


