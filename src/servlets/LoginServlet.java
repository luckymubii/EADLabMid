package servlets;

import Db.DbConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbConnection db = new DbConnection();
        ResultSet result = db.displayRecords();
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        try {
            while (result.next()) {

                int userId = result.getInt("userid");
                String emaill = result.getString("email");
                String passwords = result.getString("password");
                if (email.equals(emaill) && password.equals(passwords)) {

                    HttpSession session = request.getSession();
                    session.setAttribute("userId", userId);
                    session.setMaxInactiveInterval(30 * 60);


                    response.sendRedirect("jobs.jsp");

                }

            }
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            PrintWriter out = response.getWriter();
            out.write("<p style='color:red;'>Invalid Username or Password</p>");
            rd.include(request, response);
        } catch (SQLException e) {

        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
