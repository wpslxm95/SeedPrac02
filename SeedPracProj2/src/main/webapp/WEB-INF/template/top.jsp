<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>SeedIT</title>
</head>

<body>

	<!-- ***************************
		nav_var start
		******************************* -->
	<div id="navarea">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="<c:url value='/seed/prac/gotohome.do'/>">Seed</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
						<!-- 게시판1 -->
							<li><a href="<c:url value='/seed/prac/gotoboard1.do'/>">게시판1</a></li>
						<!-- 게시판2 -->
							<li><a href="#">게시판2</a></li>
						<!-- 게시판3 -->
							<li><a href="#">게시판3</a></li>
						<!-- 게시판4 -->
							<li><a href="#">게시판4</a></li>
						<!-- 게시판5 -->
							<c:if test="${empty sessionScope.id  }" >
								<li><a href="<c:url value='/seed/prac/gotoLoginPage.do'/>">Login</a></li>
							</c:if>
							<c:if test="${not empty sessionScope.id }">
								<li><a href="<c:url value='/seed/prac/gotoLogout.do'/>">Logout</a></li>
							</c:if>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<!-- ***************************
		nav_var end
		******************************* -->