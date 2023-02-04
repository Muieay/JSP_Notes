<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.entity.User" scope="session"/>
<html>
<head>
    <title>JavaBean测试</title>
</head>
<body>
  <form action="" method="post">
    <input type="text" name="id">
    <input type="text" name="name">
    <input type="text" name="sex">
    <input type="submit" value="提交">
  </form>
  <hr>
  <jsp:setProperty name="user" property="*"/>

  <jsp:getProperty name="user" property="id"/>
  <jsp:getProperty name="user" property="name"/>
  <jsp:getProperty name="user" property="sex"/>
</body>
</html>
