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
	<div class="mx-auto mt-5" style="width:500px;">
		
		<form:form class="p-4 border border-3 border-dark rounded" style="background-color:#FFC72C;" action="/burgers/${burger.id}" method="post" modelAttribute="burger">
		<h1>Edit a Burger</h1>
			<input type="hidden" name="_method" value="put">
			<div>
				<form:label class="form-label fw-bold mt-2" path='name'>Burger Name:</form:label>
				<form:errors class="text-danger" path="name"/>
	   			<form:input class="form-control" path='name'/>
			</div>
			<div>
				<form:label class="form-label fw-bold mt-2" path='restaurant'>Restaurant Name:</form:label>
				<form:errors class="text-danger" path="restaurant"/>
	    		<form:input class="form-control" path='restaurant'/>
			</div>
			<div>
				<form:label class="form-label fw-bold mt-2" path='rating'>Rating:</form:label>
				<form:errors class="text-danger" path="rating"/>
	    		<form:input class="form-control" type='number' path='rating'/>
			</div>
   			
    		<div>
    			<form:label class="form-label fw-bold mt-2" path="notes">Notes:</form:label>
    			<form:errors class="text-danger" path="notes"/>
    			<form:textarea class="form-control" path="notes" cols="20" rows="3"></form:textarea>
    			
    		</div>
    		<input class="mt-3 border border-dark rounded" type="submit" value="Submit"/>
	    	</div>
	    </form:form>
	</div>
</body>
</html>