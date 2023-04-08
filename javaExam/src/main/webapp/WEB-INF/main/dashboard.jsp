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
<title>DASHBOARD</title>
</head>
<body>
 
<div class="container mt-5">
    <div class="row justify-content-end">
        <div class="col-md-4 mt-3 mt-md-0">
            <a href="/joys/create" class="btn btn-outline-primary">Add a Baby name!</a>
            <a class="btn btn-outline-danger" href="/users/logout">Logout</a>
        </div>
    </div>
    </div>
        
    <div class="container mt-5">
	    <h2 style="color:blueviolet"> Hello,  <c:out value="${loggedInUser.userName}"/></h2>
	    <p style="color:deeppink" >Here are some name suggestions..</p>
	</div>

	<div class="container mt-5">
        <table class="table table-bordered">
            <thead> 
                <tr> 
                    
                    <th> Baby Names </th>
                    <th> Gender </th>
                    <th> Origin </th>
                   <!--  <th> Action </th> -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="eachJoy" items="${allJoys}"> 
                    <tr>
<%--                         <td><c:out value="${eachBook.id}"/></td> --%>
                        <td><a href="/joys/${eachJoy.id}"><c:out value="${eachJoy.name}"/></a></td>
                        <td><c:out value="${eachJoy.gender}"/></td>
                        <td><c:out value="${eachJoy.origin}"/></td>
<%--                         <td>
                            <a class="btn btn-warning" href="/books/edit/${eachBook.id}">Edit</a>
      						<form action="/books/${eachBook.id}" method="post">
      						<input type="hidden" name="_method" value="delete"/>
      						<input type="submit" value="delete" class="btn btn-otline-white btn-danger"/>
      						</form>
                        </td> --%>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
	</div>
</body>
</html>
