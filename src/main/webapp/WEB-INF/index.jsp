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
<body style="background-color:#DA291C; color:#27251F">
	<div class="mx-auto mt-5 p-3 border border-3 border-dark rounded" style="width:500px; background-color:#FFC72C;">
		<h1>Big Mac's Burger Tracker!</h1>
		<table class="table table-hover table-borderless" style="background-color:;">
			<thead>
				<tr>
					<th>Name</th>
					<th>Restaurant</th>
					<th>Rating</th>	
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="burgers" items = "${burgers}">
					<tr>
						<td><c:out value="${burgers.name}"></c:out></td>
						<td><c:out value="${burgers.restaurant}"></c:out></td>
						<td><c:out value="${burgers.rating}"></c:out></td>
						<td><a href="/burgers/${burgers.id}/edit">edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>Create a Burger</h1>
		<form:form class="" action="/burgers" method="post" modelAttribute="burger">
			<div>
				<form:label class="fw-bold mt-2 form-label" path='name'>Burger Name:</form:label>
				<form:errors class="text-danger" path="name"/>
	   			<form:input class="form-control" path='name'/>
			</div>
			<div>
				<form:label class="fw-bold mt-2 form-label" path='restaurant'>Restaurant Name:</form:label>
				<form:errors class="text-danger" path="restaurant"/>
				<form:input class="form-control" path='restaurant'/>	    		
			</div>
			<div>
				<form:label class="fw-bold mt-2 form-label" path='rating'>Rating:   </form:label>
				<form:errors class="text-danger" path="rating"/>
				<form:input class="form-control" type='number' path='rating'/>
					
				
	    		
			</div>
   			
    		<div>
    			<form:label class="fw-bold mt-2 form-label" path="notes">Notes:</form:label>
    			<form:errors class="text-danger" path="notes"/>
    			<form:textarea class="form-control" path="notes" cols="20" rows="3"></form:textarea>
    		</div>
    		<input class="mt-3 border border-dark rounded" type="submit" value="Submit"/>
	    	</div>
	    	
	    </form:form>
	</div>
</body>
</html>