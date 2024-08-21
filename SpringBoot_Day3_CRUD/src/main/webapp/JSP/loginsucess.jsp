<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
    function editStudent()
    {
    	document.fn.action="edit";
    	document.fn.submit();
    }
    function deleteStudent()
    {
    	document.fn.action="delete";
    	document.fn.submit();
    }
</script>
</head>

  <style> 
    *{
      margin:0;
      padding: 0;
      background-color : hsl(141, 68%, 83%);
      
     }
     .container1{
       padding-top :100px;
       text-align: center;
    }
    .table {
      margin-left: auto;
      
      tr{
      height: 40px;
      }
    }
    .button1  {
       border-radius: 10px;
       width: 80px;
       color : yellow;
       font-weight: bold;
       background-color: hsl(253, 74%, 52%);
       cursor: pointer;
       font-style: italic;  
    }
 </style>
<body>
<div class="container1">
    <h1>*******LOGIN SUCCESS*******</h1> <br> <br>
    <form name="fn">
    <table border="1" class="table">
      <tr>
       <th>SELECT</th>
       <th>ROLL NO</th>
       <th>NMAE</th>
       <th>CONTACT</th>
       <th>MARKS</th>
       <th>USERNMAE</th>
       <th>PASSWORD</th>
       <th colspan="2">ACTION</th>
      </tr>
      
      <c:forEach items="${data}" var="s">
        <tr>
           <td><input type="radio" name="rollno" value="${s.rollno}"></td>
           <td>${s.rollno}</td>
           <td>${s.sname}</td>
           <td>${s.contact}</td>
           <td>${s.marks}</td>
           <td>${s.username}</td>
           <td>${s.password}</td>
           <td><input type="button" value="EDIT" onclick="editStudent ()" class="button1"></td>
           <td><input type="button" value="DELETE" onclick="deleteStudent ()" class="button1"></td>
        </tr>
      </c:forEach>
    </table>
    </form>
    </div>
</body>
</html>