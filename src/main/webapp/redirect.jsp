<%@ page contentType = "text/html; charset=euc-kr" %>
<html>
<head><title>HTTPS Redirect</title></head>
<body>
<%
String url = javax.servlet.http.HttpUtils.getRequestURL(request).toString();
System.out.println("BBBBBB" + url);
if(url.indexOf("http://") > -1 ) {	
        String after = url.replaceAll("http://","https://") +"?"+ request.getQueryString();
	System.out.println("FFFFFF" + after);

	response.sendRedirect(url.replaceAll("http://","https://") +"?"+ request.getQueryString());		

	return;

}
%>
	<h1>HTTPS Redirect</h1>
</body>
</html>
