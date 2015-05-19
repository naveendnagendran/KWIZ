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
    <header>
      <!-- Start: Navigation wrapper -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="" class="brand brand-bootbus">Kwiz- The Knowledge Wizard!!!</a>
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
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: slider -->
      <div class="slider">
        <div class="container-fluid">
          <div id="heroSlider" class="carousel slide">
            <div class="carousel-inner">
              <div class="active item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Jeopardy</h1>
                      <p>
                        This is based on an American television game show that features a quiz competition containing rows and columns of questions. The difficulty level varies from row to row and points are awarded accordingly.
                      </p>
                      <h3>
                        <a href="#" class="btn btn-primary">Play</a>
                      </h3> 
                    </div>
                    <div class="span5">
                      <img src="<c:url value="/resources/img/jeopardy1.jpg"/>" class="thumbnail">
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Family Feud</h1>
                      <p>
                        Family Feud is an American game show in which two teams compete against each other in a contest to name the most popular responses to a survey question posed to 100 people. The team that buzzed in with the correct answer receives control of the board and has the option of playing or passing control to the other team.Whoever guesses the more popular answer in the survey has the option to play the question or pass it to the other team opponents.
                      </p>
                      <h3>
                        <a href="#" class="btn btn-primary">Play</a>
                      </h3>                      
                    </div>
                    <div class="span5">
                      <img src="<c:url value="/resources/img/familyfeud.png"/>" class="thumbnail">
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Math Quiz</h1>
                      <p>
                        Check how good you are at math by taking this quiz.
                      </p>
                      <h3>
                        <a href="#" class="btn btn-primary">Play Now</a>
                      </h3>                      
                    </div>
                    <div class="span5">
                      <img src="<c:url value="/resources/img/mathquiz.jpg"/>" class="thumbnail">
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Cloud Computing Quiz</h1>
                      <p>
                        Is your head in the clouds? Do you need to get it there? Take our quiz to find out how much you know about cloud computing.
                      </p>
                      <h3>
                        <a href="#" class="btn btn-primary">Play Now</a>
                        </h3>                      
                    </div>
                    <div class="span5">
                      <img src="<c:url value="/resources/img/cloud2.jpg"/>" class="thumbnail" >
                    </div>
                  </div>                  
                </div>
              </div>
              <div class="item">
                <div class="hero-unit">
                  <div class="row-fluid">
                    <div class="span7 marketting-info">
                      <h1>Single Player Quiz</h1>
                      <p>
                        Single Player Quiz.
                      </p>
                      <h3>
                        <a href="#" class="btn btn-primary">Play Now</a>
                        </h3>                      
                    </div>
                    <div class="span5">
                      <img src="<c:url value="/resources/img/harishwar.gif"/>" class="thumbnail" >
                    </div>
                  </div>                  
                </div>
              </div>
            </div>
            <a class="left carousel-control" href="#heroSlider" data-slide="prev"> </a>
            <a class="right carousel-control" href="#heroSlider" data-slide="next"> </a>
          </div>
        </div>
      </div>
      <!-- End: slider -->

        </div>
    <!-- End: MAIN CONTENT -->
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <div class="container">
      
       <div class="center-align">
 				<form action="signIn" method="GET">
        	            <button type="submit" class="btn btn-large bottom-space">SignIn</button>
        	            <br>
        	     </form>
        	     <div>
        	     <form action="signUp" method="GET">
        	            <button type="submit" class="btn btn-large bottom-space">SignUp</button>
        	     </form>
        	     </div>
        	     </div>
<!--         	     <form action="categoryList">
        	            <button type="submit" class="btn btn-large bottom-space">categoryList</button>
        	     </form>
        	     <form action="gameList">
        	            <button type="submit" class="btn btn-large bottom-space">gameList</button>
        	     </form>
        	     <form action="cloudAdmin">
        	            <button type="submit" class="btn btn-large bottom-space">cloudAdmin</button>
        	     </form>
        	     <form action="familyfeudAdmin">
        	            <button type="submit" class="btn btn-large bottom-space">familyfeudAdmin</button>
        	     </form>
        	     <form action="jeopardyAdmin">
        	            <button type="submit" class="btn btn-large bottom-space">jeopardyAdmin</button>
        	     </form>
        	     <form action="mathAdmin">
        	            <button type="submit" class="btn btn-large bottom-space">mathAdmin</button>
        	     </form>
        	     <form action="singlePlayerAdmin">
        	            <button type="submit" class="btn btn-large bottom-space">singlePlayerAdmin</button>
        	     </form> -->
      </div>
    </div>
     <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/boot-business.js"/>"></script>       	            
</body>
</html>
