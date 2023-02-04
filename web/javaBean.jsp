<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <jsp:useBean class="com.entity.Student" id="student">
        <jsp:setProperty name="student" property="firstName" value="Hello"/>
        <jsp:setProperty name="student" property="lastName" value="World"/>
        <jsp:setProperty name="student" property="age" value="18"/>
    </jsp:useBean>
    
    <jsp:getProperty name="student" property="firstName"/>
</div>
</body>
</html>
