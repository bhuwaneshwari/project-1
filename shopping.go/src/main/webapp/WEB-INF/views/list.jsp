<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>shopping.go</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="Resource/bootstrap/css/bootstrap.min.css">
   <script src="Resource/bootstrap/js/angular.min.js"></script>
  <script src="Resource/bootstrap/js/jquery.min.js"></script>
  <script src="Resource/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript"></script>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>

        

        <table class="table">

            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Update</th>
                    <th>Delete</th>
                    </tr>
            </thead>
            <tbody class="table-hover">
            <c:forEach items="${products}" var="product">
                <tr>
                <td>${product.pid}</td>
                    <td>${product.prodName}</td>
                    <td>${product.price}</td>
                    <td>${product.description}</td>
                   <td><a href="editprod/${product.pid}">Edit</a></td>  
                   <td><a href="deleteprod/${product.pid}">Delete</a></td>  
                    
                </tr>
            </c:forEach>
            </tbody>
        </table>



</body>
</html>