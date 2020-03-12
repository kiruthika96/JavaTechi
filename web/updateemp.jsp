<%-- 
    Document   : updateemp
    Created on : Jan 23, 2020, 12:34:45 AM
    Author     : kiruthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String upskill=request.getParameter("upskill");
            String upemail=request.getParameter("upemail");             
                            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
            
            int a=st.executeUpdate("update etbl1 set skill='"+upskill+"' where email='"+upemail+"'");
            %>
           
            <h1 style="color:white;"> Your skill is updated successfully </h1> 
         <form action="login.html" method="post">
             <input type="submit" value="ok" name="ok" style="width:60px;height:40px;font-size:18px">
         </form>
     
    </body>
    </body>
</html>
