<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="FitLifter_WS.ForgetPassword" %>


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
<script src="js/FitLifterJS.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open%20Sans:300,400,500,600,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/animate.css">
<!-- Resource style -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Resource style -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

     <script>

        function Email_Used() {


            document.getElementById("ErrorMsgs").style.color = "red";
            document.getElementById("ErrorMsgs").textContent = "email or password are incorrect!";
         }

         function Email_Used2() {


             document.getElementById("ErrorMsgs").style.color = "red";
             document.getElementById("ErrorMsgs").textContent = "please fill the information!";
         }

    </script>

</head>
<body>
      <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="wrapper">
  <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container"> 
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
        <%--  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      --%>    <a class="navbar-brand page-scroll"  href="Home.aspx"><img src="images/logo.png" width="112" height="27" alt="FitLifter" /></a> </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
         
          </ul>
        </div>
      </div>
    </nav>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid -->
  
  <div class="main app form" id="main"><!-- Main Section-->
    <div class="hero-section">
      <div class="container nopadding">
       
        <div class="col-md-7">
          <div class="hero-content">
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">Landing Page for Apple Watch</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Beoplay A1 bluetooth speakers image on the left is owned by Bang and Olufsen and is released under creative
              commons lisence. </p>
            <div class="sub-form wow fadeInUp" data-wow-delay="0.3s">
            
              <!-- subscribe message -->
        <div id="mesaj"></div>
        <!-- subscribe message --> 
            </div>
          </div>
        </div>
           <div class="col-md-5">

         <%--       <asp:TextBox ID="Fname1" runat="server" TextMode="SingleLine" placeholder="Frist name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px;" ></asp:TextBox>
                <asp:TextBox ID="Fname2" runat="server" TextMode="SingleLine" placeholder="Last name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
 --%>          <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; margin-top:7vw; color:#aeaeae; font-size:17px;" >Please fill all information below.</p>
               <p id="ErrorMsgs" style="font-family:Calibri; margin-bottom:5px; height:30px; color:red; font-size:15px;"></p>
               <asp:TextBox ID="Email" class="img-responsive wow fadeInUp" onkeypress="return LoginTest(event)" onpaste="return false;" runat="server"  TextMode="Email"  placeholder="Email" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
                     
               <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                           <ContentTemplate>
                                 <asp:button ID="btn1" class="img-responsive wow fadeInUp" Text="LOGIN" onclick="Login_Button_Clicked" OnClientClick="this.disabled = 'true'; this.value='Loging in please wait ...';" runat="server" BorderStyle="None" style="width:100%; color:white; font-family:Calibri; padding-left:5px;  background-color:#1eb858; margin-bottom:5px; padding-right:5px; height:40px; float:left;" UseSubmitBehavior="false" ></asp:button>
                           </ContentTemplate>
               </asp:UpdatePanel>

                <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-top:7px; color:#aeaeae; font-size:15px; float:left;" >you dont have one!</p>
                <a href="JoinUs.aspx" class="img-responsive wow fadeInUp" style="font-family:Calibri; text-decoration:none; margin-left:3px; margin-top:7px; color:#1eb858; font-size:15px; float:left;" > Sign up here</a>
                <a href="Login.aspx" class="img-responsive wow fadeInUp" style="font-family:Calibri; text-decoration:none; color:#1eb858; margin-bottom:15px; margin-top:7px; font-size:15px; float:right;" >Login Now!</a>
                               
                               <%--  <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> --%>


           </div>
      </div>
    </div>

       <div class="client-section" style="height:160px; background-color:#f3f3f3;">
   
        </div>
    
    <!-- Client Section -->
    <div class="client-section" style="height:20px;">
      <div class="container text-center">
      <%--  <div class="clients owl-carousel owl-theme">
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
        </div>--%>
      
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
