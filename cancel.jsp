<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration cancellation form</title>
<style>
body{
   background-color:#B2BEB5;
   
}
.container{
 padding-top:100px;
 margin:auto;
 width:450px;
 font-size:25px;

}
input{
padding:7px;
width:300px;
font-size:15px;
}

input.submit{
width:120px;
background-color:green;
font-size:25px;
}
</style>
</head>
<body>
 
  <form action ="./cancelServlet" method = "get">  
  
 <div class="container"> 
 <p>Enter your information</p>
   <div>
   <label>Name</label><div><input type = "text" name = "name" required/></div>
   </div>
   <div>
   <label>Email Address</label><div><input type= "text" name = "email" required/></div>
   </div>
   <div>
   <input class="submit" type= "submit" value= "Enter"/>
   </div>

 
</div> 
 </form>


</body>
</html>