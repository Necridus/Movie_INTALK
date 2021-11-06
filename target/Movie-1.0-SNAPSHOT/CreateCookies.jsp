<%--
  Created by IntelliJ IDEA.
  User: kimme
  Date: 2021. 10. 27.
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Creating Cookies</title>
</head>
<body>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String actionThriller = request.getParameter("actionThriller");
    String scifi = request.getParameter("scifi");
    String family = request.getParameter("family");

    request.setAttribute("actionThriller", actionThriller);
    request.setAttribute("scifi", scifi);
    request.setAttribute("family", family);
%>

<c:choose>
    <c:when test="${actionThriller eq null && scifi eq null && family eq null}">
        <%
        response.sendRedirect("Recommendation.jsp");
        //          EZZEL VALÓBAN ÁTVÁLTUNK A Recommendation.jsp FÁJLRA
        %>
        <%--        <jsp:forward page = "Recommendation.jsp" />
                   EZZEL MÉG MINDIG A CreateCookies.jsp-RE NÉZÜNK, NEM VÁLTUNK TÉNYLEGESEN A FÁJLRA--%>
    </c:when>

    <c:otherwise>
        <%
            if (actionThriller != null)
            {
                Cookie actionCookie = new Cookie("actionThriller", actionThriller);
                actionCookie.setMaxAge(31*24*60*60);
                response.addCookie(actionCookie);
            }
            if (scifi != null)
            {
                Cookie scifiCookie = new Cookie("scifi", scifi);
                scifiCookie.setMaxAge(31*24*60*60);
                response.addCookie(scifiCookie);
            }
            if (family != null)
            {
                Cookie familyCookie = new Cookie("family", family);
                familyCookie.setMaxAge(31*24*60*60);
                response.addCookie(familyCookie);
            }
            response.sendRedirect("Test.jsp");
//          EZZEL VALÓBAN ÁTVÁLTUNK A Test.jsp FÁJLRA, ÉS HA MOST HOZTUK LÉTRE A COOKIE-KAT, EGYBŐL MEGJELENNEK
        %>
<%--        <jsp:forward page = "Test.jsp" />
           EZZEL CSAK EGY FRISSÍTÉS UTÁN TÖLTŐDNEK BE A KÉPEK, HA CSAK MOST HOZTUK LÉTRE A COOKIE-KAT,
           MERT MÉG MINDIG A CreateCookies.jsp-RE NÉZ--%>
    </c:otherwise>
</c:choose>
</body>
</html>
