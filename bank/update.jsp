<%-- 
    Document   : update
    Created on : 17 Oct, 2019, 3:00:12 PM
    Author     : wad33
--%>

<%@ page import = "java.sql.*" %>
<%
        String fname = request.getParameter("fname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String accno = request.getParameter("accno");
        String balance = request.getParameter("balance");
        String user = request.getParameter("uname");
        String pwd = request.getParameter("pass");
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
        Statement st = con.createStatement();
        int i = st.executeUpdate("UPDATE bank set name = '"+fname+"', age = '"+age+"', gender = '"+gender+"', accountno = '"+accno+"', balance = '"+balance+"', username = '"+user+"', password = '"+pwd+"';");
        if (i > 0) 
        {
        out.println("Updation Successfull!"+"<a href='success.jsp'>Go to Home</a>");
        } 
        else {
        response.sendRedirect("index.jsp");
        }
%>
