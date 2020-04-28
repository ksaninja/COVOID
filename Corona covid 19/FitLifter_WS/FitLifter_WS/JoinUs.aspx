<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JoinUs.aspx.cs" Inherits="FitLifter_WS.JoinUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CoVoid</title>
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




        function Email_Used2() {


            document.getElementById("ErrorMsgs").style.color = "red";
            document.getElementById("ErrorMsgs").textContent = "please fill the information!";
        }

        function Email_Used() {


            document.getElementById("ErrorMsgs").style.color = "red";
            document.getElementById("ErrorMsgs").textContent = "Email already used!";
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
               <h1 class="wow fadeInUp" data-wow-delay="0.1s">Coronavirus ( COVID-19 )</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s">In December 2019, a novel coronavirus called SARS-CoV-2 has resulted in the outbreak of a respiratory illness </p>
          
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
 --%>          <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:4vw; color:#aeaeae; font-size:17px;" >Please fill all information below.</p>
               <p id="ErrorMsgs" style="font-family:Calibri; margin-bottom:5px; height:30px; color:red; font-size:15px;"></p>
               <asp:TextBox ID="Fname" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()" onpaste="return false;" MaxLength="15" class="img-responsive wow fadeInUp" autocomplete="off"  onfocus="ChangeColorPass()" onblur="ChangeColorPassB()"  runat="server"  TextMode="Email"  placeholder="Full name" style="width:49%; font-family:Calibri; padding-left:5px; margin-bottom:5px; margin-right:2%; height:40px; float:left;" ></asp:TextBox>
               <asp:TextBox ID="identity" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" MaxLength="15" class="img-responsive wow fadeInUp" autocomplete="off"  onfocus="ChangeColorPass()" onblur="ChangeColorPassB()"  runat="server"  TextMode="Email"  placeholder="identity/Iqama Number" style="width:49%; font-family:Calibri; padding-left:5px; margin-bottom:5px; height:40px; float:left;" ></asp:TextBox>

               <asp:TextBox ID="Email" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" class="img-responsive wow fadeInUp" runat="server" TextMode="Email" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  placeholder="Email" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
                    
               
               <asp:TextBox ID="Password" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()" onpaste="return false;" class="img-responsive wow fadeInUp" runat="server"  TextMode="Password" onfocus="ChangeColorUsrN()"  onblur="ChangeColorUsrNB()"   placeholder="Password" style="width:49%; font-family:Calibri; padding-left:5px; margin-bottom:5px; margin-right:2%; height:40px; float:left;" ></asp:TextBox>
               <asp:TextBox ID="ConfirmPassword" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()" onpaste="return false;" class="img-responsive wow fadeInUp" runat="server"  TextMode="Password" onfocus="ChangeColorUsrN()"  onblur="ChangeColorUsrNB()"   placeholder="Confirm password" style="width:49%; font-family:Calibri; padding-left:5px; margin-bottom:5px; height:40px; float:left;" ></asp:TextBox>
               
               
               
               <asp:TextBox ID="MobileNum"  onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" MaxLength="15" class="img-responsive wow fadeInUp" autocomplete="off"  onfocus="ChangeColorPass()" onblur="ChangeColorPassB()"  runat="server"  TextMode="Email"  placeholder="Mobile" style="width:49%; font-family:Calibri;  margin-right:2%; padding-left:5px; margin-bottom:5px; height:40px; float:left;" ></asp:TextBox>
               <asp:TextBox ID="Age"  onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" MaxLength="15" class="img-responsive wow fadeInUp" autocomplete="off"  onfocus="ChangeColorPass()" onblur="ChangeColorPassB()"  runat="server"  TextMode="Email"  placeholder="Age" style="width:49%; font-family:Calibri; padding-left:5px; margin-bottom:5px; height:40px; float:left;" ></asp:TextBox>



                    <asp:dropdownlist ID="Gender" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)"  placeholder="Country" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:100%;  font-family:Calibri; float:left; margin-bottom:5px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;"> 
                    <asp:ListItem Value="">Gender</asp:ListItem>
                          <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:dropdownlist>

              <%-- <asp:RadioButtonList ID="rblMeasurementSystem" runat="server" style="width:100%; font-family:Calibri; float:left;">
                              <asp:ListItem Text="Male" Selected="True" Value="Male" />
                              <asp:ListItem Text="Female" Value="Female" />
               </asp:RadioButtonList>--%>

                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                           <ContentTemplate>
               <asp:button ID="btn1" class="img-responsive wow fadeInUp" Text="SIGN UP" onclick="Login_Button_Clicked" OnClientClick="this.disabled = 'true'; this.value='Submitting please wait ...';" runat="server" BorderStyle="None" style="width:100%; color:white; font-family:Calibri; padding-left:5px;  background-color:#1eb858; margin-bottom:5px; padding-right:5px; height:40px; float:left;" UseSubmitBehavior="false" ></asp:button>
             <%--  <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> --%>
                                  </ContentTemplate>
                  </asp:UpdatePanel>
               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-top:7px; color:#aeaeae; font-size:15px; float:left;" >you have one!</p>
               <a href="Login.aspx" class="img-responsive wow fadeInUp" style="font-family:Calibri; text-decoration:none; margin-left:3px; margin-top:7px; color:#1eb858; font-size:15px; float:left;" >Login here</a>
               

           </div>
      </div>
    </div>

       <div class="client-section" style="height:160px; background-color:#f3f3f3;">
   
        </div>
    
    <!-- Client Section -->
    <div class="client-section" style="height:20px;">
      <div class="container text-center">
    <%--    <div class="clients owl-carousel owl-theme">
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
            <p style="color:black;"> Copyright © 2016 CoVoid All Rights Reserved.</p>
          </div>
        </div>
        <div class="col-md-5">
            <h1>Contact Us</h1>
            <p> Contact our 24/7 customer support if you have any <br class="hidden-xs">
              questions. We'll help you out. </p>
            <a href="mailto:contact@Fitlifter.com">contact@Covoid.com</a> </div>
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
