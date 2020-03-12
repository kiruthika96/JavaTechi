
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login jsp</title>
    </head>
    <body>
        
        <%@page import="java.sql.*"%>
        <%@page import="javax.sql.*"%>
       
        <%
            
            String uname=request.getParameter("uname");
            
            String pass=request.getParameter("pass");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;user=sa;password=Pass@123;databasename=emp");
            Statement st=con.createStatement();
           
            ResultSet rs=st.executeQuery("select * from etbl1 where fname='"+uname+"' ");             
            
            if(rs.next())
            { 
            if(rs.getString(4).equals(pass))
                {%>
                <h2 style="color: white"><%out.println("welcome");%></h2>
                    <h3 style="color: white"><%out.println("Name:"+rs.getString(1)+rs.getString(2));%></h3>
                     <h3 style="color: white"><%out.println("E-Mail:"+rs.getString(3));%></h3>
                        <h3 style="color: white"><%out.println("Skills:"+rs.getString(5));%></h3>
                         <%                }
                else
                {  %>
                <form action="login.html" method="post">
                    <h1> <% out.println("invalid password"); %> </h1>
                    <input type="submit" value="ok" style="width:100px;height:25px;font-size:20px">
                    </form>
               <% }
            }

       %>
            
            <%--
            ResultSet rs=st.executeQuery("select * from  etbl1");
             while(rs.next())
        {
            if(rs.getString(4).equals(pass))
            {  
                out.println("welcome"+"  "+uname); 
            }
           else
            {
                out.println("invalid password");
            }
        }
           
            ResultSet rs=st.executeQuery("select * from etbl1 where fname="+uname+"");
            
            while(rs.next())
            {
            out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4));
            }
                       --%>
           <h4 style="color:white;font-size:50px;text-align:center"> Add your skill </h4>
               <form action="updateemp.jsp" method="post">
                   <center>
         <table cellspacing="5px" cellpadding="5px" >
             <tr><td style="color:white;font-size:20px">E-mail</td>
                 
                 <td> <input type="text" name="upemail" placeholder="employee email" style="width:100px;height:20px;"></td></tr>
             <tr> <td style="color:white;font-size:20px">Skill</td>
                 <td> <input type="text" name="upskill" placeholder="update skill" style="width:100px;height:20px"></td></tr>
             <tr></tr>
             <tr></tr>
             <tr></tr>             
             <tr> <td> <input type="submit" name="submit" value="Update" style="width:100px;hight:20px;font-size:20px"></td>
             </tr>
              </table>
                       </center>
               </form>
  </body>
</html>
<%--
            
            --%>
