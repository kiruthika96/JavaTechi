<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%@ page import="java.sql.*"%>
            <%@ page import="javax.sql.*"%>
        <%
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
            String pwd=request.getParameter("pwd");
            String skill=request.getParameter("skill");
             
                            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
            int a=st.executeUpdate("insert into etbl1 values ('"+fname+"','"+lname+"','"+email+"','"+pwd+"','"+skill+"')");
         %>
         
         <h1 style="color:white;"><% out.println(fname+" "+lname);%> Welcome to PCS.Your data is successfully registered </h1> 
         
         <form action="login.html" method="post">
             <input type="submit" value="ok" name="ok" style="width:60px;height:40px;font-size:18px">
         </form>
                 
        </body>
</html>
