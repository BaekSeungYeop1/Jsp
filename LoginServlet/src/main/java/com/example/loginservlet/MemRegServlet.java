package com.example.loginservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/memReg")
public class MemRegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String addr = request.getParameter("addr");
        String tel = request.getParameter("tel");
        String hobby = request.getParameter("hobby");

        out.println("이름 = " + name + "<br/>");
        out.println("주소 = " + addr + "<br/>");
        out.println("전화번호 = " + tel + "<br/>");
        out.println("취미 = " + hobby + "<br/>");
    }
}
