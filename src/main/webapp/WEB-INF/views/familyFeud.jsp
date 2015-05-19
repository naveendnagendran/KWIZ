<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Family Feud!</title>
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
  <meta name="viewport" content="width=device-width, initial-scale=1" 
    data-rel="dialog">
 <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" />
<script src="<c:url value="/resources/js/transit.min.js"/>"></script>
<script src="<c:url value="/resources/js/js.js"/>"></script>
<script src="<c:url value="/resources/js/questions-answers.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-1.9.1.j"/>"></script>
<link href="<c:url value="/resources/css/bootstrap-tagsinput.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script> 
	<script src="<c:url value="/resources/js/bootstrap-tagsinput.js"/>"></script>
</head>

<body>
<img src = "<c:url value="/resources/img/bg.png"/>" class="displayed" alt ="">
    
    <div class='container'>

      <div id='question'>
        <img id='qlogo' src="/resources/img/feudlogo.png"></img>
        <p data-isshown='false'></p>
      </div>

      <div id='answers'>
        <div id='answer1' class='answer'>1
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
        <div id='answer4' class='answer'>4
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
        <div id='answer2' class='answer'>2
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
        <div id='answer5' class='answer'>5
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
        <div id='answer3' class='answer'>3
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
        <div id='answer6' class='answer'>6
          <div class='answer-text' data-isshown='false'></div>
          <div class='ans-value' data-isshown='false'></div>
        </div>
      </div>

    </div>
    <div id='x'><img src="/resources/img/x.png"/></div>
  </div>
  <audio id='x-buzzer' src="sounds/buzzer.mp3" type="audio/mpeg">
  <audio id='bell-ding' src="sounds/bell-ding.mp3" type="audio/mpeg">
  <audio id='blip' src="sounds/blip.mp3" type="audio/mpeg">
</body>
</html>