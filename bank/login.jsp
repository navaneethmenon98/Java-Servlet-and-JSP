<%-- 
    Document   : login
    Created on : 17 Oct, 2019, 2:09:45 PM
    Author     : wad33
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*" %>
<%
    String userid = request.getParameter("uname"); 
    String pwd = request.getParameter("pass");
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres",
            "postgres", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from bank where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    
%>