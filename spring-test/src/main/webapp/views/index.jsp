<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
<style>
  .mega-menu{width:800px;overflow:hidden;padding:10px}
   .mega-menu a{text-decoration:none}
   .dropdown-menu{top:115%}
   </style> 
</head>
<body>
<nav  class="navbar navbar-expand-sm bg-info navbar-dark">
  <!-- Brand -->
 <div class="container">
  <a class="navbar-brand" href="#">Aptech</a>
  <button class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">

 
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/showForm">SignUp </a> 
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/contact">Contact us </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/RecordById">GetRecordById </a>
    </li>
    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle " href="#" id="navbardrop" data-toggle="dropdown">
        Dropdown link
      </a>
      <div class="dropdown-menu mega-menu">
	  <div class ="row">
	  <div class ="col-md-3">
	  <img src= "/images/alia.jpg" alt = "image can't" class="img-fluid">
	  <h4> alia bhat image</h4>
	  <p> alia born in india </p>
	  </div>
	  <div class = "col-md-3">
	  <p><strong class = "sub-menu-heading">courses</strong></p>
	  <p><a href= "#" >java</a></p>
	   <p><a href= "#" >c</a></p>
	    <p><a href= "#" >c++</a></p>
		 <p><a href= "#" >php</a></p>
	  </div>
	  
       <div class = "col-md-3">
	  <p><strong class = "sub-menu-heading">courses</strong></p>
	  <p><a href= "#" >java</a></p>
	   <p><a href= "#" >c</a></p>
	    <p><a href= "#" >c++</a></p>
		 <p><a href= "#" >php</a></p>
	  </div>
	  
	  <div class = "col-md-3">
	  <p><strong class = "sub-menu-heading">courses</strong></p>
	  <p><a href= "#" >java</a></p>
	   <p><a href= "#" >c</a></p>
	    <p><a href= "#" >c++</a></p>
		 <p><a href= "#" >php</a></p>
	  </div>
      </div>
	  </div>
    </li>
  </ul>
  </div>
  </div>
</nav>
<br>
  


</body>
</html>

</body>
</html>