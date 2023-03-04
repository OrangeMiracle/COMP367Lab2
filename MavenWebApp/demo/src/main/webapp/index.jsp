<%
  java.util.Calendar cal = java.util.Calendar.getInstance();
  int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);

  String greeting = "";
  if(hour < 12){
      greeting = "Good morning";
  } else if(hour < 18){
      greeting = "Good afternoon";
  } else {
      greeting = "Good evening";
  }
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Maven Web Application</title>
  </head>
  <body>
    <h1><%=greeting%>, Ronghuan Wang, Welcome to COMP367</h1>
  </body>
</html>
