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
                ResultSet rs = stmt.executeQuery("select * from hospital;");
                while(rs.next())
                {
                       String user = rs.getString("username");    
                       String pwd = rs.getString("password");
                       String fname = rs.getString("name");
                       String age = rs.getString("age");
                       String gender = rs.getString("gender");
                       String blood = rs.getString("bloodgroup");
                       String height = rs.getString("height");
                       String weight = rs.getString("weight");
                       String hb = rs.getString("haemoglobin");
                       String bp = rs.getString("bloodpressure");
                        out.println("Name :"+fname);%>
                        <br><br>
                       <% out.println("Age :"+age);%>
                       <br><br>
                       <% out.println("Gender :"+gender);%>
                        <br><br>
                       <% out.println("Blood Group :"+blood);%>
                        <br><br>
                       <%out.println("Height :"+height);%>
                        <br><br>
                       <%out.println("Weight :"+weight);%>
                        <br><br>
                       <%out.println("Blood Pressure :"+bp);%>
                        <br><br>
                       <%out.println("Haemoglobin :"+hb);%>
                        <br><br>
                       <%out.println("Username:"+user);%>
                        <br><br>
                       <%break;
                    
                }
%>
