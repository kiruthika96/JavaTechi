<%-- 
    Document   : search
    Created on : Jan 22, 2020, 7:12:12 AM
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
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
       
        
        <%    
            String sname=request.getParameter("sname");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
           
            ResultSet rs=st.executeQuery("select * from etbl1 where skill='"+sname+"' ");             
            
            while(rs.next())
            { 
            //if(rs.getString(5).equalsIgnoreCase(sname))
        //        {
        %>
                
                    <table cellpadding="5px" cellspacing="5px"  style="background-color:white">
                <tr>
                <td>Name</td><td><%out.println(rs.getString(1)+rs.getString(2));%></td>
                <td>E-Mail</td><td><% out.println(rs.getString(3));%></td>
                <td>Skill</td><td><% out.println(rs.getString(5));%></td>
                </tr>  
            </table>
          <%--                 <% }
                                else
                                    { 
                                  out.println("invalid search");
                                    }
--%>
<% }   %>

       <form action="HR.html" method="post">
           <input type="submit" value="ok" name="ok" style="width:60px;height:40px;font-size:18px">
       </form>
    </body>
</html>
<%-- <form action="HR.jsp" method="post">
                    <h1> <% out.println("invalid search"); %> </h1>
                    <input type="submit" value="ok" style="width:100px;height:25px;font-size:20px">
                    </form>   --%>