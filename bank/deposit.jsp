<%-- 
    Document   : deposit
    Created on : 24 Oct, 2019, 3:15:28 PM
    Author     : wad33
--%>

<%@ page import = "java.sql.*" %>
<%
        
        String amount = request.getParameter("amount");
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
        Statement st = con.createStatement();
        int i = st.executeUpdate("UPDATE bank set balance = balance +'"+amount+"';");
        if (i > 0) 
        {
        out.println("Updation Successfull!"+"<a href='success.jsp'>Go to Home</a>");
        } 
        else {
        response.sendRedirect("index.jsp");
        }
%>