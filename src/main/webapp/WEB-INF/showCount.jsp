<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<h1>Here's Your Omikuji</h1>
		<div class="card-body">
		 	In <c:out value="${num}"></c:out> years, you will live in <c:out value="${city}"></c:out> with NAME as your roommate,
		 	<c:out value="${doing}"></c:out> for a living. The next time you see a <c:out value="${thing}"></c:out>,
		 	you will have good luck. Also, <c:out value="${nice}"></c:out>
		</div>
		<a href="/">Go Back</a>
	</div>
</body>
</html>