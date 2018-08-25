<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
    <title>
        Admin Page
    </title>
    <body>
        <h1>Title : ${title}</h1>
        <h1>Message : ${message}</h1>

        You are in Admin Page
    <c:url value="/j_spring_security_logout" var="logoutUrl" />

    <!-- csrt support -->
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" 
               name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>

    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome : ${pageContext.request.userPrincipal.name}
                
               <a href="<c:url value="/logout" />">Logout</a>
           
        </h2>
    </c:if>

</body>
</html>