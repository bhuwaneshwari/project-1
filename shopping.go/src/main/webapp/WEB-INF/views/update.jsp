<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>shopping.go</title>
</head>
<body>
<h1>Update Products</h1>  
       <form:form method="POST" action="/shopping.go/upProd">    
         
           
    <form:label path="pid"> Product Id: </form:label>
         <form:input  path="pid" placeholder="Product ID" type="text"  class="form-control middle"  />  
         <form:label path="prodName"> Product Name: </form:label>   
          <form:input path="prodName" placeholder="Product Name" type="text"  class="form-control middle" />
         <form:label path="price">Product Price:</form:label>    
         <form:input path="price" placeholder="Product Price" type="text"  class="form-control middle" /> 
        <form:label path="description"> Product Description: </form:label> 
          <form:input path="description" placeholder="Product Description" type="text"  class="form-control middle"/> 
            
          <input type="submit" value="Edit Save" />    
             
       </form:form>    
				
</body>
</html>