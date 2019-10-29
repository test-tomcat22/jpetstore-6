<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head><title>HTTPS Redirect</title></head>
<body>
<%
String url = javax.servlet.http.HttpUtils.getRequestURL(request).toString();

if(url.indexOf("http://") > -1 ) {	

	response.sendRedirect(url.replaceAll("http://","https://") +"?"+ request.getQueryString());		

	return;

}
%>
HTTPS Redirect
</body>
</html>
