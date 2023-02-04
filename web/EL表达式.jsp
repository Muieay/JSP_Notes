<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
    <%
        pageContext.setAttribute("name2222222","page");
        request.setAttribute("name","request");
        session.setAttribute("name","session");
        application.setAttribute("name","application");

//        1.如果el表达式获取域对象的值为空，默认显示空字符串
//        2.el表达式默认从小到大范围去找，找到即可，如果四个范围都未找到，则显示空字符串
        String msg="el表达式无法获取局部变量";


        List<String> list=new  ArrayList<>();

        list.add("11111111");
        list.add("2222222222222");
        list.add("3333333333333");

        request.setAttribute("list",list);
    %>

    局部变量：${msg} <br>
    从小到大获取
    <h2>${name}</h2>

    <hr>
    <pre>
        ${list.size()}
        ${list[1]}
    </pre>
    <h3>---------------------------------------------------------</h3>
    <%
        request.setAttribute("str1","aaa");
        request.setAttribute("str2","");
        request.setAttribute("str3","null");
    %>
    判断字符串是否为空
    <pre>
        ${empty str1}
        ${empty str2}
        ${empty str3}
    </pre>

</body>
</html>
