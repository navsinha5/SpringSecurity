<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>Hello Spring MVC</title>
   </head>
   
   <body>
      <h2>${message}</h2>
      
      <c:url value="/j_spring_security_logout" var="logoutUrl" />
      
      <form action="${logoutUrl}" method="post" id="logoutForm">
	  <input type="hidden"
		name="${_csrf.parameterName}"
		value="${_csrf.token}" />
		
		<input type="submit" value="Logout">
	</form>
   </body>
</html>