---
title: include 包含
---

## 静态包含

格式:（JSP 指令）
        `<%@include fil="要包含的页面路径" />`

```jsp
<div>
    <%@include file="header.jsp"%>
    <h2>静态包含Body</h2>
    <%@include file="foot.jsp"%>
</div>
```

静态包含就是将内容进行了直接的替换，就好比程序中定义的变量一样，是在servlet引擎转译时，就把此文件内容包含了进去(两个文件的源代码整合到一起，全部放到_ispSenvice方法中，所以只生成了一个servlet,所以**两个页面不能有同名的变量**。

运行效率高一点点。耦合性较高，不够灵活。



## 动态包含

格式:（JSP 动作元素）

​        `<jsp:include page="要包含的页面路倒 ></jsp:include>`
特点:
​        1．动态包含相当于方法的调用
​        2．动态包含会生成多个源码文件
​        3．可以定义同名变量
​        4．效率高，耦合度低
注意：
​            当动态包含不需要传递参数时，include双标签之间不要有任何内容，包括换行和空格
使用动态包含传递参数:

```JSP
<jsp:include page="要包含的页面路径">
<jsp: param name="参数名" value="参数值"/></jsp:include>
```

注: 
name属性不支持表达式，value属性支持表示
获取参数:

```JAVA
request.getParameter(name);  //通过指定参数名获取参数值
```

例：

```jsp
// body.jsp
<div>
    <%
    	String str="hello";
    %>
    <jsp:include page="header.jsp"/>
    	<h2>动态包含Body</h2>
    <jsp:include page="foot.jsp">
        <jsp:param name="msg" value="<%=str%>"/>
    </jsp:include>
</div>
```

```jsp
// foot.jsp
<h1>底部</h1>
<%
    String msg=request.getParameter("msg");
%>
<p><%=msg%></p>
```