<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class="main m-auto">
		<h1>Send an Omikuji!</h1>
		<form class="form" action='/login' method='post'>
			<div class="form-group">
				<label for="number">Pick a number (5 to 25)</label>
		    	<input class="form-control" type="number" name='number'>
			</div>
				<label for="city">Enter the name of any city.</label>
		    	<input class="form-control" type='text' name='city'>
		    	
		    	<label for="doing">Enter professional endeavor or hobby:</label>
		    	<input class="form-control" type="text" name="doing"/>
		    	
		    	<label  for="thing">Enter any type of living thing</label>
		    	<input class="form-control" type="text" name="thing">
		    <div class="form-group">
		    	<label for="nice">Say something nice to someone:</label>
	    		<textarea class="form-control" name="nice" id="" cols="10" rows="5"></textarea>
	    	</div>
	    	<input type='submit' value='login'>
	    </form>
	</div>
</body>
</html>