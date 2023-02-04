package com.mvc;

import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

//模型层
public class loginHandler {

    public loginHandler(){
   }
    Logger logger=Logger.getLogger(loginHandler.class);

   Connection con=null;
   PreparedStatement ps=null;
   ResultSet rs=null;

   public boolean checkLogin(ArrayList arr){
       dbPoll dbPoll=new dbPoll();
       con= dbPoll.getCon();
       int id= (int) arr.get(0);
       String name= (String) arr.get(1);
//       System.out.println(id+name);
       try {
           String sql="select * from user where id=? and name=?";
           ps=con.prepareStatement(sql);
           ps.setInt(1,id);
           ps.setString(2,name);
           logger.info("6666666666666");
           rs=ps.executeQuery();
           if (rs.next()){
               dbPoll.closeAll(con,ps,rs);
               return true;
           }else {
               dbPoll.closeAll(con,ps,rs);
               logger.info("8888888888888");
               return false;
           }
       }catch (Exception e){
           e.printStackTrace();
           logger.debug("999999999999");
           return false;
       }
   }

}
