<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscribe.aspx.cs" Inherits="FitLifter_WS.Subscribe" %>

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


          <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">

    
      
     
  
  

        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->
        <!--Theme custom css -->
      

        <!--Theme Responsive css-->

        <script>



            function LoadingFunction() {

                //document.querySelector('#SERVICES2').style.display = "none";

                var url = window.location.href;
                var queryString = url ? url.split('?')[1] : window.location.search.slice(1);
                var v1 = queryString.split('=')[1];

                if (v1 == "S1") {
                    scrollToForm1();
                }
                else if (v1 == "S2") {
                    scrollToForm2();
                }
                else if (v1 == "S3") {
                    scrollToForm3();
                }
                else if (v1 == "S4") {
                    scrollToForm4();
                }

                // }


            }


             
            function onclick1(num) {

                if (num == '1') {
                    window.open("MuscleInformation.aspx", "_self")


                }
                else if (num == '2') {
                    window.open("MuscleInformation.aspx", "_self")


                }
                else if (num == '3') {
                    window.open("MuscleInformation.aspx", "_self")

                }
                // document.querySelector('#SERVICES1').scrollIntoView({ behavior: 'smooth' });
                //document.getElementById("ErrorMsgs").style.color = "red";
                //document.getElementById("ErrorMsgs").textContent = "email or password are incorrect!";
            }



            function scrollToForm1() {

                document.querySelector('#SERVICES1').style.display = "block";
                document.querySelector('#SERVICES2').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES4').style.display = "none";
         
                document.querySelector('#SERVICES1').scrollIntoView({ behavior: 'smooth' });


                //document.getElementById('#L1').style.width = "99%";
                //document.getElementById('#L1').style.Width = "50%";

                // document.querySelector('#SERVICES1').scrollIntoView({ behavior: 'smooth' });
                //document.getElementById("ErrorMsgs").style.color = "red";
                //document.getElementById("ErrorMsgs").textContent = "email or password are incorrect!";
            }




            function scrollToForm2() {



                document.querySelector('#SERVICES1').style.display = "none";
                document.querySelector('#SERVICES2').style.display = "block";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES4').style.display = "none";
            
                document.querySelector('#SERVICES2').scrollIntoView({ behavior: 'smooth' });
                //document.querySelector('#SERVICES4').scrollIntoView({ behavior: 'smooth' });


                //document.getElementById('#L1').style.width = "99%";
                //document.getElementById('#L1').style.Width = "50%";

                // document.querySelector('#SERVICES1').scrollIntoView({ behavior: 'smooth' });
                //document.getElementById("ErrorMsgs").style.color = "red";
                //document.getElementById("ErrorMsgs").textContent = "email or password are incorrect!";
            }



            function scrollToForm3() {


                document.querySelector('#SERVICES1').style.display = "none";
                document.querySelector('#SERVICES2').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "block";
                document.querySelector('#SERVICES4').style.display = "none";


                document.querySelector('#SERVICES3').scrollIntoView({ behavior: 'smooth' });
                // document.getElementById("SERVICES2").style.height = "300px";
            }

            function scrollToForm4() {


                document.querySelector('#SERVICES1').style.display = "none";
                document.querySelector('#SERVICES2').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES4').style.display = "block";
           
                document.querySelector('#SERVICES4').scrollIntoView({ behavior: 'smooth' });
                // document.getElementById("SERVICES2").style.height = "300px";
            }

   
    </script>


</head>
<body  onload="javascript: LoadingFunction();">
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
            <li><a class="page-scroll" href="ProfileHome.aspx">HOME</a></li>
            <li><a class="page-scroll" href="Workouts.aspx">WORKOUTS</a></li>
            <li><a class="page-scroll" href="#pricing">ACADEMY</a></li>
            <li><a class="page-scroll" href="Blog.aspx">NUTRITION</a></li>
          
            <li><asp:LinkButton id="Logout" runat="server" OnClick="Logout_Button_Clicked" class="page-scroll" style="color:#1eb858;">LOGOUT</asp:LinkButton></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid -->
  
  <div class="main app form" id="main"><!-- Main Section -->
  

        <div class="client-section" style="height:100px; background-color:white;">
   
        </div>
    
    <!-- Client Section -->
  <%--  <div class="client-section" style="height:50px;">
      <div class="container text-center">
        <div class="clients owl-carousel owl-theme">
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client1.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client2.png" alt="Image" /> </div>
          <div class="single"> <img src="images/client3.png" alt="Image" /> </div>
        </div>
        <div class="client-section" style="height:100px; background-color:white;">
   
        </div>

      </div>
    </div>--%>

    
   <%-- <div class="split-features">
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
    --%>
    
   
                 <!-- Start SERVICES Section -->
    <div id="pricing"  style="background-color:white;"  class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>



          <div class="col-md-3">
            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"> <i class="ion-ios-paperplane-outline"></i> </div>
              <div class="pricing-details">
                <h2>Starter Plan S1</h2>
                <span>Free</span>
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                 <div onclick="javascript: scrollToForm1();" class="btn btn-primary btn-action btn-fill">Buy Now</div>
              </div>
            </div>
          </div>


          <div class="col-md-3">
            <div class="table-right table-center wow fadeInUp" data-wow-delay="0.6s">
              <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
              <div class="pricing-details">
                <h2>Popular Plan S2</h2>
                <span>$3.99</span>
              
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <div onclick="javascript: scrollToForm2();" class="btn btn-primary btn-action btn-fill">Buy Now</div>
              </div>
            </div>
          </div>

   <div class="col-md-3">
            <div class="table-left wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"> <i class="ion-ios-paperplane-outline"></i> </div>
              <div class="pricing-details">
                <h2>Starter Plan s3</h2>
                <span>Free</span>
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <div onclick="javascript: scrollToForm3();" class="btn btn-primary btn-action btn-fill">Buy Now</div>
              </div>
            </div>
          </div>




    <div class="col-md-3">
            <div class="table-right table-center wow fadeInUp" data-wow-delay="0.6s">
              <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
              <div class="pricing-details">
                <h2>Popular Plan S4</h2>
                <span>$3.99</span>
              
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <div onclick="javascript: scrollToForm4();" class="btn btn-primary btn-action btn-fill">Buy Now</div>
              </div>
            </div>
          </div>


          </div>

        </div>
      </div>
  

     <!-- End SERVICES Section -->


         <div class="app-features text-center" id="SERVICES1" style="display:none;">
     
                <div id="pricing3" class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>


    <div class="split-features2" onclick="onclick1('2')" style="cursor:pointer; border:2px solid #1eb858; box-shadow:Gray 0px 0px 20px -5px;">
      <div class="col-md-6 nopadding" >
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page S1</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
           <ul class="wow fadeInUp" style="float:left; list-style:l">
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Nulla ornare purus non consequat ultricies.</a></li>
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Etiam est nisl, molestie sed egestas bibendum.</a></li>
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Aliquam vel euismod elit, sed suscipit est.</a></li>
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Curabitur egestas justo neque viverra vel.</a></li>
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Aliquam vel euismod elit.</a></li>
               <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Etiam est nisl, molestie sed egestas.</a></li>
            </ul>
        </div>
           
      </div>
  <a  id="QList1" runat="server"  href="QuestionsPages.aspx" class="btn btn-primary btn-action btn-fill">Buy Now</a>
                 
    </div>


          </div>

        </div>
      </div>


    </div>
     <!-- End SERVICES Section -->

          <div class="app-features text-center" id="SERVICES2" style="display:none;" >
    

                 <div id="pricing2" class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans S2</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>


 
            <div class="split-features2" onclick="onclick1('2')" style="cursor:pointer; border:2px solid #1eb858; box-shadow:Gray 0px 0px 20px -5px;">
      <div class="col-md-6 nopadding" >
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page 2</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
              <ul class="wow fadeInUp">
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Nulla ornare purus non consequat ultricies.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Etiam est nisl, molestie sed egestas bibendum.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Aliquam vel euismod elit, sed suscipit est.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Curabitur egestas justo neque viverra vel.</a></li>
          </ul>

          
        </div>
           
      </div>
  <a  id="QList2" runat="server"  href="QuestionsPages.aspx" class="btn btn-primary btn-action btn-fill">Buy Now</a>
                 
    </div>
   


          </div>

        </div>
      </div>

    
         </div>
     <!-- End SERVICES Section -->


       
          <div class="app-features text-center" id="SERVICES3" style="display:none;">
     
               <div id="pricing1" class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans S3</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>


    <div class="split-features2" onclick="onclick1('2')" style="cursor:pointer; border:2px solid #1eb858; box-shadow:Gray 0px 0px 20px -5px;">
      <div class="col-md-6 nopadding" >
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page 2</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
              <ul class="wow fadeInUp">
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Nulla ornare purus non consequat ultricies.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Etiam est nisl, molestie sed egestas bibendum.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Aliquam vel euismod elit, sed suscipit est.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Curabitur egestas justo neque viverra vel.</a></li>
          </ul>

          
        </div>
           
      </div>
  <a id="QList3" runat="server" href="QuestionsPages.aspx" class="btn btn-primary btn-action btn-fill">Buy Now</a>
                 
    </div>
    


          </div>

        </div>
      </div>
  


          
       </div>



      
          <div class="app-features text-center" id="SERVICES4" style="display:none;">
     
               <div id="pricing4" class="pricing-section text-center">
      <div class="container">
        <div class="col-md-12 col-sm-12 nopadding">
          <div class="pricing-intro">
            <h1 class="wow fadeInUp" data-wow-delay="0s">Easy Pricing Plans S4</h1>
            <p class="wow fadeInUp" data-wow-delay="0.2s"> Lorem ipsum dolor sit. Incidunt laborum beatae earum nihil odio consequatur officiis <br class="hidden-xs">tempore consequuntur officia ducimus unde doloribus quod unt repell </p>
          </div>


    <div class="split-features2" onclick="onclick1('2')" style="cursor:pointer; border:2px solid #1eb858; box-shadow:Gray 0px 0px 20px -5px;">
      <div class="col-md-6 nopadding" >
        <div class="split-image"> <img class="img-responsive wow fadeIn" src="images/app_image.png" alt="Image" /> </div>
      </div>
      <div class="col-md-6 nopadding">
        <div class="split-content">
          <h1 class="wow fadeInUp">Designed for effective product landing page 2</h1>
          <p class="wow fadeInUp"> Pellentesque eget dolor gravida, tempus purus ac, ultricies mauris. Etiam est nisl, molestie sed egestas bibendum, varius eu diam. Suspendisse est metus, ultrices sit amet dolor in, rhoncus malesuada mi.</p>
          <ul class="wow fadeInUp">
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Nulla ornare purus non consequat ultricies.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Etiam est nisl, molestie sed egestas bibendum.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Aliquam vel euismod elit, sed suscipit est.</a></li>
            <li style="list-style:none; color:#1eb858;" class="ion-checkmark"><a style="padding-left:10px; text-decoration:none; color:#a9a9a9;">Curabitur egestas justo neque viverra vel.</a></li>
          </ul>

          
        </div>
           
      </div>
  <a  id="QList4" runat="server"  href="QuestionsPages.aspx" class="btn btn-primary btn-action btn-fill">Buy Now</a>
                 
    </div>
    


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
            <h5>Contact Us</h5>
            <p> Contact our 24/7 customer support if you have any <br class="hidden-xs">
              questions. We'll help you out. </p>
            <a href="mailto:contact@Fitlifter.com">contact@Fitlifter.com</a> </div>
        </div>
      </div>
  <%--   <div style="width:100%; height:35px; background-color:#f3f3f3;"></div>--%>
    
    
    <!-- Scroll To Top --> 
    
    <a id="back-top" class="back-to-top page-scroll" href="#main"> <i class="ion-ios-arrow-thin-up"></i> </a> 
      <a id="back-Page" style="text-decoration:none; padding-left:10px; padding-top:6px; opacity:1;" class="back-to-Page page-scroll" href="Workouts.aspx" ><i style="text-decoration:none; font-size:18px; color:white; opacity:1;  text-align:center; vertical-align:middle;">←</i></a> 
 
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


             <!-- JS includes -->
        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/swiper.min.js"></script>
        <script src="assets/js/main.js"></script>
    


 </form>
</body>
</html>
