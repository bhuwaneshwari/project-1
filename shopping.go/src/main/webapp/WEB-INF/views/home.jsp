<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping.go</title>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
<div class="container">
<h1>Big Deals</h1>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      <img src="Resource/images/0c8f384568bc846438c17212fde6afd8.jpg" alt=" " style="width:250px ;height:300px">
                   <p>saree</p>
                    <p> At Rs.5599</p>	     
 </div>
 

      <div class="item">
      <img src="Resource/images/54bc066b22313_-_hbz-best-mascara-swap-lg.jpg" alt=" " style="width:250px ; height:300px">
         <p>mascara</p>
<p> At Rs.599</p>     
 </div>
    
      <div class="item">
        <img src="Resource/images/Cameleon-Star-Lip-gloss-Pink-SDL416157045-1-a17a4.jpg" alt=" " style="width:250px ;height :300px">
<p>Lipgloss</p>
<p> At Rs.299</p>     
 </div>

      <div class="item">
        <img src="Resource/images/High-Heel-Wedges.jpg" alt=" " style="width:250px ;height:300px">
<p>heals</p>
<p> At Rs.7500</p>      
</div>
    </div>
 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>     
</div>
 <div class="container">
  <h2>You Recently Watched</h2>
            
  <div class="row">
    <div class="col-md-2">
      <a href="Resource/images/0c8f384568bc846438c17212fde6afd8.jpg" class="thumbnail">
        <img src="Resource/images/0c8f384568bc846438c17212fde6afd8.jpg" alt="saree" style="width:100px;height:150px">
        <p>offer upto 15%</p>      
       </a>
    </div>
    <div class="col-md-2">
      <a href="Resource/images/54bc066b22313_-_hbz-best-mascara-swap-lg.jpg" class="thumbnail">
                <img src="Resource/images/54bc066b22313_-_hbz-best-mascara-swap-lg.jpg" alt="mascara" style="width:100px;height:150px">
              <p>offer upto 20%</p>
     </a>
    </div>
    <div class="col-md-2">
      <a href="Resource/images/Cameleon-Star-Lip-gloss-Pink-SDL416157045-1-a17a4.jpg" class="thumbnail">
            <img src="Resource/images/Cameleon-Star-Lip-gloss-Pink-SDL416157045-1-a17a4.jpg" alt="Lip gloss" style="width:100px;height:150px">
            <p>offer upto 50%</p>
      </a>
    </div>
        <div class="col-md-2">
      <a href="Resource/images/High-Heel-Wedges.jpg" class="thumbnail">
            <img src="Resource/images/High-Heel-Wedges.jpg" alt="high heels" style="width:100px;height:150px">
            <p>offer upto 75%</p>
      </a>
      </a>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>