<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <h1>Hello</h1>
    <% out.println("你的 IP 地址 " + request.getRemoteAddr()); %>

<pre>
    JSP中一种有两种类型的注释:
        1.显式注释
            能够在客户端查看的注释
            1.继承HTML风格的注释 &gt;--HTML注释 --&gt;
            <! --HTML注释->
        2．隐式注释
            不能在客户端查看的注释
            1.JSP自己的注释&lt ; %--JSP自己的注释--%&gt ;
            2．继承Java风格的注释
            //单行注释
            /*多行注释*/
</pre>
    <div>
        <%
            String str="Hello World";
            System.out.println(str);
            out.println(str);
            System.out.println(name);
            out.println(name);
        %>
        <hr>
        <%!
            String name="全局";
        %>
        <%=name%>
        <%=str%>
    </div>
</body>
</html>
