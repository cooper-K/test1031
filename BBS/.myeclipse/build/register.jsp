<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.zhangyue.bbs.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
<TITLE>伊甸园论坛--注册</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<Link rel="stylesheet" type="text/css" href="style/style.css"/>

<script language="javascript">
function check() {
 if(document.regForm.uName.value==""){
    alert("用户名不能为空");
    return false;
 }
 if(document.regForm.uPass.value==""){
    alert("密码不能为空");
    return false;
 }
 if(document.regForm.uPass.value != document.regForm.uPass1.value){
    alert("2次密码不一样");
    return false;
 }
}
</script>

<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	
	if (action != null) {
	
			response.sendRedirect("login.jsp");
		}
	
%>

</HEAD>
<BODY background="images/background.jpg">

<!--      用户信息、登录、注册        -->

<BR/>
<!--      导航        -->
<DIV>
	&gt;&gt;<B><a href="index.jsp">论坛首页</a></B>
</DIV>

<!--      用户注册表单        -->
<DIV  class="t" style="MARGIN-TOP: 15px" align="center">
	<FORM name="register" action="article.jsp" method="post">
		<br/><span style="color:red">${regError }</span>
		
		<h1>注册新用户</h1>
		
		<h4>
		<br/>用&nbsp;户&nbsp;名:&nbsp;&nbsp;
			<INPUT class="input" tabIndex="1" type="text" maxLength="20" size="40" name="username">
			<br>
		<br/>密&nbsp;&nbsp;&nbsp;&nbsp;码 :&nbsp;
			<INPUT class="input" tabIndex="2" type="password" maxLength="20" size="40" name="password">
			<br>
		<br/>确认密码 :&nbsp;
		
			<INPUT class="input" tabIndex="3" type="password" maxLength="20" size="40" name="password1">
			<br>
			
			<br>邮箱地址：&nbsp;
			<input type="text" tabIndex="4"  maxLength="20" size="40" name="email">
			<br>
		<br/>&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;别 :&nbsp;
			女<input type="radio" name="gender" value="1">
			男<input type="radio" name="gender" value="2" checked="checked" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</h4>
		<br/>请选择头像 <br/>
		<img src="image/head/1.gif"/><input type="radio" name="head" value="1.gif" checked="checked">
		<img src="image/head/2.gif"/><input type="radio" name="head" value="2.gif">
		<img src="image/head/3.gif"/><input type="radio" name="head" value="3.gif">
		<img src="image/head/4.gif"/><input type="radio" name="head" value="4.gif">
		<img src="image/head/5.gif"/><input type="radio" name="head" value="5.gif">
		<BR/>
		<img src="image/head/6.gif"/><input type="radio" name="head" value="6.gif">
		<img src="image/head/7.gif"/><input type="radio" name="head" value="7.gif">
		<img src="image/head/8.gif"/><input type="radio" name="head" value="8.gif">
		<img src="image/head/9.gif"/><input type="radio" name="head" value="9.gif">
		<img src="image/head/10.gif"/><input type="radio" name="head" value="10.gif">
		<BR/>
		<img src="image/head/11.gif"/><input type="radio" name="head" value="11.gif">
		<img src="image/head/12.gif"/><input type="radio" name="head" value="12.gif">
		<img src="image/head/13.gif"/><input type="radio" name="head" value="13.gif">
		<img src="image/head/14.gif"/><input type="radio" name="head" value="14.gif">
		<img src="image/head/15.gif"/><input type="radio" name="head" value="15.gif">
		<br/>
			<INPUT class="button" tabIndex="5" type="submit" value="注 册">
	</FORM>
</DIV>

<!--      声明        -->
<BR>
<CENTER class="gray">伊甸园论坛       版权所有</CENTER>
</BODY>
</HTML>
