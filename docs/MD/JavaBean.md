---
title: JavaBean
---



# JavaBean

JavaBean 是特殊的 Java 类，使用 Java 语言书写，并且遵守 JavaBean API 规范。

接下来给出的是 JavaBean 与其它 Java 类相比而言独一无二的特征：

- 提供一个默认的无参构造函数。
- 需要被序列化<del>并且实现了 Serializable 接口</del>。
- 提供 getter 或 **setter** 方法。

例：

```java
public class Cat {
    private String name;
    private int age;

    public Cat(){
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
```



## JSP访问JavaBean

```jsp
<jsp:useBean id="id" class="bean 编译的类" scope="bean 作用域">
   <jsp:setProperty name="bean 的 id" property="属性名" value="value"/>
</jsp:useBean>

<jsp:getProperty name="bean 的 id" property="属性名"/>
```

