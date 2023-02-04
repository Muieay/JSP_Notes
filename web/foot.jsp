<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>底部</h1>
    <%
        String msg=request.getParameter("msg");
    %>
    <p><%=msg%></p>
</body>
</html>
