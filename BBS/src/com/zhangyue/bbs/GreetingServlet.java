package com.zhangyue.bbs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class GreetingServlet extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // 读取请求参数 依据请求参数名称返回参数值
        // String resuest.getParameter(String paraName);
        // String username = request.getParameter("username");
        // String ageStr = request.getParameter("age");
        // 生成一个消息头,告诉客户端（浏览器） 返回的数据类型
        response.setContentType("text/html");
        // 通过response对象获得一个输出流
        PrintWriter out = response.getWriter();
        // int age = Integer.parseInt(ageStr);
        /*
         * String msg=""; if(age>=18){ msg="你是一个成年人了，可以访问了"; }else{
         * msg="你未成年，还是好好学习吧。"; }
         */
        // 向流中输出数据，其实质是向response缓存相应的数据
        out.println("<h1>hello</h1>");
        // 关闭流，在关闭流之前，服务器会将response中缓存的数据发送给客户端（浏览器）
        out.close();

    }
}
