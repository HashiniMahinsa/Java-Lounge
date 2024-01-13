<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.css" />
  <script src="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.js"></script>
  
  <style >
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
    .form-container input[type="email"],
    .form-container input[type="tel"],
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
  
  <h1>Register Form</h1>
  
  <div class="form-container">
    
    <form action="Register" id="registerForm" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>
      
      <label for="dob">Date of Birth:</label>
      <input type="date" id="dob" name="dob" required>
      
      <label for="gender">Gender:</label>
      <select id="gender" name="gender" required>
        <option value="">Select</option>
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value="other">Other</option>
      </select>
      
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
      
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" required>
      
      <input type="submit" value="Submit">
    </form>
  </div>
  
  <div class="video-container">
    <video width="400" height="300" controls autoplay>
      <source src="img/video.mp4" type="video/mp4">
    </video>
  </div>
 </div>
 
 <div class="container">
    
 </div>
 
 <footer class="footer">   
      <p>&copy; 2023 Restaurant System | Designed by <span class="name">Hashini</span></p>   
 </footer>

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <script>
    // Form validation
    document.getElementById("registerForm").addEventListener("submit", function(event) {
      var name = document.getElementById("name").value;
      var dob = document.getElementById("dob").value;
      var gender = document.getElementById("gender").value;
      var email = document.getElementById("email").value;
      var phone = document.getElementById("phone").value;
      var isValid = true;

      // Validate name (non-empty)
      if (name.trim() === "") {
        showError("Name is required");
        isValid = false;
      }

      // Validate dob (non-empty)
      if (dob.trim() === "") {
        showError("Date of Birth is required");
        isValid = false;
      }

      // Validate gender (non-empty)
      if (gender === "") {
        showError("Gender is required");
        isValid = false;
      }

      // Validate email (non-empty and valid format)
      if (email.trim() === "") {
        showError("Email is required");
        isValid = false;
      } else if (!isValidEmail(email)) {
        showError("Invalid email format");
        isValid = false;
      }

      // Validate phone (non-empty and valid format)
      if (phone.trim() === "") {
        showError("Phone is required");
        isValid = false;
      } else if (!isValidPhone(phone)) {
        showError("Invalid phone format");
        isValid = false;
      }

      if (!isValid) {
        event.preventDefault(); // Prevent form submission
      }
    });

    // Function to validate email format
    function isValidEmail(email) {
      var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(email);
    }

    // Function to validate phone format
    function isValidPhone(phone) {
      var phoneRegex = /^\d{10}$/;
      return phoneRegex.test(phone);
    }

    // Function to display error message
    function showError(message) {
      var errorDiv = document.createElement("div");
      errorDiv.className = "error";
      errorDiv.textContent = message;
      var form = document.getElementById("registerForm");
      form.insertBefore(errorDiv, form.firstChild);
    }
  </script>

</body>
</html>