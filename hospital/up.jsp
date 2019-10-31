<%-- 
    Document   : up
    Created on : 17 Oct, 2019, 3:21:30 PM
    Author     : wad33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <form method="post" action="update.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Age</td>
                        <td><input type="text" name="age" value="" /></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="text" name="gender" value="" /></td>
                    </tr>
                    <tr>
                        <td>Blood group</td>
                        <td><input type="text" name="blood" value="" /></td>
                    </tr>
                    <tr>
                        <td>Hb level</td>
                        <td><input type="text" name="hb" value="" /></td>
                    </tr>
                    <tr>
                        <td>Weight</td>
                        <td><input type="text" name="weight" value="" /></td>
                    </tr>
                    <tr>
                        <td>Blood pressure</td>
                        <td><input type="text" name="bp" value="" /></td>
                    </tr>
                    <tr>
                        <td>Height</td>
                        <td><input type="text" name="height" value="" /></td>
                    </tr>
                    <tr>
                        <td>MR Number</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
