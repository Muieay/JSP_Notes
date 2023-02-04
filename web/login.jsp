<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<%--登陆成功跳转main（主页面）--%>
<%--登陆失败跳转register（注册页面）--%>
<body>
    <form method="post" action="servlet/logServlet">
        ID:<input type="text" name="id" size="15"><br>
        Name:<input type="text" name="name" size="15"><br>
        <input type="submit" name="submit" value="Login">
    </form>
</body>
</html>
