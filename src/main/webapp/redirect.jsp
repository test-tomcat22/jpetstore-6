<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>HTTPS Redirect</title></head>
<body>
<%
System.out.println("######################START##########################");
String url = javax.servlet.http.HttpUtils.getRequestURL(request).toString();
System.out.println("BBBBBB" + url);

Enumeration headerEnum = request.getHeaderNames();
while(headerEnum.hasMoreElements()) {
   String headerName = (String)headerEnum.nextElement();
   String headerValue = request.getHeader(headerName);
   System.out.println( headerName + "####" + headerValue );
}

if(url.indexOf("http://") > -1 ) {	
        String after = url.replaceAll("http://","https://") +"?"+ request.getQueryString();
	System.out.println("FFFFFF" + after);
	System.out.println("######################END############################");

	response.sendRedirect(url.replaceAll("http://","https://") +"?"+ request.getQueryString());		

	return;

}
%>
	<h1>HTTPS Redirect</h1>
</body>
</html>
