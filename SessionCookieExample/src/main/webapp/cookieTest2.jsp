<%--
  Created by IntelliJ IDEA.
  User: baek
  Date: 2021-08-18
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "";
    String value = "";
    String cookie = request.getHeader("Cookie");

    if (cookie != null){
        Cookie cookies[] = request.getCookies();

        for (int i=0; i<cookies.length;i++){
            if (cookies[i].getName().equals("name")){
                name = cookies[i].getName();
                value = cookies[i].getValue();
            }
        }
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>쿠키 이름 = <%=name%></h2>
    <h2>쿠키 값 = <%=value%></h2>
</body>
</html>
