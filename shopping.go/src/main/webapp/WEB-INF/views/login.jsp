<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Login</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="Resource/bootstrap/css/bootstrap.min.css">
  <script src="Resource/bootstrap/js/jquery.min.js"></script>
  <script src="Resource/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
</script>

</head>
<body>
<div style="background-color:pink">
<jsp:include page="index.jsp"></jsp:include>
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
</div>
<script type="text/javascript"></script>
<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>