<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map Page</title>
<style>
iframe {
	margin-top: 65px;
}
a{
	text-decoration: none;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<iframe
		src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.684254869503!2d106.70676642475235!3d10.785086936675276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1547181657956"
		width="100%" height="650" frameborder="0" style="border: 0"
		allowfullscreen></iframe>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
