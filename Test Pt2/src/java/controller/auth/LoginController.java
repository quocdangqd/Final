/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.auth;

import dal.UserDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.user;



/**
 *
 * @author sonnt
 */
public class LoginController extends HttpServlet {
   
     

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("view/auth/login.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDBContext db = new UserDBContext();
        user user = db.get(username, password);
        if(user ==null)
        {
            response.getWriter().println("login failed!");
        }
        else
        {
            request.getSession().setAttribute("user", username);
            response.getWriter().println("login successful!");
        }

    }

      @Override
    public String getServletInfo() {
        return "Short description";
    }

}
