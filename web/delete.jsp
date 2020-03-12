<%-- 
    Document   : delete
    Created on : Jan 22, 2020, 6:30:44 PM
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
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
       
        <%
            
            String dname=request.getParameter("dname");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
           
            int a=st.executeUpdate("delete from etbl1 where fname='"+dname+"'");  
            %>
            
            <h1 style="color:white;"><% out.println(dname);%> details was recently deleted </h1> 
         
         <form action="HR.jsp" method="post">
             <input type="submit" value="ok" name="ok" style="width:60px;height:40px;font-size:18px">
         </form>
               
               
        %>
                                                                                   
                  

    </body>
</html>
    </body>
</html>
