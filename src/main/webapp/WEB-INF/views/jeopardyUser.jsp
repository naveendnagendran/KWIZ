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
                <!-- <li><a href="profile">Profile</a></li> -->
                <li><a href="gameList">Game List</a></li>
                <li><a href="signIn">Logout</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER --> 
	<h1> Take Quiz </h1>	
	<hr>
<%-- 	<form name="input" action="resultQuiz" method="post">
		<input type="hidden" name="qzid" value=${quizid }>
		
		<div class="row" id="wrapper" style="position:relative;">
			
			<div class="col-md-7" id="left" style="position:relative; float:left;">
				<ol>
				<c:forEach var="q" items="${questions }">
					<li><h4><b>${q.question }</b></h4></li>
					
					<div class="radio">
						<label>
							<input type="radio" name="Q${q.qid }" value="null" checked>
						</label>
					</div>
					
					<div class="radio">
						<label>
							<input type="radio" name="Q${q.qid }" value="${q.choiceA }">${q.choiceA }
						</label>
					</div>
					<div class="radio">
						<label>
							<input type="radio" name="Q${q.qid }" value="${q.choiceB }">${q.choiceB }
						</label>
					</div>
					<c:if test="${q.choiceC != '' }">
					<div class="radio">
						<label>		
							<input type="radio" name="Q${q.qid }" value="${q.choiceC }">${q.choiceC }
						</label>
					</div>
					</c:if>
					<c:if test="${q.choiceD != '' }">
					<div class="radio">
						<label>
							<input type="radio" name="Q${q.qid }" value="${q.choiceD }">${q.choiceD }
						</label>
					</div>
					</c:if>
					<br>
				</c:forEach>
				</ol>

				
			</div> --%>

  <div class="clearfix" id="page"><!-- column -->
   <img class="colelem" id="u179-4" src="<c:url value="/resources/img/u179-4.png"/>" alt="JEOPARDY" width="571" height="58"/><!-- rasterized frame -->
   <div class="clearfix colelem" id="pu125"><!-- group -->
    <a class="nonblock nontext clip_frame grpelem" id="u125" href="question.html">
 
 
    <img class="block" id="u125_img" src="<c:url value="/resources/img/1.jpg"/>" alt="" width="176" height="141"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/2.jpg"/>" alt="" width="175" height="140"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/3.jpg"/>" alt="" width="176" height="141"/></br>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/4.jpg"/>" alt="" width="175" height="140"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/5.jpg"/>" alt="" width="176" height="141"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/6.jpg"/>" alt="" width="175" height="140"/></br>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/7.jpg"/>" alt="" width="175" height="140"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/8.jpg"/>" alt="" width="175" height="140"/>
    <img class="block" id="u130_img" src="<c:url value="/resources/img/9.jpg"/>" alt="" width="182" height="141"/>
  </a> 
  </div>
   <div class="verticalspacer"></div>
  </div>

	
					          <form action="questionList">
            				<div style="padding-left:40px; padding-bottom:20px;">
            				    <input type="hidden" name="quizid" value=${quizid }>
								<input class="btn btn-success" type="submit" value="Submit Answer Sheet">
							</div>	
            			</form>
</div> 
	<!-- SCRIPT FOR TIMER MOVEMENT -->
	<script>
	var length = $('#right').height() - $('#sidebar').height() + $('#right').offset().top;
    $(window).scroll(function () {
        var scroll = $(this).scrollTop();
        var height = $('#sidebar').height() + 'px';
        if (scroll < $('#right').offset().top) {
            $('#sidebar').css({
                'position': 'absolute',
                'top': '0'
            });
        } else if (scroll > length) {
            $('#sidebar').css({
                'position': 'absolute',
                'bottom': '0',
                'top': '20px'
            });
        } else {
            $('#sidebar').css({
                'position': 'fixed',
                'top': '0',
                'height': height
            });
        }
    });
	</script>
	  <!-- JS includes -->
  <script type="text/javascript">
   if (document.location.protocol != 'https:') document.write('\x3Cscript src="http://musecdn.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script type="text/javascript">
   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script src="scripts/museutils.js?4291592202" type="text/javascript"></script>
  <script src="scripts/jquery.watch.js?4068933136" type="text/javascript"></script>
  <!-- Other scripts -->
  <script type="text/javascript">
 

  </script>
	     <script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/boot-business.js"/>"></script> 
</body>
</html>