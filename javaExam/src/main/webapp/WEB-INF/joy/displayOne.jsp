<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="UTF-8">
<title>DISPLAY ONE </title>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-end">
        <div class="col-md-4 mt-3 mt-md-0">
            <a href="/" class="btn btn-outline-primary">Back Home</a>
        </div>
    </div>
    <h3 style="color:blue"><c:out value="${joy.name}"/></h3>
</div>
<div class="container mt-5"> 
    <p style="color:deeppink"><c:out value="${joy.donor.userName}"/> 
    <span style="color:black">added</span>
    <span style="color:blue"><c:out value="${joy.name}"/></span>
     <span style="color:black"></span> </p>
    <p>Genger: <span style="color:green"><c:out value="${joy.gender}"/></span>.</p>
    <p>Origin: <span style="color:orangered"><c:out value="${joy.origin}"/></span>.</p>
    <br> 
	<p><span style="color:black">Here is</span> <span style="color:deeppink">${joy.donor.userName}'s</span>  description of the baby's name meaning:</p> <hr>
	<p><c:out value="${joy.meaning}"/></p> 
	<hr>
<p>	<a class="btn btn-warning" href="/joys/edit/${joy.id}">Edit</a> </p>
   <form action="/joys/${joy.id}" method="post">
      	<input type="hidden" name="_method" value="delete"/>
      	<input type="submit" value="delete" class="btn btn-otline-white btn-danger"/>
      </form> 
</div>
</body>
</html>
