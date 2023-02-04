<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%! int a,b,c;
      public int sum(int a,int b){
        int c=0;
        c=a+b;
        return c;
      }
  %>
  <h1>
    数字=<% a=2;b=5;c=sum(a,b);%>
  </h1>
  <%=c%>
  </body>
</html>