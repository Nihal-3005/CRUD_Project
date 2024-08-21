<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style> 
    *{
      margin:0;
      padding: 0;
      background-color : hsl(72, 73%, 74%);
      
     }
     .container1{
       padding-top :100px;
       text-align: center;
    }
    .button1  {
       border-radius: 10px;
       width: 150px;
       height : 25px;
       color : yellow;
       font-weight: bold;
       background-color: Orange;
       cursor: pointer;
       font-size: 18px;
       font-style: italic;  
    }
     .data {
       font-size: 18px;
       font-style: italic;
     }
 </style> 
<body>
  <div class="container1">
 <h1>.....REGISTER PAGE.....</h1> <br>
 <form action="save">
 <pre class= "data">
 ROLL NO  : <input type="text" name="rollno"> <br>
 NAME     : <input type="text" name="sname"> <br>
 CONTACT  : <input type="text" name="contact"> <br>
 MARKS    : <input type="text" name="marks"> <br>
 USERNAME : <input type="text" name="username"> <br>
 PASSWORD : <input type="text" name="password"> <br>
 <input type="submit" value="save" class = "button1">
 
 </pre></form>
  </div>
</body>
</html>