<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bhutanese studentt at Japan Admin</title>
<style>

.maindiv{
   margin:auto;
   max-width: 350px;
   padding-top:10px; 
   background-color:gray;
   height:200px;
   padding-bottom:60px;
}

body{

padding:260px;
background:linear-gradient(120deg,#2980b9,#8e44ad);
display:flex;

}
.username{
margin-left:auto;
margin-right:auto;
font-size:20px;
font-weight:bold;
}
.password{
margin:auto;
font-size:20px;
font-weight:bold;
align:center;

}
h1{
text-align:center;
}
input {
  margin:auto;
  padding: 3px;
  box-shadow: 3px 3px 5px grey;
  font-size: 14px;
  font-weight: 600;
  width: 300px;
  color: #1c87c9;
}

button {
  margin:auto;
  padding: 10px;
  border: 1px solid gray;
  background-color:green;
  border-radius: 5px;
  font: inherit;
  color:white;
}

</style>

</head>
<body>
  
  <div class = "maindiv">
   <form  action ="./adminservlet" method="post">  
   <h1>Login</h1>
   <div class = "username">
   <label>User Name</label>
   <input type = "text" name ="username" required/>
   </div> 
   <div class = "password">
    <label>Password</label>
   <input type = "text" name = "password" required/>
   <button>Login </button>
   </div>
   </form>
  </div>



</body>
</html>