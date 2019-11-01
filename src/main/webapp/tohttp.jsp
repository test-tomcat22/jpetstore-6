<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>HTTPS Redirect</title></head>
<body>
<%
System.out.println("######################START##########################");
String url = javax.servlet.http.HttpUtils.getRequestURL(request).toString();
String uri = request.getHeader("x-forwarded-proto") + "://" +   // "http" + "://
             request.getServerName() +       // "myhost"
             ":" +                           // ":"
             request.getServerPort() +       // "8080"
             request.getRequestURI() +       // "/people"
             "?" +                           // "?"
             request.getQueryString();       // "lastname=Fox&age=30"

System.out.println("######URL" + url);
System.out.println("######URI" + uri);
System.out.println("######REQUEST HEADER######");
Enumeration headerEnum = request.getHeaderNames();
while(headerEnum.hasMoreElements()) {
   String headerName = (String)headerEnum.nextElement();
   String headerValue = request.getHeader(headerName);
   System.out.println( headerName + " :: " + headerValue );
}

  request.setHeader("x-forwarded-proto", "http");
  System.out.println("######REQUEST HEADER######");
  System.out.println("######REDIRECT" + request.getHeader("x-forwarded-proto"));


if(uri.indexOf("https://") > -1 ) {	
	System.out.println("######REDIRECT:: http");
	System.out.println("######################END############################");  

	String reuri = "http://" +  
             request.getServerName() +       // "myhost"
             ":32608" +                           // ":"
             request.getRequestURI() +       // "/people"
             "?" +                           // "?"
             request.getQueryString();       // "lastname=Fox&age=30"
	response.sendRedirect(reuri);		
	return;
}
%>
	<h1>HTTPS Redirect</h1>
</body>
</html>
