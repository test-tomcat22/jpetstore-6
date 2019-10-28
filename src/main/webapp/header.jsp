<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.util.Enumeration" %>
<html>
<head><title>Print Header</title></head>
<body>
<%
    Enumeration headerEnum = request.getHeaderNames();
    while(headerEnum.hasMoreElements()) {
        String headerName = (String)headerEnum.nextElement();
        String headerValue = request.getHeader(headerName);
%>
<%= headerName %> = <%= headerValue %> <br>
<%
    }
%>
 
</body>
</html>
