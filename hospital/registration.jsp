<%-- 
    Document   : registration
    Created on : 31 Oct, 2019, 2:02:23 PM
    Author     : wad33
--%>

<%@ page import ="java.sql.*" %>
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
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO hospital(name, age, gender, weight, height, username, bloodpressure, haemoglobin, bloodgroup, password) VALUES ('"+name+"','"+age+"','"+gender+"','"+weight+"','"+height+"','"+user+"','"+bp+"','"+hb+"','"+blood+"','" + pwd +"');");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>