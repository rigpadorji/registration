<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpSession"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration confirmation</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
body{
  background-color:#E6E6FA;
  padding-top:80px;

}
h1{
 text-align:center;
}
.container{
   margin :auto;
   width: 500px;
   border:1px solid white;
   background-color:white;
   padding-left:20px;
   
}

table{
font-size:25px;
height:450px;
}

input{
font-size:20px;
background-color:gray;

}

     

</style>

</head>
<body>


<!-- <div id="google_translate_element"></div>
<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement(
      {
        pageLanguage: 'en',
        includedLanguages: 'en,ja',
        layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
        autoDisplay: false,
      },
      'google_translate_element'
    );
  }
</script>
<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>  -->



   <h1>Please confirm your registraion</h1>
     <div class = "container">
    <table id ="confirmform" >
      <tr>
        <td><b>Name</b>:</td><td>${name}</td>
      </tr>
       <tr>
        <td ><b>Email</b>:</td><td>${email}</td>
      </tr>
      <tr>
       <td><b>Phone</b>:</td><td>${phone}</td>
      </tr>
       <tr>
        <td><b>Gender</b>:</td><td>${gender}</td>
      </tr>
       <tr>
        <td><b>Prefecture</b>:</td><td>${slist}</td>
      </tr>
      <tr>
        <td><b>Appartment</b>:</td><td>${address}</td>
      </tr>
       <tr>
        <td><b>Status</b>:</td><td>${status}</td>
      </tr>
       <tr>
        <td><b>Country</b>:</td><td>${country}</td>
      </tr>
     </table>

<form action = "./regiservlet1" method ="post">
<input type="hidden" name="name" value ="${name}"/>
<input type="hidden" name="email" value ="${email}"/>
<input type="hidden" name="phone" value ="${phone}"/>
<input type="hidden" name="gender" value ="${gender}"/>
<input type="hidden" name="slist" value ="${slist}"/>
<input type="hidden" name="address" value ="${address}"/>
<input type="hidden" name="status" value ="${status}"/>
<input type="hidden" name="country" value ="${country}"/>


<input type = "submit" name = "confirmbutton" value ="Confirm"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type ="button" id="editButton" name ="editButton" value = "Edit"  onclick ="editregistration()"/>
</form>
</div>


<script>
function editregistration() {

    window.location.href = "Registrationform.jsp?editMode=true";
    
}

</script>

	<%
	HashMap<String, String> userData = (HashMap<String, String>)session.getAttribute("userData");
	String name = "";
	String email = "";
	String phone= "";
	String gender = "";
	String prefecture = "";
	String appartment = "";
	String status = "";
	String country = "";
	if(userData != null) {
		name = userData.get("name");
		email = userData.get("email");
		phone = userData.get("phone");
		gender = userData.get("gender");
		prefecture = userData.get("slist");
		appartment = userData.get("address");
		status = userData.get("status");
		country = userData.get("country");
			
	}else {
		
		name = null;
		email = null;
		phone = null;
		gender = null;
		prefecture = null;
		appartment = null;
		status = null;
		country = null;
	}
	
    %>
     <table id = "editConfirm" style = "display:none">
      <tr>
        <td><b>Name</b>:</td><td><%= name %></td>
      </tr>
       <tr>
        <td ><b>Email</b>:</td><td><%= email %></td>
      </tr>
      <tr>
       <td><b>Phone</b>:</td><td><%=phone%></td>
      </tr>
       <tr>
        <td><b>Gender</b>:</td><td><%= gender %></td>
      </tr>
       <tr>
        <td><b>Prefecture</b>:</td><td><%=prefecture %></td>
      </tr>
      <tr>
        <td><b>Appartment</b>:</td><td><%= appartment %></td>
      </tr>
       <tr>
        <td><b>Status</b>:</td><td><%= status%></td>
      </tr>
       <tr>
        <td><b>Country</b>:</td><td><%= country %></td>
      </tr>
     </table>
     
<div class = "second container">
<form action = "./regiservlet1" method ="post">
<input type="hidden" name="name" value ="${name}"/>
<input type="hidden" name="email" value ="${email}"/>
<input type="hidden" name="phone" value ="${phone}"/>
<input type="hidden" name="gender" value ="${gender}"/>
<input type="hidden" name="slist" value ="${slist}"/>
<input type="hidden" name="address" value ="${address}"/>
<input type="hidden" name="status" value ="${status}"/>
<input type="hidden" name="country" value ="${country}"/>
</form>
 </div>
     
     <script>

$(window).on('load', function() {
	function getParameterByName(name, url) {
		
	    if (!url) url = window.location.href;
	    name = name.replace(/[\[\]]/g, "\\$&");
	    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
	        results = regex.exec(url);
	    if (!results) return null;
	    if (!results[2]) return '';
	    return decodeURIComponent(results[2].replace(/\+/g, " "));
	}



	$(document).ready(function(){
	    var ConfirmMode = getParameterByName('confirmMode');
	    console.log("editConfirm is ready:", ConfirmMode);
	    
	    console.log("confirmform:", $('#confirmform'));
	    console.log("editConfirm:", $('#editConfirm'));
	    
	    if (ConfirmMode === 'true') {
	        $('#confirmform').hide();
	        $('#editConfirm').show();
	    } else {
	        $('#confirmform').show();
	        $('#editConfirm').hide();
	    }
	});

});


</script>

</body>
</html>