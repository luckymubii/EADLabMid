package servlets;

import Db.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PostJobServlet")
public class PostJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String  title= request.getParameter("title");

        String description = request.getParameter("description");
        String jobtype = request.getParameter("male");

        String jobcity = request.getParameter("city");

        String posttime = request.getParameter("postedtime");





            PrintWriter out = response.getWriter();
            DbConnection obj = new DbConnection();

            int result = obj.insertJob(title, description, jobtype,jobcity,posttime);
            System.out.println(result);

            if (result > 0) {
                out.write("Data Inserted Successfully");
                response.sendRedirect("jobs.jsp");

            } else {
                out.write("OOPs Data not Inserted");




        }







    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
