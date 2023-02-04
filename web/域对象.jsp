<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <%
            pageContext.setAttribute("a1","page");
            request.setAttribute("a2","page");
            session.setAttribute("a3","session");
            application.setAttribute("a4","application");
        %>
        
<%--        <jsp:forward page="get域对象.jsp"></jsp:forward>--%>
        <a href="get域对象.jsp">跳转</a>
        <hr>
        <div>
            <%
                pageContext.setAttribute("a","page");
                request.setAttribute("a","page");
                session.setAttribute("a","session");
                application.setAttribute("a","application");
            %>
            <h1>${a}</h1>
        </div>
    </div>
</body>
</html>
