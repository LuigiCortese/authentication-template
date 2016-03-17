<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<c:if test="${user.authenticated}"><jsp:include page="/jsp/header.jsp" /></c:if>
<body>
<c:if test="${not user.authenticated}">
	Welcome to the login page! Why don't log in?
	
	<form action="j_security_check" method=post>
	    <p>
	        <strong>Username:</strong>
	        <input type="text" name="j_username" size="25">
	    <p>
	
	    <p>
	        <strong>Password: </strong>
	        <input type="password" size="15" name="j_password">
	    <p>
	
	    <p>
	        <input type="submit" value="Submit">
	</form>
</c:if>
<p>
Did you know that
<ul>
<li>
If you were an admin you could visit our <a href="${pageContext.request.contextPath}/jsp/admins/statistics.jsp">statistics page</a>...
</li>
<li>
If you were a member (or an admin, of course) you could visit our <a href="${pageContext.request.contextPath}/jsp/members/profile.jsp">profile page</a>...
</li>
<li>
Whoever you are, however, you can visit our <a href="${pageContext.request.contextPath}/jsp/aboutus.jsp">about-us page</a>.
</li>
</ul>
</body>
</html>