<%-- 
    Document   : delete
    Created on : 17 Oct, 2019, 3:10:38 PM
    Author     : wad33
--%>

<%@ page import = "java.sql.*" %>
<%
        String user = request.getParameter("uname");
        String username = null;
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
        Statement st = con.createStatement();
        int i = st.executeUpdate("delete from bank where username='"+user+"';");
        out.println("Successfully Deleted !"); 
                       
%>
