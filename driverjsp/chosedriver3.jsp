<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Driver</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            margin: 100px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 0px #ccc;
            width: 400px;
        }

        .container p {
            font-size: 18px;
        }

        .container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .container button {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
        }

        .container a {
            text-decoration: none;
            color: #4CAF50;
        }

        .container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action ="../driverServletPamo" method ="post">
        <div class="container">
            <p><b>To be able to choose your favorite driver, you need to register first.<br/>
                If you have not registered yet, you can register from here: <a href="../Registrationform.jsp">Register</a></b>
            </p>
            <p>Please fill in your name and phone number, which you used during registration.</p>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            <p style ="font-size:20px;"><b>Select your driver</b></p>
            <input type="checkbox" value = "Pillo" name = "driver" onchange ="limitToOne(this)">
            <label style = "color:blue;"><b>PILLO</b></label>
             <input type="checkbox" value = "Pamo" name = "driver" onchange ="limitToOne(this)"  >
            <label style = "color:blue;"><b>PAMO</b></label>
             <input type="checkbox" value = "Zhokpo" name = "driver" onchange ="limitToOne(this)" checked>
            <label style = "color:blue;"><b>ZHOKPO</b></label>
            <button type="submit" name="submit"><b>Go</b></button>
        </div>
    </form>
     <script>
     function limitToOne(checkbox) {
     var checkboxes = document.getElementsByName("driver");
     checkboxes.forEach(function(item) {
        if (item !== checkbox) {
            item.checked = false;
        }
       });
    }
</script>
</body>
</html>
