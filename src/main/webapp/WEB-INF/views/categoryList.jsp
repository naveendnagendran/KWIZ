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
	<title>Kwiz - Category List</title>
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
                <li><a href="quizList">Play Game</a></li>
                <li><a href="signUp">Sign up</a></li>
                <li><a href="signIn">Sign in</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- End: Navigation wrapper -->   
    </header>
    <!-- End: HEADER -->
		<div class="container">			
		<h1> Category List </h1>	
		<hr>	
		<c:forEach var="c" begin="0" end="10" items="${categories}">
			    <div class="panel panel-default">
						<div class="panel-heading">
			        		<h3 class="panel-title"><a href="singlePlayerUser?qzid=3">${c}</a></h3>
						</div>    
					
				</div>	
		    </c:forEach>	
<%-- 		    <c:forEach var="c" items="${categories}">
			    <div class="panel panel-default">
						<div class="panel-heading">
			        		<h3 class="panel-title"><a href="questionList?quizid=${c.categoryid}">${c.categoryid}: ${c.category}</a></h3>
						</div>    
					<div class = "panel-body">
						<div style="float: left">
									<form action="editCategory">
										<input type="hidden" name="qzid" value=${qz.qzid }>
										<input type="hidden" name="categoryid" value=${c.categoryid }>
										<button type="submit" class="btn btn-default">Edit</button>
									</form>
						</div>
						<div>
									<form action="deleteCategory">
										<input type="hidden" name="categoryid" value=${c.categoryid }>
										<button type="submit" class="btn btn-danger">Delete</button>
									</form>
						</div>
					</div>
				</div>	
		    </c:forEach> --%>
		    
<!-- 		    <div class="form-group">
		    	<div class="input-group">	
				<form action="addCategory" method="post">
					<input type="text" name="category" class="form-control" id="inputDefault">
					<span class="input-group-btn">
      					<button type="submit" class="btn btn-default">Add Category</button>
    				</span>
				</form>
				</div>
			</div> -->

			<br>
			<br>
		</div>	
	</body>
</html>