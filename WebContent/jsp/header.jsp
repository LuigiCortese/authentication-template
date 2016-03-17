<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style type="text/css">form{display:inline}</style>

<c:if test="${user.authenticated}">Hello ${user.name}, </c:if>

<c:choose>
	<c:when test="${not user.authenticated}">
		<form action="j_security_check" method=post>
			<strong>Username:</strong>
			<input type="text" name="j_username" size="25">
			<strong>Password: </strong>
			<input type="password" size="15" name="j_password">
			<input type="submit" value="Submit">
		</form>
<%-- 		<a href="${pageContext.request.contextPath}">login</a> --%>
	</c:when>
	<c:otherwise>
		need to <a href="${pageContext.request.contextPath}/LogoutServlet">logout</a>?
	</c:otherwise>
</c:choose>
<br>
----------------------------------------------------------------
<p>