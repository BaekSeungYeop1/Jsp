<%--
  Created by IntelliJ IDEA.
  User: baek
  Date: 2021-08-18
  Time: 오전 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie cookie = new Cookie("name","hongkildong");
    cookie.setMaxAge(600); // 쿠키의 만료시간 second
    response.addCookie(cookie);
%>
<html>
<head>
    <title>Cookie Test</title>
</head>
<body>
    <h2><%= cookie.getName() %></h2>
    <h2><%= cookie.getValue() %></h2>
    <h2><%= cookie.getMaxAge() %></h2>
    <a href="cookieTest2.jsp">쿠키 값 불러오기</a>
</body>
</html>
