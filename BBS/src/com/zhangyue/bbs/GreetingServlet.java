package com.zhangyue.bbs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class GreetingServlet extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // ��ȡ������� ��������������Ʒ��ز���ֵ
        // String resuest.getParameter(String paraName);
        // String username = request.getParameter("username");
        // String ageStr = request.getParameter("age");
        // ����һ����Ϣͷ,���߿ͻ��ˣ�������� ���ص���������
        response.setContentType("text/html");
        // ͨ��response������һ�������
        PrintWriter out = response.getWriter();
        // int age = Integer.parseInt(ageStr);
        /*
         * String msg=""; if(age>=18){ msg="����һ���������ˣ����Է�����"; }else{
         * msg="��δ���꣬���Ǻú�ѧϰ�ɡ�"; }
         */
        // ������������ݣ���ʵ������response������Ӧ������
        out.println("<h1>hello</h1>");
        // �ر������ڹر���֮ǰ���������Ὣresponse�л�������ݷ��͸��ͻ��ˣ��������
        out.close();

    }
}
