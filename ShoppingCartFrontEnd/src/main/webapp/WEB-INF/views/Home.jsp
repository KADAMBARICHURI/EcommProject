<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

 <meta name="viewport" content="width=device-width, initial-scale=1" />
 
</head>

<link rel="stylesheet" type="text/css"   href="resources/css/bootstrap.min.css" />
 
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.0.min.js"></script>
 <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  
 
<body>
  
 	<center>
		<h2>Welcome to Shopping Cart</h2>
	</center>
	 ${message}
	<hr color="blue">
 

	
	
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Kaddy</a>
    </div> 
       <ul class="nav navbar-nav">
    
    
     <li class="active"><a href="/">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductList <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Clothes</a></li>
          <li><a href="#">Jewellery</a></li>
          <li><a href="#">Sandals</a></li>
        </ul>
      </li>
          
      <li><a href="#">ContactUs</a></li>
      <li><a href="#">AboutUs</a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="RegistrationPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="LoginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

	<c:if test="${isUserClickedLogin=='true'}">

		<jsp:include page="Login.jsp"></jsp:include>

	</c:if>


	<c:if test="${isUserClickedRegister=='true' }">
		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>








</body>
</html>