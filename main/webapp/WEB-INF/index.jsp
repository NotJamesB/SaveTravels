<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>reserve</title>
</head>
<body>
	<h1>All Expenses</h1>
	<table class="table table-hover col-6">
    <thead>
        <tr>
            <th>Expense</th>
            <th>Vendor</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
    	<c:forEach var="oneE" items="${allExpenses}">
         <tr>
         	<td>${oneE.name}</td>
         	<td>${oneE.vendor}</td>
         	<td>$ ${oneE.price}</td>
         </tr>
         </c:forEach>
         
    </tbody>
</table>
<a href="/expense/new"> Add a New Expense</a>
</body>
</html>