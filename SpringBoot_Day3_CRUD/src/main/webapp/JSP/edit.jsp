<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <h1>EDIT PAGE.......</h1>
  <form action="update">
  <pre>
  ROLL NO  : <input type="text" name="rollno" value="${s.rollno}"> <br>
  NAME     : <input type="text" name="sname" value="${s.sname}"> <br>
  CONTACT  : <input type="text" name="contact" value="${s.contact}"> <br>
  MARKS    : <input type="text" name="marks" value="${s.marks}"> <br>
  USERNAME : <input type="text" name="username" value="${s.username}"> <br>
  PASSWORD : <input type="text" name="password" value="${s.password}"> <br>
 <input type="submit" value="EDIT">
  </pre>
  </form>

</body>
</html>