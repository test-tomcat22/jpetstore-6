<%
  int sleep = 0;
  try {
    sleep = Integer.parseInt(request.getParameter("sleep"));
    System.out.println("accordion call=sleep.jsp");
  } catch (Exception e) {
    sleep = 5;
  }
  Thread.sleep(sleep * 1000);
%>
sleep...
