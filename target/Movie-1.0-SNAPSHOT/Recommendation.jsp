<%--
  Created by IntelliJ IDEA.
  User: kimme
  Date: 2021. 10. 28.
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Filmajánló - FORM</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="background">
<h1>
    Filmajánló a hónapra
</h1>
<p class="bold">
    Milyen filmeket szeret?
</p>
<form action="CreateCookies.jsp" method="post">
    <table>
        <tr>
            <td rowspan="4">
                Film típusok:
            </td>
            <td>
                <label><input type="checkbox" name="actionThriller"> Akció-thriller</label>
            </td>
        </tr>
        <tr>
            <td>
                <label><input type="checkbox" name="scifi"> Sci-fi</label>
            </td>
        </tr>
        <tr>
            <td>
                <label><input type="checkbox" name="family"> Családi</label>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" class="pointer">
            </td>
        </tr>
    </table>
</form>
</body>
</html>