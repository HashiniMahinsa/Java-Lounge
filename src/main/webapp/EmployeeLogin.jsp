<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee login</title>

 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.css" />
  <script src="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.js"></script>

  <style>
  body {
  background-color: #7B4F35;     
}
    
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #d3b091;
  max-height: 10000px;
  text-align: center;
  margin-top: 50px;
}

.picture-button {
  flex: 1;
  text-align: center;
}

.picture-button img {
  width: 300px;
  height: 300px;
}

  .button {
    border-radius: 20px;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    font-family: 'Marcellus SC', serif;
    transition: background-color 0.3s;
    font-color: white;
  }

  .button:hover {
    background-color: #F2E8D9;
    border-color: #8B4513;
    color: white;
  }

.video-container {
  flex: 1;
  text-align: center; 
}

.video-container video {
  width: 100%;
  height: auto;
  max-width: 400px;
  height: 500px;
}

@font-face {
      font-family: 'Marcellus SC';
       src: url('img/MarcellusSC-Regular.woff2') format('woff2'),
       url('img/MarcellusSC-Regular.woff') format('woff');
      font-weight: normal;
      font-style: normal;
}

h1{
color: white;
opacity: 0; 
animation: fadeIn 3s ease forwards; 
font-family: 'Marcellus SC', serif;
}

    @keyframes fadeIn {
       from {
        opacity: 0; 
       }
       to {
        opacity: 1; 
       }
    }
    
    @keyframes fadeInText {
       from {
        opacity: 0;
       }
       to {
        opacity: 1;
       }
    }

     .footer {
      background-color: #7B4F35;
      text-align: center;
      color: white;
      padding: 5px 0;
    }

    .footer p {
      margin: 0;
    }

    .footer .name {
      font-weight: bold;
    }
    
    .form-container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #F9F5F0;
      border-radius: 10px;
    }
    .form-container h2 {
      text-align: center;
    }
    .form-container label {
      display: block;
      margin-bottom: 10px;
    }
    .form-container input[type="text"],
    .form-container input[type="password"],
    .form-container select {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      border: 1px solid #D3B091;
      border-radius: 5px;
    }
    .form-container input[type="submit"] {
      background-color: #6F4E37;
      color: #F9F5F0;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      cursor: pointer;
    }
    .form-container input[type="submit"]:hover {
      background-color: #4B3721;
    }
    .form-container .error {
      color: red;
      margin-bottom: 10px;
    }
    
      
   </style>   

</head>
<body>


   <div class="container">
   <h1>Login Form</h1>
    <div class="form-container">
    <form method="post" action="ViewReservation.jsp" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
        
        <input type="submit" value="Login">
    </form>
    </div>
    
    <div class="video-container">
    <video width="400" height="300" controls autoplay>
      <source src="img/video.mp4" type="video/mp4">
    </video>
    </div>
    
    </div>
    
    <footer class="footer">
    <div class=" text-center">
      <p>&copy; 2023 Restaurant System | Designed by <span class="name">Hashini</span></p>
    </div>
    </footer>
    

<!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


  <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username === "admin" && password === "123") {
                return true; // Allow form submission
                document.getElementById("submit").addEventListener("click", function() {
                    window.location.href = "View Reservation.jsp";
                    });
            } else {
                alert("Invalid username or password");
                return false; // Prevent form submission
            }
        }
    </script>

</body>
</html>