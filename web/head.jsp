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
  <h1>Head~~~</h1>
    <%
        String msg=request.getParameter("msg");
    %>
    <h1>信息：<%=msg%></h1>
</body>
</html>
