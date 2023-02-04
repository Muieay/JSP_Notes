---
title: EL
---

## EL表达式

让Jsp的代码更加简化

```sh
${msg}
```

一般操作的都是<mark>域对象中</mark>的数据，操作不了局部变量。

在域对象中从小到大获取对象值

支持

- 算术运算符

- 比较运算符

- 逻辑运算符

  | EL逻辑运算符 | 说明 | 范例                          | 结果  |
  | ------------ | ---- | ----------------------------- | ----- |
  | && 或 and    | 与   | ${2>1&&3<4 } 或 ${2>1and3<4 } | true  |
  | \|\| 或 or   | 或   | ${2<1||3>4} 或 ${2<1or3>4}    | false |
  | ! 或 not     | 非   | ${!(2>4)} 或 ${not (2>4)}     | true  |

- 其它运算符

  - empty

    用来判断 EL 表达式中的对象或者变量是否为空。若为空或者 null，返回 true，否则返回 false。

  - 条件运算符

    ```jsp
    ${条件表达式?表达式1:表达式2}
    ```





## EL内置对象

为了显示方便，EL 表达式语言提供了许多内置对象，可以通过不同的内置对象来输出不同的内容。EL 表达式内置对象如下：

| 内置对象         | 说明                                                         |
| ---------------- | ------------------------------------------------------------ |
| pageScope        | 获取 page 范围的变量                                         |
| requestScope     | 获取 request 范围的变量                                      |
| sessionScope     | 获取 session 范围的变量                                      |
| applicationScope | 获取 application 范围的变量                                  |
| param            | 相当于 request.getParameter(String name)，获取单个参数的值   |
| paramValues      | 相当于 request.getParameterValues(String name)，获取参数集合中的变量值 |
| header           | 相当于 request.getHeader(String name)，获取 HTTP 请求头信息  |
| headerValues     | 相当于 request.getHeaders(String name)，获取 HTTP 请求头数组信息 |
| initParam        | 相当于 application.getInitParameter(String name)，获取 web.xml 文件中的参数值 |
| cookie           | 相当于 request.getCookies()，获取 cookie 中的值              |
| pageContext      | 表示当前 JSP 页面的 pageContext 对象                         |





## 禁用EL表达式

如果不想使用 EL 表达式，可以禁用 EL 表达式。禁用 EL 表达式有以下 3 种方法：

##### 禁用单个EL表达式

在 EL 表达式前加 `\`，例如：

`\${2+3}`

页面输出：

`${2+3}`



##### 禁用当前页面的EL表达式

将 page 指令中的 isELIgnored 属性设置为 true，如下：

`<%@ page isELIgnored="true" %>`


##### 禁用整个Web应用的EL表达式

在 web.xml 中配置 `<el-ignored>` 元素，如下：

```xml
<jsp-property-group>
    <url-pattern>*jsp</url-pattern>
    <el-ignored>false</el-ignored>
</jsp-propery-group>
```



[学习更多](http://c.biancheng.net/jsp2/el.html)

