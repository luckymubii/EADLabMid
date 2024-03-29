package Db;

import java.sql.*;

/**
 * Created by Lucky Ali 10/16/2019.
 */
public class DbConnection {
    private String dbURL = "jdbc:mysql://localhost:3306/eadlabmid";
    private String username = "root";
    private String password = "";
    private Connection connection;
    public DbConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL,username,password);
            if(connection!=null){
                System.out.println("Success");
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int insertData(String name,String email,String password){
        try {
            String sqlQuery = "INSERT INTO user(name,email,password) VALUES(?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);



            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted Successfully!");
                return noOfRowsInserted;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
        return  0;
    }


    public int insertJob(String title,String description,String jobtype,String jobcity,String posttype,int postedby){
        try {
            String sQuery = "INSERT INTO jobs(title,description,jobtype,jobcity,posttype,postedby)VALUES(?,?,?,?,?,?)";
            PreparedStatement pStatement = connection.prepareStatement(sQuery);
            pStatement.setString(1, title);
            pStatement.setString(2, description);
            pStatement.setString(3, jobtype);
            pStatement.setString(4, jobcity);
            pStatement.setString(5, posttype);
            pStatement.setInt(6, postedby);

            int noOfRowsInserted = pStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted Successfully!");
                return noOfRowsInserted;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
        return  0;
    }




    public void update(String username,String password,String firstname,String lastname,String dofbirth,String emailaddress,String username1){
        try {
            String sqlQuery = "UPDATE student Set username=?, password=?, firstname=?, lastname=?, dofbirth=?,emailaddress=? WHERE username=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, firstname);
            preparedStatement.setString(4, lastname);
            preparedStatement.setString(5, dofbirth);
            preparedStatement.setString(6, emailaddress);
            preparedStatement.setString(7, username1);



            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted!");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet displayRecords(){
        ResultSet result = null;
        try {
            String sqlQuery = "SELECT * FROM user";
            Statement statement = connection.createStatement();
            result = statement.executeQuery(sqlQuery);
            return result;

        } catch (SQLException e) {
            e.printStackTrace();
            return result;
        }
    }

    public ResultSet displayJobRecords(){
        ResultSet result = null;
        try {
            String sqlQuery = "SELECT * FROM jobs";
            Statement statement = connection.createStatement();
            result = statement.executeQuery(sqlQuery);
            return result;

        } catch (SQLException e) {
            e.printStackTrace();
            return result;
        }
    }
}
