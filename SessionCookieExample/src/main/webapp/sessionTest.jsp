<%--
  Created by IntelliJ IDEA.
  User: baek
  Date: 2021-08-18
  Time: 오전 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String name;
  if (session.getAttribute("name") != null){
    name = (String)session.getAttribute("name");
  }else{
    name="세션 값 없음.";
  }
%>
<html>
<head>
    <title>Session Test</title>
</head>
<body>
  <h2>세션 테스트</h2>
  <input type="button" onclick="location.href='sessionSet.jsp'" value="세션 값 저장">
  <input type="button" onclick="location.href='sessionDel.jsp'" value="세션 값 삭제">
  <input type="button" onclick="location.href='sessionInvalidate.jsp'" value="세션 초기화">
  <h3><%=name%>></h3>
</body>
</html>
