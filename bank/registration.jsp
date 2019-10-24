<%-- 
    Document   : logout
    Created on : 17 Oct, 2019, 2:42:19 PM
    Author     : wad33
--%>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String accno = request.getParameter("accno");
    String balance = request.getParameter("balance");
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO bank(name, age, gender, accountno, balance, username, password) VALUES ('"+fname+"','"+age+"','"+gender+"','"+accno+"','"+balance+"','"+ user+"','" + pwd +"');");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>