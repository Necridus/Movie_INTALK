<%--
  Created by IntelliJ IDEA.
  User: kimme
  Date: 2021. 10. 27.
  Time: 18:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Filmajánló - Eredmény</title>
</head>
<body>
<h1>
    Filmajánló a hónapra
</h1>
<c:choose>
    <c:when test="${cookie['actionThriller'] eq null && cookie['scifi'] eq null && cookie['family'] eq null}">
        <%
            response.sendRedirect("Recommendation.jsp");
            //          EZZEL VALÓBAN ÁTVÁLTUNK A Recommendation.jsp FÁJLRA
        %>
        <%--        <jsp:forward page = "Recommendation.jsp" />
                   EZZEL MÉG MINDIG A CreateCookies.jsp-RE NÉZÜNK, NEM VÁLTUNK TÉNYLEGESEN A FÁJLRA--%>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${cookie['actionThriller'] ne null}">
                <h2>
                    Akció-Thriller film ajánlatunk:
                </h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ultricies ex. Ut vel ex nec velit blandit pharetra. In imperdiet mollis maximus. Cras vitae tristique nisl. Suspendisse blandit orci est, quis lobortis erat tempor sit amet. Nullam faucibus arcu ac eros rutrum euismod. Donec fringilla tincidunt massa. In dignissim, est sit amet tristique blandit, turpis purus vulputate dui, non suscipit quam purus ac odio.
                </p>
                <p>
                    Aliquam erat volutpat. Duis efficitur mauris vel turpis laoreet consectetur. Aenean accumsan mi nec finibus porttitor. Suspendisse ullamcorper est sit amet augue rhoncus, a semper nibh ornare. Donec id odio non tortor elementum tristique. Morbi ut mauris ullamcorper, faucibus ipsum sit amet, auctor purus. Nam dapibus metus sed lectus condimentum, vitae scelerisque magna dictum. Phasellus ut dolor et magna semper rhoncus.
                </p>
                <img src="Posters/akcio.jpg" width="500">
            </c:when>
        </c:choose>
        <c:choose>
            <c:when test="${cookie['scifi'] ne null}">
                <h2>
                    Sci-fi film ajánlatunk:
                </h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ultricies ex. Ut vel ex nec velit blandit pharetra. In imperdiet mollis maximus. Cras vitae tristique nisl. Suspendisse blandit orci est, quis lobortis erat tempor sit amet. Nullam faucibus arcu ac eros rutrum euismod. Donec fringilla tincidunt massa. In dignissim, est sit amet tristique blandit, turpis purus vulputate dui, non suscipit quam purus ac odio.
                </p>
                <p>
                    Aliquam erat volutpat. Duis efficitur mauris vel turpis laoreet consectetur. Aenean accumsan mi nec finibus porttitor. Suspendisse ullamcorper est sit amet augue rhoncus, a semper nibh ornare. Donec id odio non tortor elementum tristique. Morbi ut mauris ullamcorper, faucibus ipsum sit amet, auctor purus. Nam dapibus metus sed lectus condimentum, vitae scelerisque magna dictum. Phasellus ut dolor et magna semper rhoncus.
                </p>
                <img src="Posters/sci-fi.jpg" width="500">
            </c:when>
        </c:choose>
        <c:choose>
            <c:when test="${cookie['family'] ne null}">
                <h2>
                    Családi film ajánlatunk:
                </h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In a ultricies ex. Ut vel ex nec velit blandit pharetra. In imperdiet mollis maximus. Cras vitae tristique nisl. Suspendisse blandit orci est, quis lobortis erat tempor sit amet. Nullam faucibus arcu ac eros rutrum euismod. Donec fringilla tincidunt massa. In dignissim, est sit amet tristique blandit, turpis purus vulputate dui, non suscipit quam purus ac odio.
                </p>
                <p>
                    Aliquam erat volutpat. Duis efficitur mauris vel turpis laoreet consectetur. Aenean accumsan mi nec finibus porttitor. Suspendisse ullamcorper est sit amet augue rhoncus, a semper nibh ornare. Donec id odio non tortor elementum tristique. Morbi ut mauris ullamcorper, faucibus ipsum sit amet, auctor purus. Nam dapibus metus sed lectus condimentum, vitae scelerisque magna dictum. Phasellus ut dolor et magna semper rhoncus.
                </p>
                <img src="Posters/csaladi.jpg" width="500">
            </c:when>
        </c:choose>
    </c:otherwise>
</c:choose>
</body>
</html>
