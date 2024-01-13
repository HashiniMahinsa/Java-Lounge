<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reservation</title>
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
      max-width: 600px;
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
    .form-container input[type="number"],
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
  
  <h1>Reservation Form</h1>
  
    <div class="form-container">
    
    <form action="ReserveServlet" id="reservationForm" method="post">
      <label for="name">Receiver's Name:</label>
      <input type="text" id="name" name="name" required>
      
      <label for="reservationDate">Reservation Date:</label>
      <input type="date" id="reservationDate" name="reservationDate" required>
      
      <label for="startHour">Start Hour:</label>
      <select id="startHour" name="startHour" required>
        <option value="">Select</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
      </select>
      
      <label for="endHour">End Hour:</label>
      <select id="endHour" name="endHour" required>
        <option value="">Select</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
      </select>
      
      <p id="error-message"></p>
      
      <label for="tableSeats">Number of Seats:</label>
      <select id="tableSeats" name="tableSeats" required>
        <option value="">Select</option>
        <option value="1">1 seat</option>
        <option value="2">2 seats</option>
        <option value="4">4 seats</option>
        <option value="8">8 seats</option>
        <option value="16">16 seats</option>
      </select>
      
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
      

      
      <input type="submit" value="Submit">
    </form>
  </div>
  
    <div class="video-container">
    <video width="400" height="300" controls autoplay>
      <source src="img/video.mp4" type="video/mp4">
    </video>
    </div>
  
  
 </div>

 
 <footer class="footer">   
      <p>&copy; 2023 Restaurant System | Designed by <span class="name">Hashini</span></p>   
 </footer>

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


</body>
</html>