<%-- 
    Document   : update
    Created on : Jan 22, 2020, 6:32:07 PM
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
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%
            String upskill=request.getParameter("upskill");
            String upname=request.getParameter("upname");             
                            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
            
            int a=st.executeUpdate("update etbl1 set skill='"+upskill+"' where fname='"+upname+"'");
            %>
            <h1 style="color:white;"><% out.println(upname);%> data is update successfully </h1> 
         
         <form action="HR.html" method="post">
             <input type="submit" value="ok" name="ok" style="width:60px;height:40px;font-size:18px">
         </form>
              
    </body>
</html>
