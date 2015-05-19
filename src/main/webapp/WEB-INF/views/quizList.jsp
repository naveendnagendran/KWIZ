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
	<title>Kwiz - Quiz List</title>
	<link href="<c:url value="/resources/css/bootstrap-tagsinput.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <!-- link href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" rel="stylesheet"/-->
	
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script> 
	<script src="<c:url value="/resources/js/bootstrap-tagsinput.js"/>"></script>
</head>

<body>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
<div class="container">
	
	<div class="alert alert-dismissable alert-info">
	  <button type="button" class="close" data-dismiss="alert"><span class="glyphicon glyphicon-remove"></span></button>
	  Welcome.
	</div>		

	<h1>Quiz List</h1>
	<hr>
   		<c:forEach var="qz" items="${quizzes}">
		<div class="panel panel-default">
			<div class="panel-heading">
        			<h3 class="panel-title"><a href="questionList?quizid=${qz.qzid}">${qz.qzid}: ${qz.title} - <c:forEach var="c" items="${categories }"><c:if test="${qz.catid == c.categoryid}">${ c.category}</c:if></c:forEach></a></h3>
			</div>
			<div class = "panel-body">
					<form action="takeQuiz">
							<input type="hidden" name="qzid" value=${qz.qzid }>
							<button type="submit" class="btn btn-primary">Take Quiz</button>
					</form>
						<form action="editQuiz">
							<input type="hidden" name="qzid" value=${qz.qzid }>
							<button type="submit" class="btn btn-default">Edit</button>
						</form>
						<form action="deleteQuiz">
							<input type="hidden" name="qzid" value=${qz.qzid }>
							<button type="submit" class="btn btn-danger">Delete</button>
						</form>
			</div>
			</div>
        </c:forEach>
	
    <form action="addQuiz">
		<button type="submit" class="btn btn-default">..or Add Quiz</button>
	</form>
	<br><br>
</div>	
</body>
</html>