<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
</head>
 <style> 
    *{
      margin:0;
      padding: 0;
      background-color : lightblue;
      
     }
     .container1{
       padding-top :100px;
       text-align: center;
       font-size: 18px;
    }
    .button1  {
       border-radius: 10px;
       width: 150px;
       height : 25px;
       color : yellow;
       font-weight: bold;
       background-color: blue;
       cursor: pointer;  
    }
    a {
       font-style: italic;
       font-size: 18px;
    }
 </style>
<body>
  <div class="container1">
  
  <div class="container1">
  <h1>LOGIN PAGE</h1> <br>
  <form action="loginsucess">
  <pre>
  USERNAME  : <input type="text" name="username" placeholder="Enter Username"> <br>
  PASSWORD  : <input type="text" name="password" placeholder="Enter Password"> <br>
  <input type="AddNew" value="LOGIN" class=button1> <br>
  <a href="register">REGISTER HERE</a>
  </pre>
  </form>
  </div>
  </div>
</body>
</html>