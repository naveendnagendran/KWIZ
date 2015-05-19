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
    	<div class="content">
    <div class="container">
	<ul class="breadcrumb">
		<li><a href="quizList">Quiz List</a></li>
		<li class="active">answers of ${quiztitle}</li>
	</ul>
			
	<hr>

    <h3>Quiz title: ${quiztitle} </h3>
    <c:forEach var="q" items="${questions}">
	<div class="panel panel-default">
	  <div class="panel-heading">
		<h3 class="panel-title">${q.question} </h3>
	  </div>
        <div class="panel-body">
            Answer: ${q.answer} <br> 
<%-- 			Choice A: ${q.choiceA} <br> 
			Choice B: ${q.choiceB} <br> 
			Choice C: ${q.choiceC} <br> 
			Choice D: ${q.choiceD} <br> --%>
			<br>
			<br>
<%-- 			<ul class = "list-inline">
			<li> 	
            	<form action="editQuestion">
            	<input type="hidden" name=qzid value=${quizid }> 
	            <input type="hidden" name="qid" value=${q.qid }>
	            <button type="submit" class="btn btn-default btn-xs">Edit</button>
	            </form>
			</li>
			<li>	
            	<form action="deleteQuestion">
	            <input type="hidden" name="qid" value=${q.qid }>
	            <button type="submit" class="btn btn-danger btn-xs">Delete</button>
	            </form>
			</li>
			</ul> --%>
			
		</div>
		</div>	
        </c:forEach>
        </div>
</div>	
</body>
</html>