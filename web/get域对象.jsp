<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <%
            out.println("page域对象"+pageContext.getAttribute("a1")+"<br>");
            out.println("request域对象"+request.getAttribute("a2")+"<br>");
            out.println("session域对象"+session.getAttribute("a3")+"<br>");
            out.println("application域对象"+application.getAttribute("a4")+"<br>");
        %>
    </div>
</body>
</html>
