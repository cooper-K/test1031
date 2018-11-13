<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="images/background.jpg">
  <DIV>
	&gt;&gt;<B><a href="index.jsp">论坛首页</a></B>
</DIV>
  <center>
  <h1>伊甸园论坛</h1>
  <hr color="black">
    <form action="searchResult.jsp" method="post">
   		 请输入关键字
    	<input type="text" name="keyword"/>
    	<input type="submit" value="搜索"/>
    </form>
    </center>
    
    <BR>
<CENTER class="gray">伊甸园论坛       版权所有</CENTER>
  </body>
</html>
