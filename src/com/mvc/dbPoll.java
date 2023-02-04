package com.mvc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//连接数据库
public class dbPoll {
    Connection con=null;
    String driver="com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://127.0.0.1:3306/student";
    String username="root";
    String password="000000";

    public Connection getCon(){
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url,username,password);
            System.out.println("数据库连接成功");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    public void closeAll(Connection con, PreparedStatement ps, ResultSet rs){
        try {
            if (rs!=null) rs.close();
            if (ps!=null) ps.close();
            if (con!=null) con.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
