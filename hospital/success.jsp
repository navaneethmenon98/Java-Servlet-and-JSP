<%-- 
    Document   : success
    Created on : 17 Oct, 2019, 2:39:47 PM
    Author     : wad33
--%>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<h1 style = "text-align:center;">Welcome <%=session.getAttribute("userid")%></h1>
<br><br><a href="up.jsp">Update account</a><br><br><br>
Delete account
<form method = "post" action = "delete.jsp">
    <input type = "text" placeholder ="Enter username" name = "uname">
    <input type = "submit" value = "View Details">
</form><br>
Search
<form method = "post" action = "search.jsp">
    <input type = "text" placeholder ="Enter username" name = "username">
    <input type = "submit" value = "View Details">
</form>
<br><br><a href="display.jsp">View all</a><br><br>
<a href='index.jsp'>Log out</a>
<%
    }
%>