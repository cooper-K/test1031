<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*,com.zhangyue.bbs.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	request.setCharacterEncoding("GBK");
	String action = request.getParameter("action");
	String username = "";
	if (action != null && action.trim().equals("��¼")) {
		username = request.getParameter("username");
		//check username whether valid or not!
		String password = request.getParameter("password");
		if(username == null || !username.trim().equals("zhangyue")) {
			out.println("username not correct!");
		} else if(password == null || !password.trim().equals("zhangyue")) {
			out.println("password not correct!");
		} else {
			session.setAttribute("adminLogined" , "true");
			response.sendRedirect("articleFlat.jsp");
		}
	}
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>�û���¼</title>

	</head>
	<body background="images/background.jpg">
	
	<DIV>
	&gt;&gt;<B><a href="index.jsp">��̳��ҳ</a></B>
</DIV>

<center>
		<h1>�û���¼</h1>
		
		<form action="userlogin.jsp" method="post">
		<h4>
			<input type="hidden" name="action" value="��¼"/>
			&nbsp;&nbsp;�û�����
			
			<input type="text" name="username" value="<%=username %>"/>
			<br>
			<br>
		&nbsp;&nbsp;��&nbsp;&nbsp;�룺
			<input type="password" name="password" />
			<br>
			<br>
			<input type="submit" value="��¼" />
		</h4>
		</form>
	
</center>


<BR>
<CENTER class="gray">����԰��̳       ��Ȩ����</CENTER>


 
	</body>
</html>
