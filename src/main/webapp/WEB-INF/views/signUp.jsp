<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kwiz - The Knowledge Wizard</title>
	<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"/>
	<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>"  rel="stylesheet">
    <!-- Bootstrap responsive -->
    <link href="<c:url value="/resources/css/bootstrap-responsive.min.css"/>"  rel="stylesheet">
    <!-- Font awesome - iconic font with IE7 support --> 
    <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome-ie7.css"/>" rel="stylesheet">
    <!-- Bootbusiness theme -->
    <link href="<c:url value="/resources/css/boot-business.css"/>" rel="stylesheet">
	<%-- <link href="<c:url value="/resources/css/homepage.css"/>" rel="stylesheet"/> --%>
</head>
<body>
<%-- 	<div class="site-wrapper">
	<div class="site-wrapper-inner">
	<div class="cover-container">
	
    		<div class="inner cover">
          			<img src = "<c:url value="/resources/img/Brain-Gym.png"/>" alt ="">
            		<p class="lead" style="color:#ebebeb;">Exercise your brain.</p>
            
            		<p class="lead">
            			<form action="quizList">
              				<!-- <button class="btn btn-lg btn-primary">Take A Quiz!</button> -->
              				<button class="btn btn-lg btn-default">Take A Quiz!</button>
              		</form>
            		</p>
            
            		<p class="lead">
            			<form action="addQuiz">
            				<button class="btn btn-lg btn-default">Create A Quiz!</button>	
            			</form>
            		</p>
            		
            		<p class="lead">
            			<form action="searchForum">
            				<button class="btn btn-lg btn-default">Forum!</button>	
            			</form>
            		</p>
			</div>

       		<div class="mastfoot">
            		<div class="inner">
              			<p>CMPE 281 - Cloud Technologies.</p>
            		</div>
       		</div>
       		
	</div>
	</div>
	</div> --%>
	
 <header>
      <!-- Start: Navigation wrapper -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="index.html" class="brand brand-bootbus">Kwiz- The Knowledge Wizard!!!</a>
            <!-- Below button used for responsive navigation -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">        
              <ul class="nav pull-right">
					<li><a href="index">Home</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
        <div class="page-header">
          <h1>Signup to Kwiz- The Knowledge Wizard!!!</h1>
        </div>
        <div class="row">
          <div class="span6 offset3">
            <h4 class="widget-header"><i class="icon-gift"></i> Be a part of Kwiz</h4>
            <div class="widget-body">
              <div class="center-align">
                <form class="form-horizontal form-signin-signup" action="register" method="post">
                  <input type="text" name="email" placeholder="Email" required/>
                  <input type="password" name="password" placeholder="Password" required/>
                  <input type="text" name="firstName" placeholder="First Name" />
                  <input type="text" name="lastName" placeholder="Last Name" />
                  <div>
                    <input type="submit" value="Signup" class="btn btn-primary btn-large">
                  </div>
                </form>
                <h4><i class="icon-question-sign"></i> Already have an account?</h4>
                <p class="lead">
            			<form action="signIn" method="get">
            				<button class="btn btn-lg btn-default">SignIn</button>	
            			</form>
            	</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
         <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/boot-business.js"/>"></script>  
</body>
</html>
