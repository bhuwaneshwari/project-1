<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<div class="container">
<div class="row" style="margin-top:40px;">
<div class="col-md-4 col-md-offset-4">
	<h2 style="color:dimgray; text-align: center">Register Here</h2>
  
  <form method="POST" action="" accept-charset="UTF-8" role="form" class="form-signin"><input name="_token" type="hidden" value="">
	<fieldset>
       <input class="form-control middle" placeholder="User Name" name="User Name" type="text">
       
	   <input class="form-control middle" placeholder="Email Id" name="Email Id" type="text">
<input class="form-control middle" placeholder="Password" name="Password" type="password">
<input class="form-control middle" placeholder="Confrim Password" name="Confrim Password" type="password">

    
    <div style="padding-left: 15px; padding-bottom: 10px;"></div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Signup</button>
    </fieldset>
  </form>
</div>
</div>
</div>
<div class="container">
<div class="row" style="margin-top:40px;">
<div class="col-md-4 col-md-offset-4">
	<h2 style="color:dimgray; text-align: center">Login</h2>
  
  <form method="POST" action="" accept-charset="UTF-8" role="form" class="form-signin"><input name="_token" type="hidden" value="">
	<fieldset>
       <input class="form-control middle" placeholder="E-mail Id" name="email" type="text">
       <br />
	   <input class="form-control middle" placeholder="Password" name="password" type="password">
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div style="padding-left: 30px; padding-bottom: 10px;"></div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
    </fieldset>
  </form>
</div>
</div>
</div>
</body>
</html>