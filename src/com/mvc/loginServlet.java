package com.mvc;

import com.sun.net.httpserver.HttpServer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

//控制层
public class loginServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
        System.out.println("doGet........................");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");

        ArrayList arr = new ArrayList<>();
        arr.add(id);
        arr.add(name);

        HttpSession session= req.getSession(true);
        session.removeAttribute("id");
        session.removeAttribute("name");
        session.setAttribute("id",id);
        session.setAttribute("name",name);

        loginHandler login=new loginHandler();
        boolean flag = login.checkLogin(arr);

        if (flag) resp.sendRedirect("/mvc/main.jsp");
        else resp.sendRedirect("/mvc/register.jsp");

        System.out.println("doPost........................");
        System.out.println(id+"----------------");
        System.out.println(name+"----------------");
        System.out.println(session.getAttribute("id"));
        System.out.println(session.getAttribute("name"));
    }

    @Override
    public void destroy() {
        super.destroy();
    }

}
