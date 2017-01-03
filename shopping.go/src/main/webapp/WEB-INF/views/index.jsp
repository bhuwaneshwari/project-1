<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <link rel="stylesheet" href="Resource/bootstrap/css/bootstrap.min.css">
   <script src="Resource/bootstrap/js/angular.min.js"></script>
  <script src="Resource/bootstrap/js/jquery.min.js"></script>
  <script src="Resource/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript"></script>
<style type="text/css">
.body 
{
    background-color: pink;
}
header
{
background-color: pink;
}
footer
{
background-color:pink;
}
h1 {
    color: violet;
    text-align: center;
}
</style>
</head>
<body>
<header>
<h1>Shopping.Go</h1>

 
 <form class="navbar-form navbar-right" role="search">
<div class="form-group">
<input type="text" class="form-control" placeholder="search">
</div>
<button type="submit" class=btn btn-default">
<span class="glyphicon glyphicon-search">
</span>
</button>
</form>
  <div class="container">
  <ul class="nav nav-tabs nav-justified">
 <li><a href="home">Home</a></li>
 <li class="dropdown">
 <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
  <ul class="dropdown-menu">
           <li><a href="#">clothings for queens</a>
                 <ul>
	                  <li><a href="#">Sarees</a></li>
	                  <li><a href="#">Chudithar</a></li>
                      <li><a href="#">Modren wears</a></li>
                 </ul>
            </li>

             <li><a href="#">cosmetics</a>
                  <ul>
	                  <li><a href="#">Mascara</a></li>
	                  <li><a href="#">Eye liner</a></li>
                      <li><a href="#">Lip gloss</a></li>
                 </ul>
             </li>
            <li><a href="#">Slippers</a>
                 <ul>
	                 <li><a href="#">Sports shoes</a></li>
	                 <li><a href="#">Heals</a></li>
                     <li><a href="#">Flat</a></li>
                 </ul>
           </li>
           <li><a href="#">Women Watches</a>
                 <ul>
	                 <li><a href="#">Leather</a></li>
	                 <li><a href="#">Gold</a></li>
                     <li><a href="#">Silver</a></li>
                </ul>
          </li>

          <li><a href="#">clothing for queen</a></li>   
          <li><a href="#">cosmectics</a></li>
          <li><a href="#">slippers</a></li>
          <li><a href="#">women watches</a></li>                     
          </ul>
          </li>
         <li><a href="list">list</a></li>
     <li><a href="product">Product</a></li>
     <li><a href="register">Signup</a></li>
     <li><a href="login">login</a></li>

   </ul>
</div>

<script type="text/javascript">
</script>
</header>
</body>
</html>

