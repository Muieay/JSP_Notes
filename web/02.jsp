<%--
  User: Muieay
  Date: 2022/9/10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title2</title>
</head>
<body>
    <jsp:include page="head.jsp"/>
    <%=str%>
    <jsp:include page="footer.jsp"/>

    <%!
        //全局变量
        String str="hello world";
    %>
</body>
</html>
