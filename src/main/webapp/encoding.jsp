<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
    //request.setCharacterEncoding("UTF-8");
    String eng =request.getParameter("Accordion");
    String kor =request.getParameter("아코디언");//인코딩해서 전달되므로 깨지지 않지만 읽을 수 없는 문자
    String han = URLDecoder.decode(kor, "UTF-8");//디코딩 작업을 해서 한글이 읽힘 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
</head>

<body>
포워딩된 데이터
eng : <%=eng %>
kor : <%=kor %>
han : <%=han %>
</body>

</html>
