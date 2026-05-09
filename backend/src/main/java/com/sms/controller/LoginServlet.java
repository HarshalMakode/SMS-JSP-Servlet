package com.sms.controller;

import com.sms.dao.UserDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        UserDAO dao = new UserDAO();

        boolean valid =
                dao.validateUser(username, password);

        if(valid){

            HttpSession session =
                    request.getSession();

            session.setAttribute("user", username);

            response.sendRedirect(
                    "views/dashboard/dashboard.jsp"
            );

        } else {

            response.getWriter()
                    .println("<h2>Invalid Credentials</h2>");
        }
    }
}