<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  <title>Java lounge</title>
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.css" />
  <script src="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.js"></script>
 
  <style>
    .logo-image {
     width: 100px;
     height: 100px;
    }  
  
    #videoPlayer2{
     background-color: #d3b091;
     max-width: 1400px;
    }
  
    #topbar {
     background: #7B4F35;
     font-size: 15px;
     height: 300px;
     padding: 0;
     color: rgba(255, 255, 255, 0.6);
    }

   #topbar .contact-info a {
      line-height: 0;
      color: rgba(255, 255, 255, 0.6);
      transition: 0.3s;
    }

   #topbar .contact-info a:hover {
      color: #fff;
    }

   #topbar .contact-info i {
      color: #b99b7b;
      line-height: 0;
      margin-right: 5px;
    }

   #topbar .contact-info .phone-icon {
      margin-left: 15px;
    }

   #topbar .social-links a {
      color: rgba(255, 255, 255, 0.6);
      padding: 4px 12px;
      display: inline-block;
      line-height: 1px;
      transition: 0.3s;
    }

    #topbar .social-links a:hover {
      color: #fff;
    }
  
    .social-links {
      margin-bottom: 20px;
    }
    
    .social-links a {
      margin-right: 20px;
      margin-left: 20px;
    }
    
    .social-links img {
      width: 40px;
      height: 40px;
    }
    
    #status{
      color: white;
      font-family: 'Marcellus SC', serif;
    }
    
    #videoPlayer2{
    
    }
    
     #videoPlayer {
      width: 100%;
      height: 5px;
    }
    body {
      background-color: #d3b091;
      color: #ffffff;
    }
    h1{
      color: white;
      opacity: 0; 
      animation: fadeIn 3s ease forwards; 
      font-family: 'Marcellus SC', serif;
    } 
    
    @font-face {
      font-family: 'Marcellus SC';
       src: url('img/MarcellusSC-Regular.woff2') format('woff2'),
       url('img/MarcellusSC-Regular.woff') format('woff');
      font-weight: normal;
      font-style: normal;
     }
    
     h2, h3, h4, h5, h6 {
      color: #3B1F16;
      font-family: 'Marcellus SC', serif;
      animation: fadeIn 3s ease forwards;
    }
    .btn-primary {
      background-color: #522B16;
      border-color: #964B00;
      border-radius: 20px;
    }
    .btn-primary:hover {
      background-color: #8B4513;
      border-color: #8B4513;
    }
    .container {
      text-align: center;
      margin-top: 50px;
    }
    #foodCarousel,#foodCarousel2,#imageCarousel {
      max-width: 600px;   
      display: inline-block;
      max-height: 600px;
      padding: 50px;
      margin top: 100px;
      
    }
    
    #foodCarousel {
      float: left;
    }
    #foodCarousel2 {
      float: right;
    }
       
    .navbar {
      background-color: #7B4F35;
      color: white;
    }

    .navbar-brand {
      color: white;
      font-weight: bold;
    }

    .navbar-nav .nav-link {
      color: #333333;
      font-family: 'Marcellus SC', serif;
      font-size: 19px;
      animation: fadeIn 3s ease forwards;
    }

    .navbar-nav .nav-link:hover {
      color: #F7B733;
    }
        
    #about_us {

      background-color: #d3b091;  
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      overflow: hidden;
     
    }

    #about_us h2 {
      font-size: 50px;
      color: #3B1F16;       
      text-align: left;
      animation: typing 5s infinite;
      animation: fadeIn 5s ease forwards;
    }

    #aboutUsDescription {
      font-size: 15px; 
      color: #522B16; 
      overflow: hidden;
      white-space: nowrap;
      transition: background-color 0.3s ease;
      text-align: left;
      opacity: 0;
      animation: fadeIn 5s ease forwards; 
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

    .aboutUsDescriptionContainer {
       width: 100%;
       height: 100%;
       overflow: hidden;
    }
     
    .about-us {
      background-color: #D3BFA8;
      transition: background-color 0.3s ease;
      padding: 20px;
      cursor: pointer;
      overflow: hidden;
 
    }
    .about-us:hover {
      background-color: #F2E8D9; 
      transform: scale(1.1);    
    }
 
    #services {

      background-color: #d3b091;  
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      overflow: hidden;
    }

    #services h2 {
      font-size: 50px; 
      color: #3B1F16; 
      text-align: left;
      animation: typing 5s infinite;
      animation: fadeIn 5s ease forwards
    }

    #servicesDescription {
      font-size: 15px; 
      color: #522B16; 
      overflow: hidden;
      white-space: nowrap;
      transition: background-color 0.3s ease;
      text-align: left;
      
    }
 
    .services {
      background-color: #D3BFA8;
      transition: background-color 0.3s ease;
      padding: 20px;
      cursor: pointer;
      overflow: hidden;
 
    }
    .services:hover {
      background-color: #F2E8D9; 
      transform: scale(1.1);     
    }
    
    .carousel-container {
      max-width: 500px; 
      margin: 0 auto;
    }
    
    .carousel-item img {
      width: 100%; 
      max-height: 475px;
    }
    
    .card img {
      width: 100%; 
      max-height: 150px;
      align: center;
    }
    
    .card{
      background-color: #D3BFA8;     
    }
    
    #types{
      background-color: #D3BFA8;
    }
 
    @keyframes typing {
     0% {
      width: 0;
     }
     100% {
      width: 100%;
     }
    }
     
     #contact{
      background-color: #7B4F35;
     }
     
     #email{
      background-color: #7B4F35;
     }
         
     .footer {
      background-color: #7B4F35;
      color: white;
      padding: 5px 0;
    }

    .footer p {
      margin: 0;
    }

    .footer .name {
      font-weight: bold;
    }
    
    #map {
       height: 600px;
    }
    
    #location{
       background-color: #F2E8D9;
     }
    
  </style>
  
</head>

<body>

  <nav class="navbar navbar-expand-md">
   <div class="container">
      <a class="navbar-brand" href="#"> <img src="img/Java_Logo.jpg" alt="Logo" class="logo-image"> </a> <h1> Java lounge</h1>
    
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">     
      <div class="social-links">
      <a href="https://www.facebook.com/javaloungelk/." target="_blank"><img src="img/facebook.jpg" alt="Facebook"></a>
      <a href="https://www.instagram.com/javaloungecolombo/" target="_blank"><img src="img/instergram.jpeg" alt="Instagram"></a>
      <a href="https://www.youtube.com/channel/UC04S4_0tz-1SmgrJhFOPe5g" target="_blank"><img src="img/youtube.png" alt="YouTube"></a>
      <a href="https://www.ubereats.com/gb/store/java-lounge-peradeniya-kandy/0eq_zlswWoezrZPLRHB-_Q?diningMode=DELIVERY&sc=SEARCH_SUGGESTION" target="_blank"><img src="img/ubereats.png" alt="UberEats"></a>
      <a href="https://www.pickme.lk/?_branch_match_id=1205085081842362738&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXT9QryEzOzk3Vy8nWN3G3rMr38zYwsQAAJPWlSx4AAAA%3D#" target="_blank"><img src="img/pickmefoods.png" alt="PickmeFoods"></a>
      </div>
      
      <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#about_us">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services">Our Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#contactus" onclick="openGoogleMaps()">Contact Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#map">location</a>
          </li>
          
       </ul>
       
      </div>
    </div>
   </nav> 
    
    
    <div class="container">
    <h3>Welcome to java lounge!</h3>
    </div>
      
    <div class="container">
    <div class="row">
    
    <div class="col-md-4" >
    <button id="register" type="button" class="btn btn-primary">Register</button>
    </div>
     
    <div class="col-md-4" >
    <div id="status"></div>
    <div id="button-container"></div>
    </div>
    
    <div class="col-md-4" >
    <button id="reservation" type="button" class="btn btn-primary">Reservations</button>
    </div> 
      
    </div> 
    </div>  
 
   
    <div id="videoPlayer2" class="container">
    <div id="videoPlayer2"> </div>
    </div>
 
   <div id="about_us" class="section">
    <div class="container">  
     <div class="about-us" >  
      <div class="row">
                  
       <div class="col-md-7" >
        <h2>AboutUs</h2> 
        <p id="aboutUsDescription"> Welcome to Java Lounge, the ultimate destination for coffee lovers in Sri Lanka. </p>
        <p id="aboutUsDescription"> Established in 2007, Java Lounge has become a renowned name in the local coffee </p>
        <p id="aboutUsDescription"> scene, offering a wide range of premium coffee blends, </p>
        <p id="aboutUsDescription"> exquisite beverages,and delectable food options.</p>
        <p id="aboutUsDescription"> At Java Lounge, we are passionate about serving the finest quality coffee sourced </p>
        <p id="aboutUsDescription"> from the best coffee-growing regions around the world.Our dedicated team of baristas </p>
        <p id="aboutUsDescription"> craft each cup with precision and expertise, ensuring an exceptional coffee experience </p>
        <p id="aboutUsDescription"> for our valued customers.</p>
        <p id="aboutUsDescription"> With a warm and inviting ambiance, Java Lounge provides a cozy space for you to relax, </p>
        <p id="aboutUsDescription"> socialize, or work while enjoying your favorite coffee.We also offer free Wi-Fi and </p>
        <p id="aboutUsDescription"> comfortable seating, making it an ideal spot for both casual meetups and productive work </p>
        <p id="aboutUsDescription"> sessions. </p>
       
       </div>

       <div class="col-md-5">  
         <div class="row">          
         <div id="imageCarousel" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/staff6.jpeg" alt="Slide 1" class="img-fluid">
            </div>
            <div class="carousel-item">
              <img src="img/supplier2.jpeg" alt="Slide 2" class="img-fluid">
            </div>
            <div class="carousel-item">
              <img src="img/staff5.jpg" alt="Slide 3" class="img-fluid">
            </div>          
          </div>
          <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
          </div>
        </div>
          
          
       </div>

      </div> 
        
     </div>
    </div>
   </div>
   

   <div id="services" class="section">
    <div class="container"> 
     <div class="services" >
     <div class="container">
     <h2>Services</h2> 
     </div> 
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="10"></li>
      </ol>
     <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="img/wifi2.jpeg" class="d-block w-100" alt="wifi">
        <div class="carousel-caption">
          <h1>Free wifi</h1>
          <p> We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/party.jpeg" class="d-block w-100" alt="Image 2">
        <div class="carousel-caption">
          <h1>Weekend Special Offers</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/seat.jpeg" class="d-block w-100" alt="seat">
        <div class="carousel-caption">
          <h1>Comfortable Seating</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/women.jpeg" class="d-block w-100" alt="performance">
        <div class="carousel-caption">
          <h1>Relaxing Music</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/staff.jpg" class="d-block w-100" alt="staff">
        <div class="carousel-caption">
          <h1>Best Staff</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/cake.jpeg" class="d-block w-100" alt="cupkake">
        <div class="carousel-caption">
          <h1>Variety Of Cakes</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/food1.jpg" class="d-block w-100" alt="coffee">
        <div class="carousel-caption">
          <h1>World's Best Coffee </h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/lunch.jpeg" class="d-block w-100" alt="breakfast">
        <div class="carousel-caption">
          <h1>Variety Of Food Options</h1>
          <p>We open 8.30 a.m to 11.30 p.m</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img/cupcake.jpeg" class="d-block w-100" alt="dinner">
        <div class="carousel-caption">
          <h1>Sweets and savories</h1>
          <p>We Open 8.30 a.m To 11.30 p.m</p>
        </div>
      </div>
      <div  class="carousel-item">
    <div id="types" class="container">
     <div class="row">
      <div class="col-md-6">
        <div class="card">
          <img src="img/coffee2.jpeg" class="card-img-top" alt="Card Image 1">
          <div class="card-body">
            <h1 class="card-title">With Fresh Coffee</h1>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <img src="img/milk.jpeg" class="card-img-top" alt="Card Image 2">
          <div class="card-body">
            <h1 class="card-title">With Fresh Milk</h1>
            
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <img src="img/sugar.jpeg" class="card-img-top" alt="Card Image 3">
          <div class="card-body">
            <h1 class="card-title">With Fresh Sugar</h1>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <img src="img/beverages.jpg" class="card-img-top" alt="Card Image 4">
          <div class="card-body">
            <h1 class="card-title">To Your Hands</h1>
            
          </div>
        </div>
      </div>
    </div>
  </div>
        <div class="carousel-caption">
          
          <p>We Open 8.30 a.m To 11.30 p.m</p>
        </div>
      </div>
   <div class="carousel-item">
    <div id="types" class="container">
     <div class="row">
      <div class="col-md-6">
        <div class="card">
          <img src="img/relax.jpeg" class="card-img-top" alt="Card Image 1">
          <div class="card-body">
            <h1 class="card-title">Dine In</h1>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <img src="img/takeaway.jpeg" class="card-img-top" alt="Card Image 2">
          <div class="card-body">
            <h1 class="card-title">Take Away</h1>
            
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <img src="img/drivethru.jpeg" class="card-img-top" alt="Card Image 3">
          <div class="card-body">
            <h1 class="card-title">Drive thru</h1>
            
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <img src="img/delivery.jpeg" class="card-img-top" alt="Card Image 4">
          <div class="card-body">
            <h1 class="card-title">Delivery</h1>
            
          </div>
        </div>
      </div>
    </div>
  </div>
        <div class="carousel-caption">
          
          <p>We Open 8.30 a.m To 11.30 p.m</p>
        </div>
      </div>  
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
   </div>
  </div>
 </div>
    
</div>

    <section id="topbar" class="d-flex align-items-center">
    <div id="contactus" class="container">
       <h1>Contact Us</h1><br><br>
    </div>
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
       
        <i class="bi bi-envelope-fill"></i><a href="#email"><span class="__cf_email__" data-cfemail="a1c8cfc7cee1cbc0d7c0cdced4cfc6c48fcdca">info@javalounge.lk</span></a>
        <i class="bi bi-phone-fill phone-icon"></i> +94 11-2556633
        <i class="bi bi-geo-alt-fill"></i> No. 255 Peradeniya Road, Kandy
      </div>
   
      <div class="social-links d-none d-md-block">
        <a href="https://www.facebook.com/javaloungelk/" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="https://www.instagram.com/javaloungecolombo/?hl=en" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="https://www.tiktok.com/discover/java-lounge-srilanka" class="tiktok"><i class="bx bxl-tiktok"></i></a>
      </div>
    </div>
  </section>  
  
     <div id="contact" class="container-fluid">
      <div class="row">
       <div class="col-md-6">
        <div id="email" class="container">
         <h2>Email Us</h2>
         <form action="mailto:harshanimanishafernando@gmail.com" method="post" enctype="text/plain">
         <div class="form-group">
          <label for="subject">Subject:</label>
          <input type="text" name="subject" class="form-control" required>
         </div>
         <div class="form-group">
          <label for="message">Message:</label>
          <textarea name="message" class="form-control" required></textarea>
         </div>
        <button type="submit" class="btn btn-primary">Send Email</button>
        </form>
       </div>
       </div>
      <div class="col-md-6">
        <div id="location" class="container">
        <h2> Find Us</h2>
        <div id="map"></div>
        </div>
      </div>
      </div>
     </div>
     
    <div class="container">
    <div class="row">
    <div class="col-md-12" >
    <button id="employee" type="button" class="btn btn-primary">Employee Login</button>
    </div>      
    </div> 
    </div>

    <footer class="footer">
    <div class="container text-center">
      <p>&copy; 2023 Restaurant System | Designed by <span class="name">Hashini</span></p>
    </div>
    </footer>
    

     
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  

    <script>
        // Initialize the map
        var map = L.map('map').setView([7.2547, 80.5915], 15);

        // Add the OpenStreetMap tile layer
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors'
        }).addTo(map);

        // Add a marker for Java Lounge
        L.marker([7.2563, 80.5960]).addTo(map)
            .bindPopup('<b>Java Lounge</b><br>Peradeniya, Sri Lanka')
            .openPopup();
    </script>
  

  
 <script>   
    $(document).ready(function() {
    	
    	      var currentTime = new Date();
    	      var currentHour = currentTime.getHours();
    	      var currentMinute = currentTime.getMinutes();

    	      // Set closing time to 11:30 PM (23:30)
    	      var closingTime = new Date();
    	      closingTime.setHours(23);
    	      closingTime.setMinutes(30);

    	      // Set opening time to 8:30 AM (8:30)
    	      var openingTime = new Date();
    	      openingTime.setHours(8);
    	      openingTime.setMinutes(30);

    	      // Compare current time with closing and opening time
    	      if (currentTime >= closingTime || currentTime <= openingTime) {
    	        $('#status').text('Closed');
    	      } else {
    	        $('#button-container').html('<button class="btn btn-primary">Place Order</button>');
    	      }
    	    });
      
    
    var videoSrc = "https://www.youtube.com/embed/LgqnjsXyNA0?autoplay=1";
    var videoIframe = '<iframe width="70%" height="350" src="' + videoSrc + '"frameborder="0" allowfullscreen></iframe>';
    $("#videoPlayer2").html(videoIframe);
    $("#videoPlayer2").show();
 </script>   
           
 <script>          
       $("#aboutUsDescription").hover(
    	    function() {
    	       $(this).css("background-color", "#F2E8D9");
    	    },
    	    function() {
    	        $(this).css("background-color", "#D3BFA8");
            });
        });
        
       $("#services").hover(
    	    function() {
    	       $(this).css("background-color", "#F2E8D9");
    	    },
    	    function() {
    	        $(this).css("background-color", "#D3BFA8");
           });
         });

 </script>
 
  <script>
        document.getElementById("button-container").addEventListener("click", function() {
        window.location.href = "Order.jsp";
        });
 </script> 
 
  <script>
        document.getElementById("reservation").addEventListener("click", function() {
        window.location.href = "Reservation.jsp";
        });
 </script>
 
  <script>
        document.getElementById("register").addEventListener("click", function() {
        window.location.href = "Register.jsp";
        });
 </script>
 
  <script>
        document.getElementById("employee").addEventListener("click", function() {
        window.location.href = "EmployeeLogin.jsp";
        });
 </script>      
  
</body>
</html>

