<%-- 
    Document   : HR
    Created on : Jan 21, 2020, 3:32:30 PM
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
        
       
        <!-- <a href="search.jsp"> search</a> -->
        
        <%

            String uid=request.getParameter("uid");           
            String pass=request.getParameter("pass");
            
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
           
            
            
            ResultSet rs = st.executeQuery("select * from tbl where id='"+uid+"' "); 
   
            if(rs.next())
            { 
            if(rs.getString(2).equals(pass))
            { %>
            <h2 style="color:white;"><%out.println(uid);%></h2>
   
             <form action="search.jsp" method="post">
        <input type="text" name="sname" placeholder="search skill">
        <input type="submit" name="submit" value="Search" style="width:100px;hight:20px;font-size:20px">
        </form> 
      
        <form action="delete.jsp" method="post">
        <input type="text" name="dname" placeholder="delete">
        <input type="submit" name="submit" value="Delete" style="width:100px;hight:20px;font-size:20px">
        </form>
        
        <form action="updatehr.jsp" method="post">
         <table>
          <tr> <td><input type="text" name="upname" placeholder="employee name"</td>
           <td> <input type="text" name="upskill" placeholder="update skill"></td>
            <td> <input type="submit" name="submit" value="Update" style="width:100px;hight:20px;font-size:20px"></td>
             </tr>
              </table>
               </form> 
     
   
   
                <% } 
                             else   
                             {%>
            <center><h1><%out.println("Ivalid password");%></h1></center>
                             <%@include file="HR.html" %>%>
                             <% }
                 
                                } %>
       </html>


<%-- out.println("welcome HR");%>
                    <br>
                    <%
ResultSet rs1 = st.executeQuery("select * from etbl1"); %>
                    --%>