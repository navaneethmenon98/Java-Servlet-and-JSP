<%-- 
    Document   : display
    Created on : 17 Oct, 2019, 3:27:16 PM
    Author     : wad33
--%>

<%@ page import ="java.sql.*" %>
<%
                Class.forName("org.postgresql.Driver");
                Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
                    "postgres", "root");
                Statement stmt = con.createStatement();
                String username = null;
                Boolean found = false;
                String _username = request.getParameter("username");
                ResultSet rs = stmt.executeQuery("select * from bank;");
                while(rs.next())
                {
                    username = rs.getString("username");
                    if (username.equals(_username))
                    {
                       String user = rs.getString("username");    
                       String pwd = rs.getString("password");
                       String fname = rs.getString("name");
                       String age = rs.getString("age");
                       String gender = rs.getString("gender");
                       String accno = rs.getString("accountno");
                       String balance = rs.getString("balance");
                        out.println("Name :"+fname);%>
                        <br><br>
                       <% out.println("Age :"+age);%>
                       <br><br>
                       <% out.println("Gender :"+gender);%>
                        <br><br>
                       <% out.println("Accountno :"+accno);%>
                        <br><br>
                       <%out.println("Balance :"+balance);%>
                        <br><br>
                       <%out.println("Username:"+user);%>
                        <br><br>
                       <%break;
                    }
                }
%>