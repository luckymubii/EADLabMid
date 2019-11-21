package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(email.equals("lucky")&& password.equals("12345678")){

            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            session.setMaxInactiveInterval(30*60);


            /*
            Cookie loginCookie = new Cookie("email",email);
            loginCookie.setMaxAge(30*60);
            response.addCookie(loginCookie);
            */
            response.sendRedirect("jobs.jsp");

        }else {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            PrintWriter out = response.getWriter();
            out.write("<p style='color:red;'>Invalid Username or Password</p>");
            rd.include(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
