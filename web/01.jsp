<%--
  User: Muieay
  Date: 2022/9/10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //局部变量
        int a=10;
    %>
    <%@include file="head.jsp"%>
    <h1><%=a%></h1>
    <%@include file="footer.jsp"%>
</body>
</html>
