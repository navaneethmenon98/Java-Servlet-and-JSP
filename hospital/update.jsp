<%-- 
    Document   : update
    Created on : 17 Oct, 2019, 3:00:12 PM
    Author     : wad33
--%>

<%@ page import = "java.sql.*" %>
<%
        String user = request.getParameter("uname");    
        String pwd = request.getParameter("pass");
        String name = request.getParameter("fname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String blood = request.getParameter("blood");
        String hb = request.getParameter("hb");
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        String bp = request.getParameter("bp");
        Class.forName("org.postgresql.Driver");
        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
        Statement st = con.createStatement();
        int i = st.executeUpdate("UPDATE hospital set name = '"+name+"', age = '"+age+"', gender = '"+gender+"', bloodgroup = '"+blood+"', height = '"+height+"', weight = '"+weight+"', bloodpressure = '"+bp+"', haemoglobin = '"+hb+"', username = '"+user+"';");
        if (i > 0) 
        {
        out.println("Updation Successfull!"+"<a href='success.jsp'>Go to Home</a>");
        } 
        else {
        response.sendRedirect("index.jsp");
        }
%>
