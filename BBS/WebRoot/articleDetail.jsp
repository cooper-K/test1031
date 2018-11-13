<%@ page pageEncoding="GB18030"%>
<%@ page import="java.sql.*, com.zhangyue.bbs.*" %>

<%
String strId = request.getParameter("id");
if(strId == null || strId.trim().equals("")) {
	out.println("Error ID!");
	return;
}
int id = 0;
try {
	id = Integer.parseInt(strId);
} catch (NumberFormatException e) {
	out.println("Error ID Again!");
	return;
} 

Article a = null;

Connection conn = DB.getConn();
String sql = "select * from article where id = " + id;
Statement stmt = DB.createStmt(conn);
ResultSet rs = DB.executeQuery(stmt, sql);
if(rs.next()) {
	a = new Article();
	a.initFromRs(rs);
}


DB.close(rs);
DB.close(stmt);
DB.close(conn);

if(a == null) {
%>
	<!--  您寻找的帖子不存在！-->
<%
	return;
}
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>伊甸园|沉思人生</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" href="images/style.css" title="Integrated Styles">
<script language="JavaScript" type="text/javascript" src="images/global.js"></script>
<!--  
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://bbs.chinajavaworld.com/rss/rssmessages.jspa?threadID=744236">
-->
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td width="40%"><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%">
     	</td>
      <td width="1%"><img src="images/header-right.gif" alt="" height="57" border="0"></td>
    </tr>
  </tbody>
</table>
<br>
<div id="jive-flatpage">
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%">
        	<p class="jive-breadcrumbs">
								<a href="index.jsp">首页</a> &#187;
								<a
									href="article.jsp">伊甸园</a>
								&#187;
								<a
									href="article.jsp">沉思人生
							</a>
							</p>
          <p class="jive-page-title"> 主题: <%=a.getTitle() %> </p></td>
        <td width="1%"><div class="jive-accountbox"></div></td>
      </tr>
    </tbody>
  </table>
  <div class="jive-buttons">
    <table summary="Buttons" border="0" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td class="jive-icon"><a href="reply.jsp"><img src="images/reply-16x16.gif" alt="回复本主题" border="0" height="16" width="16"></a></td>
          <td class="jive-icon-label"><a id="jive-reply-thread" href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId()%>">回复本主题</a> </td>
        </tr>
      </tbody>
    </table>
  </div>
  <br>
  <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
      <tr valign="top">
        <td width="99%"><div id="jive-message-holder">
            <div class="jive-message-list">
              <div class="jive-table">
                <div class="jive-messagebox">
                  <table summary="Message" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr id="jive-message-780144" class="jive-odd" valign="top">
                        <td class="jive-first" width="1%">
                        
						<!-- 个人信息的table -->
						<table border="0" cellpadding="0" cellspacing="0" width="150">
                            <tbody>
                              <tr>
                                <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                      <tr valign="top">
                                        <td style="padding: 0px;" width="1%"><nobr> <a href="login.jsp" title="伊甸张越">伊甸张越</a> </nobr> </td>
                                        <td style="padding: 0px;" width="99%"><img class="jive-status-level-image" src="images/level3.gif" title="世界新手" alt="" border="0"><br>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                  <img class="jive-avatar" src="images/zhangyue2.png" alt="" border="0"> <br>
                                  <br>
                                  <span class="jive-description"> 发表:
                                  6688 <br>
                                  点数: 8800<br>
                                  注册:
                                  12-6-01 <br>
                                  <a href="index.jsp"><font color="red">访问我的论坛</font></a> </span> </td>
                              </tr>
                            </tbody>
                          </table>
						  <!--个人信息table结束-->
						  
						  </td>
                        <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tbody>
                              <tr valign="top">
                                <td width="1%"></td>
                                <td width="97%"><span class="jive-subject"> 父贴</span> </td>
                                <td class="jive-rating-buttons" nowrap="nowrap" width="1%"></td>
                                <td width="1%"><div class="jive-buttons">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                      <tbody>
                                        <tr>
                                          <td>&nbsp;</td>
                                          <tr>
          <td class="jive-icon"><a href="reply.jsp"><img src="images/reply-16x16.gif" alt="回复" border="0" height="16" width="16"></a></td>
          <td class="jive-icon-label"><a id="jive-reply-thread" href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId()%>">回复</a> </td>
        </tr>
                                        
                                      </tbody>
                                    </table>
                                  </div></td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br>
                                 <%=a.getCont() %> <br>
                                  <br>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4" style="font-size: 9pt;"><img src="images/sigline.gif"><br>
                                  <font color="#568ac2">我是09软件1W班的张越，这是我的论坛！</font> <br>
                                </td>
                              </tr>
                              <tr>
                                <td colspan="4" style="border-top: 1px solid rgb(204, 204, 204); font-size: 9pt; table-layout: fixed;"> ·<a href="http://com.zhangyue.bbs"><font color="#666666">http://localhost:8080/BBS</font></a> </td>
                              </tr>
                            </tbody>
                          </table></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="jive-message-list-footer">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr>
                    <td nowrap="nowrap" width="1%"><br><br></td>
                    <td align="center" width="98%"><table border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                          <tr>
                            <td><a href="article.jsp"><img src="images/arrow-left-16x16.gif" alt="返回到主题列表" border="0" height="16" hspace="6" width="16"></a> </td>
                            <td><a href="article.jsp">返回到主题列表</a> </td>
                          </tr>
                        </tbody>
                      </table></td>
                    <td nowrap="nowrap" width="1%">&nbsp;</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div></td>
        <td width="1%">&nbsp;</td>
      </tr>
    </tbody>
  </table>
</div>
</body>
</html>
