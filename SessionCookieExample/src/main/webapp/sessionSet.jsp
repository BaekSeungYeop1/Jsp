<%--
  Created by IntelliJ IDEA.
  User: baek
  Date: 2021-08-18
  Time: 오전 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("name","Session Test!");
    session.setMaxInactiveInterval(3); //3초후 세션 만료
%>
<script>
    location.href="sessionTest.jsp"
</script>
