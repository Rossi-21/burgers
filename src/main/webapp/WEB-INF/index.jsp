<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<title>Burger Tracker</title>
</head>
<body>
	<div class="mx-auto" style="width:300px;">
		<h1>Big Mac!</h1>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>Name</th>
					<th>Restaurant</th>
					<th>Rating</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="burgers" items = "${burgers}">
					<tr>
						<td><c:out value="${burgers.name}"></c:out></td>
						<td><c:out value="${burgers.restaurant}"></c:out></td>
						<td><c:out value="${burgers.rating}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>Create a Burger</h1>
		<form:form class="p-4 border border-3 border-dark" action="/burgers" method="post" modelAttribute="burger">
			<div>
				<form:label path='name'>Burger Name:</form:label>
				<form:errors class="text-danger" path="name"/>
	   			<form:input path='name'/>
			</div>
			<div>
				<form:label path='restaurant'>Restaurant Name:</form:label>
				<form:errors class="text-danger" path="restaurant"/>
	    		<form:input path='restaurant'/>
			</div>
			<div>
				<form:label path='rating'>Rating:</form:label>
				<form:errors class="text-danger" path="rating"/>
	    		<form:input type='number' path='rating'/>
			</div>
	    		<form:label path="notes">Notes:</form:label>
	    		<div>
	    			<form:textarea path="notes" cols="20" rows="3"></form:textarea>
	    			<form:errors class="text-danger" path="notes"/>
	    		</div>
	    		<input type="submit" value="Submit"/>
	    	</div>
	    	
	    </form:form>
	</div>
</body>
</html>