<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
form{
text-align:center;
padding:50px;
font-size:30px;
}
input{
 padding:10px;
 border:1px solid black;
}
input[type = "submit"]{
font-size:15px;

}
</style>
<meta charset="UTF-8">
<title>confirming your otp</title>
</head>
<body>
<form action = "../driverServlet" method ="post">

<div>Enter your OTP </div>
<input type ="text" name = "otp" required>
 <input type="hidden" id="name" name="name" value ="${name}"required>
 <input type="hidden" id="phone" name="phone" value ="${phone}" required>
 <input type="text" value ="${dname}" name = "driver">
  
<input type ="submit" value ="Submit" >
</form>

</body>
</html>