<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="UTF-8">
<title>EDIT PAGE</title>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-end">
        <div class="col-md-4 mt-3 mt-md-0">
            <a href="/" class="btn btn-outline-primary">Back Home</a>
        </div>
    </div>
    </div>
	<div class="container text-center mt-5">
	<h2>Change your Entry</h2>
		<form:form action="/joys/process/edit/${joy.id }" modelAttribute="joy" method="post">
			<input type="hidden" name="_method" value="put"/>
			<form:hidden path="donor"/>
			<div>
			<br>
				<label>New Name</label>
				<form:input type="text" path="name"/>
				<form:errors path="name" class="text-danger"/>
			</div>
			<br>
			
			<div>
			<br>
				<label>Typical Genger</label>
				<form:input type="text" path="gender"/>
				<form:errors path="gender" class="text-danger"/>
			</div>
			<br>
				
			<div>
				<label>Origin</label>
				<form:input type="text" path="origin"/>
				<form:errors path="origin" class="text-danger"/>
			</div>
			<br>
			<div>
				<label>Meaning</label>
				<form:input type="text" path="meaning"/>
				<form:errors path="meaning" class="text-danger"/>
			</div>
			<br>
			<input type="submit" value="Edit" class="btn btn-outline-success"/>
			 <a href="/" class="btn btn-outline-warning">Cancel</a>
			</form:form>
			</div>

</body>
</html>