<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
     <title>
        User Page
    </title>
    <body>
        <h1>Title : ${title}</h1>
        <h1>Message : ${message}</h1>
        You are in user page

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>Welcome : ${pageContext.request.userPrincipal.name} 
                <a href="<c:url value="/logout" />">Logout</a></h2>  
            </c:if>
    </body>
</html>
