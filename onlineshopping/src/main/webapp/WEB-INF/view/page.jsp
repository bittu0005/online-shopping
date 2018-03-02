<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="img" value="/resources/img" />
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping-${title }</title>

<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">
<link href="${css }/bootstrap.css" rel="stylesheet">
<link href="${css }/bootstrap-theme.css" rel="stylesheet">
<link href="${css }/bootstrap-theme.min.css" rel="stylesheet">

<!-- Theme -->
<link href="${css }/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/myapp.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@ include file="./shared/navbar.jsp"%>

		<!-- When User Click Home Page -->
		<c:if test="${userClickHome==true }">

			<!-- Page Content -->
			<div class="content">
				<!-- /.Loading the home content -->
				<%@ include file="home.jsp"%>
		</c:if>

		<!-- When User Click About -->
		<c:if test="${userClickAbout==true }">

			<!-- /.Loading the home content -->
			<%@ include file="about.jsp"%>

		</c:if>

		<!-- When User Click Contact -->
		<c:if test="${userClickContact==true }">

			<!-- /.Loading the home content -->
			<%@ include file="contact.jsp"%>
		</c:if>
	</div>
	<!-- Footer -->

	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js }/jquery.js"></script>
	<script src="${js }/jquery.min.js"></script>
	<script src="${js }/bootstrap.js"></script>
	<script src="${js }/bootstrap.min.js"></script>
	<script src="${js }/bootstrap.bundle.min.js"></script>

	<!-- Self Coded Java Scripted -->
	<script src="${js }/myapp.js"></script>

	</div>
</body>
</html>
