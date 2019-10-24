<%-- 
    Document   : index
    Created on : 17 Oct, 2019, 2:08:03 PM
    Author     : wad33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
          <style>
            div
            {
                font-size: 25px;
                border: 3px solid #f1f1f1;
                text-align: center;
                margin: 125px 300px 20px;
            }
        </style>
    </head>
    <body>
        <div>
        <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="15">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Registered?? <br> <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        </div>
    </body>
</html>
