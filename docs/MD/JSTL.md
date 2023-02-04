---
title: JSTL
---

# JSP 标准标签库（JSTL）

[官方下载地址](http://archive.apache.org/dist/jakarta/taglibs/standard/binaries/)

JSP标准标签库（JSTL）是一个JSP标签集合，它封装了JSP应用的通用核心功能。

JSTL支持通用的、结构化的任务，比如迭代，条件判断，XML文档操作，国际化标签，SQL标签。 除了这些，它还提供了一个框架来使用集成JSTL的自定义标签。

根据JSTL标签所提供的功能，可以将其分为5个类别。

- **核心标签**
- **格式化标签**
- **SQL 标签**
- **XML 标签**

[菜鸟教程](https://www.runoob.com/jsp/jsp-jstl.html)



### 用法：

引入标签库（taglib指令）

```jsp
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```

例：

```jsp
<c:if test="${1==1}">
    Hello World
</c:if>
<br>
<c:forEach var="i" begin="1" end="10" step="2">
    ${i} &nbsp;
</c:forEach>
```
