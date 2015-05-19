<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script>
		$(document).ready(function() {
	    $(".link1").click(function(event){
	       event.preventDefault();
	       var url =$(this).attr("href");
	       $('#right-pane').load(url);
			});
		});
	</script>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Kwiz - Game List</title>
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
                <!-- <li><a href="profile.html">Profile</a></li> -->
                <!-- <li><a href="quizList">Play Game</a></li>
                <li><a href="signUp">Sign up</a></li>
                <li><a href="signIn">Sign in</a></li> -->
                <li><a href="signIn">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER -->

      <!-- Start: PRODUCT LIST -->
               <div class="container">
          <div class="page-header">
            <h2>Our Games</h2>
          </div>
        </div>
        <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span4">
                <div class="thumbnail">
                  <img src="<c:url value="/resources/img/familyfeud.png"/>"  alt="product name">
                  <div class="caption">
                    <h3>Family Feud</h3>
                    <p>
                      Family Feud is an American game show in which two teams compete against each other in a contest to name the most popular responses to a survey question posed to 100 people. Whoever guesses the more popular answer in the survey has the option to play the question or pass it to the other team opponents.
                    </p>
                  </div>
                  <div class="widget-footer">
                  <p>
                 <form action="category_game" method="get">
                  <input type="hidden" name="gid" value="2">
        	            <button type="submit" class="btn btn-primary">Play Now</button>
        	     </form>
        	     </p>
                  </div>
                </div>
              </li>
              <li class="span4">
                <div class="thumbnail">
                  <img src="<c:url value="/resources/img/jeopardy1.jpg"/>" alt="product name">
                  <div class="caption">
                    <h3>Jeopardy</h3>
                    <p>
                      This is based on an American television game show that features a quiz competition containing rows and columns of questions. The difficulty level varies from row to row and points are awarded accordingly.
                    </p>
                  </div>
                  <div class="widget-footer">
                  <p>
                 <form action="category_game" method="get">
                  <input type="hidden" name="gid" value="3">
        	            <button type="submit" class="btn btn-primary">Play Now</button>
        	     </form>
        	     </p>
                  </div>
                </div>
              </li>
              <li class="span4">
                <div class="thumbnail">
                  <img src="<c:url value="/resources/img/mathquiz.jpg"/>" alt="product name">
                  <div class="caption">
                    <h3>Math Game</h3>
                    <p>
                      Check how well you can do math.
                    </p>
                  </div>
                  <div class="widget-footer">
                  <p>
                 <form action="mathUser" method="get">
                  <input type="hidden" name="qzid" value="3">
        	            <button type="submit" class="btn btn-primary">Play Now</button>
        	     </form>
        	     </p>
                  </div>
                </div>
          </li>
        </ul>
    </div>
    <div class="row-fluid">
            <ul class="thumbnails">
              <li class="span4">
                <div class="thumbnail">
                  <img src="<c:url value="/resources/img/cloud1.jpg"/>" alt="product name">
                  <div class="caption">
                    <h3>Cloud Computing Quiz</h3>
                    <p>
                      Is your head in the clouds? Do you need to get it there? Take our quiz to find out how much you know about cloud computing.
                    </p>
                  </div>
                  <div class="widget-footer">
                  <p>
                  <form action="cloudUser" method="get">
                  <input type="hidden" name="qzid" value="1">
        	            <button type="submit" class="btn btn-primary">Play Now</button>
        	     </form>
        	     </p>
                  </div>
                </div>
              </li>
              <li class="span4">
                <div class="thumbnail">
                  <img src="<c:url value="/resources/img/harishwar.gif"/>" alt="product name">
                  <div class="caption">
                    <h3>Single Player Quiz</h3>
                    <p>
                      Single Player Quiz
                    </p>
                  </div>
                  <div class="widget-footer">
                  <p>
                  <form action="category_game" method="get">
                  <input type="hidden" name="gid" value="5">
        	            <button type="submit" class="btn btn-primary">Play Now</button>
        	     </form>
        	     </p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
    <!-- End: MAIN CONTENT -->
         <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/boot-business.js"/>"></script> 
</body>
</html>