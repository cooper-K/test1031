<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>伊甸园论坛首页</title>
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
  <center>
  <h1>欢迎您来到伊甸园论坛</h1>
  <hr color="black">
  <form>
  <br>
  <h3>
   <a href="article.jsp">贴子列表</a>
   <a href="userlogin.jsp">用户登录</a>
   <a href="login.jsp">管理员登录</a>
   <a href="register.jsp">注册新用户</a>
</h3>
</form>
</center>


<BR>
<CENTER class="gray">伊甸园论坛       版权所有</CENTER>

  </body>
</html>
