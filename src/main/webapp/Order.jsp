<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Lounge</title>

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
    
</style>
</head>
<body>
 
 <div class="container">
 <h6>If you use self pickup mode make sure comment your service type (Drive Thru, Take away, Dine in) for the better service</h6>
 </div>
 
  <div class="container">
  
  <div class="picture-button">
    <img src="img/ubereats.png" alt="Ubereats">
    <button id="ubereats" class="button" style="background-color: #522B16; color: white;">Uber Eats</button>
  </div>
  <div class="picture-button">
    <img src="img/pickmefoods.png" alt="Pickme Foods">
    <button id="pickmefoods" class="button" style="background-color: #522B16; color: white;">Pickme Foods</button>
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

 <script>
        document.getElementById("ubereats").addEventListener("click", function() {
        window.location.href = "https://www.ubereats.com/gb/store/java-lounge-peradeniya-kandy/0eq_zlswWoezrZPLRHB-_Q?diningMode=DELIVERY&sc=SEARCH_SUGGESTION";
        });
 </script>
 
 <script>
        document.getElementById("pickmefoods").addEventListener("click", function() {
        window.location.href = "https://www.pickme.lk/?_branch_match_id=1205085081842362738&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXT9QryEzOzk3Vy8nWN3G3rMr38zYwsQAAJPWlSx4AAAA%3D#";
        });
 </script>

</body>
</html>