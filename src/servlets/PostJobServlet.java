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
import java.sql.Time;
import java.sql.Timestamp;

@WebServlet(name = "PostJobServlet")
public class PostJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String  title= request.getParameter("title");

        String description = request.getParameter("description");


        String jobcity = request.getParameter("jobcity");
        String selectedItem=null;
        if(request.getParameter("jobcity")!=null)
        {
            selectedItem=(request.getParameter("jobcity"));
        }
        String posttime="12:40am";



        String jobtype = request.getParameter("jobtype");

        int userId = 0;
        HttpSession session1 = request.getSession(false);
        if (session1!=null){
            if(session1.getAttribute("userId")!=null){
                userId = (int)session1.getAttribute("userId");
            }else
                response.sendRedirect("login.jsp");
        }

        if(title.equals("")||description.equals("")){
            System.out.println("empty");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/postJob.jsp");
            PrintWriter out = response.getWriter();
            out.write("<p style='color:red;'>Please Fill all the field </p>");
            rd.include(request,response);

        }
        else {

            PrintWriter out = response.getWriter();
            DbConnection obj = new DbConnection();

            int result = obj.insertJob(title, description, jobtype, selectedItem, posttime, userId);
            System.out.println(result);

            if (result > 0) {
                out.write("Data Inserted Successfully");
                response.sendRedirect("jobs.jsp");

            } else {
                out.write("OOPs Data not Inserted");
                response.sendRedirect("postJob.jsp");


            }


        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
