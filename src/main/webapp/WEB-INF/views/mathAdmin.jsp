<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>this is the page for Math Quiz Admin</h3>
<form action="" method="post">
<h2>Math Quiz</h2>
<h3>Select the following features for Registration:</h3>
<input type="checkbox" disabled="disabled" name="registeration" value="Email">Email<br>
<input type="checkbox" disabled="disabled" name="registeration" value="Password">Password<br>
<input type="checkbox" disabled="disabled" name="registeration" value="Firstname">First Name<br>
<input type="checkbox" disabled="disabled" name="registeration" value="Lastname">Last Name<br>
<input type="checkbox" name="registeration" value="Age">Age<br>
<input type="checkbox" name="registeration" value="University Name">University Name<br>
<br>
<h3>Select the following features for Categories:</h3>
<input type="checkbox" name="category" value="Cloud Computing">Cloud Computing<br>
<input type="checkbox" name="category" value="Math">Math<br>
<input type="checkbox" name="category" value="General Knowledge">General Knowledge<br>
<input type="checkbox" name="category" value="Technology">Technology<br>
<input type="checkbox" name="category" value="Others">Others<br>
<h3>Select the number of players:</h3>
<input type="checkbox" name="players" value="Single">Single Player<br>
<input type="checkbox" name="players" value="Two">Multiple Players<br>
<br>
<input type="submit" name="Submit" value="Submit">
 <br>
</form>
</body>
</html>