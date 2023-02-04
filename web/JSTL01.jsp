<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String msg="Hello world";
        int age=18;
        String sex="男";
        
        request.setAttribute("name","张三");
    %>
    <div>
        <c:if test="${1==1}">
            Hello World
        </c:if>
        <br>
        <c:forEach var="i" begin="1" end="10" step="2">
            ${i} &nbsp;
        </c:forEach>
    </div>
</body>
</html>
