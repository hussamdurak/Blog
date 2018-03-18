<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hüssam Durak</title>

<c:import url="/inc/css"></c:import>

</head>

<body>

	<c:import url="/inc/header"></c:import>


	<!-- Page Header -->
	<header class="masthead"
		style="background-image: url('resources/img/post-bg.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">

				<c:if test="${ not empty ls}">
					<c:forEach var="item" items="${ ls }">

						<div class="post-heading">
							<h1>${ item.getYbaslik() }</h1>
							<h2 class="subheading">${ item.getYozet() }</h2>
							<span class="meta">Posted by <a href="#">Start
									Bootstrap</a>${ item.getYtarih() }
							</span>
						</div>
					</c:forEach>
				</c:if>

			</div>
		</div>
	</div>
	</header>


	<!-- Main Content -->
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">

				<c:if test="${ not empty ls}">
					<c:forEach var="item" items="${ ls }">

						<h2>${ item.getYbaslik() }</h2>
						<br>
						<p>${ item.getYicerik() }</p>

						<hr>

					</c:forEach>
				</c:if>
				<!-- Pager -->

			</div>
		</div>
	</div>

	<c:import url="/inc/footer"></c:import>

	<c:import url="/inc/js"></c:import>





</body>

</html>

