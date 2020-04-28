<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="FitLifter_WS.AdminHome" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>FitLifter</title>
<link rel="icon" href="images/favicon.png" type="image/png" sizes="16x16">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="iLand Multipurpose Landing Page Template">
<meta name="keywords" content="iLand HTML Template, iLand Landing Page, Landing Page Template">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/animate.css">
<!-- Resource style -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Resource style -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
      <form id="form1" runat="server">
<div class="wrapper">
  <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container"> 
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand page-scroll" href="#main"><img src="images/logo.png" width="112" height="27" alt="iLand" /></a> </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li><a class="page-scroll" href="#main">HOME</a></li>
              <li><a class="page-scroll" href="AdminUsers.aspx" >ADMIN USERS</a></li>
             <li><a class="page-scroll" href="BlogTow.aspx">INSTRUCTIONS</a></li>
          <%--  <li><a class="page-scroll" href="Blog.aspx">ADMIN3</a></li>--%>
            <%--<li><a class="page-scroll" href="Login.aspx">ADMIN4</a></li>--%>
            <li><asp:LinkButton id="Logout" runat="server" OnClick="Logout_Button_Clicked" class="page-scroll" style="color:#1eb858;">LOGOUT</asp:LinkButton></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid -->
  
  <div class="main app form" id="main"><!-- Main Section -->
    <div class="hero-section">
      <div class="container nopadding">
        <div class="col-md-5"> <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> </div>
        <div class="col-md-7">
          <div class="hero-content">
              <h1><asp:Label id="UserName" runat="server" class="wow fadeInUp" data-wow-delay="0.1s"></asp:Label></h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Beoplay A1 bluetooth speakers image on the left is owned by Bang and Olufsen and is released under creative
              commons lisence. </p>
            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
            
              <!-- subscribe message -->
        <div id="mesaj"></div>
              <!-- subscribe message --> 
            </div>
          </div>
        </div>
      </div>
    </div>

        <div class="client-section" style="height:160px; background-color:#f3f3f3;">
   
        </div>
    
    <!-- Client Section -->
    <div class="client-section" style="height:50px;">
      <div class="container text-center">
     <%--   <div class="clients owl-carousel owl-theme">
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
        </div>--%>
      <%--  <div class="client-section" style="height:100px; background-color:white;">
   
        </div>--%>

      </div>
    </div>

       <%--  <div class="split-features2">
      
      <div class="col-md-6 nopadding">
        <div class="split-content second">
          <h1 class="wow fadeInUp">Hi, I'm Mohab</h1>
          <p class="wow fadeInUp"> Removing all the bullshit from the fitness industry one post at a time… there’s no guarantee you’re doing it right. Use the Learn tab in the JSA with hundreds of videos made.</p>
          <ul class="wow fadeInUp">
            <li>Nulla ornare purus non consequat ultricies.</li>
            <li>Etiam est nisl, molestie sed egestas bibendum</li>
            <li>Aliquam vel euismod elit, sed suscipit est.</li>
            <li>Curabitur egestas justo neque viverra vel. </li>
          </ul>
        </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/Mohab-img-1.png" alt="Image" /> </div>
      </div>
    </div>--%>


    <div class="split-features">
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
          <ul class="wow fadeInUp">
            <li>Nulla ornare purus non consequat ultricies.</li>
            <li>Etiam est nisl, molestie sed egestas bibendum</li>
            <li>Aliquam vel euismod elit, sed suscipit est.</li>
            <li>Curabitur egestas justo neque viverra vel. </li>
          </ul>
        </div>
      </div>
    </div>
    
  <%--  
     <div class="split-features2">
      
      <div class="col-md-6 nopadding">
        <div class="split-content second">
          <h1 class="wow fadeInUp">The best way to show your product to the world</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
          <ul class="wow fadeInUp">
            <li>Nulla ornare purus non consequat ultricies.</li>
            <li>Etiam est nisl, molestie sed egestas bibendum</li>
            <li>Aliquam vel euismod elit, sed suscipit est.</li>
            <li>Curabitur egestas justo neque viverra vel. </li>
          </ul>
        </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image2.png" alt="Image" /> </div>
      </div>
    </div>
--%>


    <%--        <div class="split-features">
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
          <ul class="wow fadeInUp">
            <li>Nulla ornare purus non consequat ultricies.</li>
            <li>Etiam est nisl, molestie sed egestas bibendum</li>
            <li>Aliquam vel euismod elit, sed suscipit est.</li>
            <li>Curabitur egestas justo neque viverra vel. </li>
          </ul>
        </div>
      </div>
    </div>--%>
    
    
 <%--    <div class="split-features2">
      
      <div class="col-md-6 nopadding">
        <div class="split-content second">
          <h1 class="wow fadeInUp">The best way to show your product to the world</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
          <ul class="wow fadeInUp">
            <li>Nulla ornare purus non consequat ultricies.</li>
            <li>Etiam est nisl, molestie sed egestas bibendum</li>
            <li>Aliquam vel euismod elit, sed suscipit est.</li>
            <li>Curabitur egestas justo neque viverra vel. </li>
          </ul>
        </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image2.png" alt="Image" /> </div>
      </div>
    </div>--%>


          

  <%--  <div id="pricing"  style="background-color:#f9f9f9;"  class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>
          <div class="col-sm-4">
            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"> <i class="ion-ios-paperplane-outline"></i> </div>
              <div class="pricing-details">
                <h2>Starter Plan</h2>
                <span>Free</span>
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <button class="btn btn-primary btn-action btn-fill">Get Plan</button>
              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="table-right table-center wow fadeInUp" data-wow-delay="0.6s">
              <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
              <div class="pricing-details">
                <h2>Popular Plan</h2>
                <span>$3.99</span>
              
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <button class="btn btn-primary btn-action btn-fill">Buy Now</button>
              </div>
            </div>
          </div>
          <div class="col-sm-4">
            <div class="table-right wow fadeInUp" data-wow-delay="0.6s">
              <div class="icon"> <i class="ion-ios-color-wand-outline"></i> </div>
              <div class="pricing-details">
                <h2>Premium Plan</h2>
                <span>$9.50</span>
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <button class="btn btn-primary btn-action btn-fill">Buy Now</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>--%>

    
    <!-- Subscribe Form -->
    <div class="cta-sub no-color">
      <div class="container">
        <div class="cta-inner">
          <h1 class="wow fadeInUp" data-wow-delay="0s">Sign Up to Our Newsletter and get exciting offers</h1>
          <p class="wow fadeInUp" data-wow-delay="0.2s"> Enter your email address we promise, never disclose<br class="hidden-xs">
             or sell your email address. </p>
          <div class="form wow fadeInUp" data-wow-delay="0.3s">
        
              <!-- subscribe message -->
        <div id="mesaj"></div>
        <!-- subscribe message --> 
          </div>
        </div>
      </div>
    </div>
    
    <!-- Footer Section -->
    <div class="footer">
      <div class="container">
        <div class="col-md-7"> <img src="images/logo.png" width="112" height="27" alt="Image" />
          <p> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis
tempore consequuntur officia ducimus unde doloribus quod unt repell  </p>
          <div class="footer-text">
            <p style="color:black;"> Copyright © 2016 Fitlifter All Rights Reserved.</p>
          </div>
        </div>
        <div class="col-md-5">
            <h1>Contact Us</h1>
            <p> Contact our 24/7 customer support if you have any <br class="hidden-xs">
              questions. We'll help you out. </p>
            <a href="mailto:contact@Fitlifter.com">contact@Fitlifter.com</a> </div>
        </div>
      </div>
    
    
    <!-- Scroll To Top --> 
    
    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
    
    <!-- Scroll To Top Ends--> 
    
 
  <!-- Main Section --> 
      </div>
<!-- Wrapper--> 
</div>
<!-- Jquery and Js Plugins --> 
<script type="text/javascript" src="js/jquery-2.1.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/plugins.js"></script> 
<script type="text/javascript" src="js/menu.js"></script> 
<script type="text/javascript" src="js/custom.js"></script>
<script src="js/jquery.subscribe.js"></script> 

 </form>
</body>
</html>
