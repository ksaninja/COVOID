<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workouts.aspx.cs" Inherits="FitLifter_WS.Workouts" %>

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

    
      
     
  
        <link rel="stylesheet" href="assets/css/swiper.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/style.css">

      

        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->
        <!--Theme custom css -->
      

        <!--Theme Responsive css-->

        <script>


             
      

     



            function scrollToForm() {


                document.querySelector('#SERVICES2').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES1').style.display = "block";
                document.querySelector('#SERVICES1').scrollIntoView({ behavior: 'smooth' });


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

                document.querySelector('#SERVICES3').scrollIntoView({ behavior: 'smooth' });
                // document.getElementById("SERVICES2").style.height = "300px";
            }



            
            function scrollToForm2() {


                document.querySelector('#SERVICES1').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES2').style.display = "block";
                document.querySelector('#SERVICES2').scrollIntoView({ behavior: 'smooth' });
                // document.getElementById("SERVICES2").style.height = "300px";
            }


            function scrollToBackBody() {



                document.querySelector('#SERVICES2').style.display = "none";
                document.querySelector('#SERVICES3').style.display = "none";
                document.querySelector('#SERVICES1').style.display = "block";
               
                document.querySelector('#BackBody').scrollIntoView({ behavior: 'smooth' });
                // document.getElementById("SERVICES2").style.height = "300px";
            }

            function LoadingFunction() {

                document.querySelector('#SERVICES2').style.display = "none";

                var url = window.location.href;
                var queryString1 = url ? url.split('?')[1] : window.location.search.slice(1);
             
                var v1 = queryString1.split('=')[1];
               

                if (v1 == "Front") {
                    scrollToForm();
                }
                else if (v1 == "Back") {
                    scrollToBackBody();
                }
                document.getElementById("demo1").innerHTML = v1;
               // }


            }

             


            function showCoordsGG() {
                document.getElementById("myImg1").src = 'images/Budy002.png';
                var coords = "";
                document.getElementById("demo1").innerHTML = coords;
            }


            function showCoordsGG2() {
                document.getElementById("myImg2").src = 'images/Budy003.png';
                var coords = "";
                document.getElementById("demo2").innerHTML = coords;
            }



            function showCoords1(event) {

                var x = event.clientX;
                var y = event.clientY;




                //var img = new Image();
                //img.src = 'images/Budy003.png';
                //var context = document.getElementById('canvas').getContext('2d');
                //context.imageSmoothingEnabled = true;
                //if (x1==0) {
                //    context.drawImage(img, 0, 0);
                //    x1++;
                //}
                //data = context.getImageData(x, y, 1, 1).data;
                //canvas.width = canvas.offsetWidth;
                //canvas.height = canvas.offsetHeight;

                //var x = event.clientX;
                //var y = event.clientY;

                //document.getElementById("myImg1").src = 'images/Budy0044.png'; 




                //var coords = "X coords: " + (x-123).toString() + ", Y coords: " + (y-149).toString();
                //document.getElementById("demo1").innerHTML = coords;
            }




            function onclick1(num) {

                if (num == '1') {
                    window.open("MusclesList.aspx?Side=Front&Msl=Deltoids", "_self")


                }
                else if (num == '2') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '3') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '4') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '5') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '6') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '7') {
                    window.open("MusclesList.aspx?Side=Front&Msl=Deltoids ( Shoulder )", "_self")
                }
                if (num == '8') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '9') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '10') {
                    window.open("MusclesList.aspx?Side=Back&Msl=Back", "_self")

                }
                else if (num == '11') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '12') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '13') {
                    window.open("MusclesList.aspx", "_self")

                }
                else if (num == '14') {
                    window.open("MusclesList.aspx", "_self")

                } else if (num == '15') {
                    window.open("MusclesList.aspx", "_self")
                }
                else if (num == '16') {
                    window.open("MusclesList.aspx", "_self")

                }




            }

            function onmousemove1(num) {

                if (num == '1') {
                    document.getElementById("myImg1").src = 'images/Budy0044.png';

                    var coords = "Abdominals";
                    document.getElementById("demo1").innerHTML = coords;

                }
                else if (num == '2') {
                    document.getElementById("myImg1").src = 'images/Budy0055.png';
                    var coords = "Quadriceps";
                    document.getElementById("demo1").innerHTML = coords;
                }
                else if (num == '3') {
                    document.getElementById("myImg1").src = 'images/Budy0066.png';
                    var coords = "Pectoralis";
                    document.getElementById("demo1").innerHTML = coords;
                }
                else if (num == '4') {
                    document.getElementById("myImg1").src = 'images/Budy0099.png';
                    var coords = "Trapezius";
                    document.getElementById("demo1").innerHTML = coords;
                }
                else if (num == '5') {
                    document.getElementById("myImg1").src = 'images/Budy0077.png';
                    var coords = "Biceps";
                    document.getElementById("demo1").innerHTML = coords;
                }
                else if (num == '6') {
                    document.getElementById("myImg1").src = 'images/Budy0088.png';
                    var coords = "Forearm";
                    document.getElementById("demo1").innerHTML = coords;
                }
                else if (num == '7') {
                    document.getElementById("myImg1").src = 'images/Budy001010.png';
                    var coords = "Deltoids ( Shoulder )";
                    document.getElementById("demo1").innerHTML = coords;
                }
                if (num == '8') {
                    document.getElementById("myImg2").src = 'images/Budy00b6.png';

                    var coords = "Glutes";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '9') {
                    document.getElementById("myImg2").src = 'images/Budy00b2.png';
                    var coords = "Hamstrings";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '10') {
                    document.getElementById("myImg2").src = 'images/Budy00b5.png';
                    var coords = "Back";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '11') {
                    document.getElementById("myImg2").src = 'images/Budy00b9.png';
                    var coords = "Trapezius";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '12') {
                    document.getElementById("myImg2").src = 'images/Budy00b1.png';
                    var coords = "Triceps";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '13') {
                    document.getElementById("myImg2").src = 'images/Budy00b1111.png';
                    var coords = "Forearm";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '14') {
                    document.getElementById("myImg2").src = 'images/Budy00b4.png';
                    var coords = "Deltoids ( Shoulder )";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '15') {
                    document.getElementById("myImg2").src = 'images/Budy00b3.png';
                    var coords = "Calves";
                    document.getElementById("demo2").innerHTML = coords;
                }
                else if (num == '16') {
                    document.getElementById("myImg1").src = 'images/Budy001111.png';
                    var coords = "Calves";
                    document.getElementById("demo1").innerHTML = coords;
                }



            }

            function showCoords2(event) {

                var x = event.clientX;
                var y = event.clientY;




                //var img = new Image();
                //img.src = 'images/Budy003.png';
                //var context = document.getElementById('canvas').getContext('2d');
                //context.imageSmoothingEnabled = true;
                //if (x1==0) {
                //    context.drawImage(img, 0, 0);
                //    x1++;
                //}
                //data = context.getImageData(x, y, 1, 1).data;
                //canvas.width = canvas.offsetWidth;
                //canvas.height = canvas.offsetHeight;

                //var x = event.clientX;
                //var y = event.clientY;







            }



    </script>


</head>
<body onload="javascript: LoadingFunction();">
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
               <li><a class="page-scroll" href="BlogTow.aspx">INSTRUCTIONS</a></li>
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
  

        <div class="client-section" style="height:120px; background-color:white;">
   
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
    <div class="app-features text-center" id="SERVICES">
      <div class="container">
        <h1 class="wow fadeInDown" data-wow-delay="0.1s">SERVICES</h1>
        <p class="wow fadeInDown" data-wow-delay="0.2s"> Aliquam sagittis ligula et sem lacinia, ut facilisis enim sollicitudin. Proin nisi est,<br class="hidden-xs">
          convallis nec purus vitae, iaculis posuere sapien. </p>
        <div class="col-md-4 features-left">

           <div onclick="javascript: scrollToForm3();"  class="col-md-12 wow fadeInDown"  style="cursor:pointer;" data-wow-delay="0.5s">
            <div class="icon"> <i class="ion-ios-copy-outline"></i> </div>
            <div class="feature-single">
              <h1>SUBSCRIBE</h1>
              <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
            </div>
          </div>

        </div>
       <div class="col-md-4 features-left">
      

             <div onclick="javascript: scrollToForm();" class="col-md-12 wow fadeInDown" data-wow-delay="0.2s" style="cursor:pointer;">
            <div class="icon"> <i class="ion-ios-analytics-outline"></i> </div>
            <div class="feature-single">
              <h1>BROWSE EXERCISE</h1>
              <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
            </div>
          </div>

       
      
        </div>
        <div class="col-md-4 features-left">
      
          <div onclick="javascript: scrollToForm2();"  class="col-md-12 wow fadeInDown"  style="cursor:pointer;" data-wow-delay="0.5s">
            <div class="icon"> <i class="ion-ios-copy-outline"></i> </div>
            <div class="feature-single">
              <h1>MY WORKOUTS</h1>
              <p> Some lorem contetnt to fill the gap and make it look clean and organized. </p>
            </div>
          </div>
      
        </div>
      </div>
    </div>
     <!-- End SERVICES Section -->


         <div class="app-features text-center" id="SERVICES1" style="display:none;">
     



            <div class="split-features">
      <div class="col-md-6 nopadding">
        <div class="split-image"> <img  id="myImg1" onmousemove="showCoords1(event)" onmouseout="showCoordsGG()" class="img-responsive wow fadeIn" src="images/Budy002.png" onclick="clickHotspotImage(event);" alt="Image" usemap="#BodyMap" />
             <map name="BodyMap">
                   <area id="venus1" style="cursor:pointer;" onmousemove="onmousemove1('1')" onclick="onclick1('1')" shape="poly" coords="107,166,193,166,193,266,107,266" >
                   <area id="venus22" style="cursor:pointer;" onmousemove="onmousemove1('2')" onclick="onclick1('2')" shape="poly" coords="90,280,210,280,210,400,90,400" >
                   <area id="venus33" style="cursor:pointer;" onmousemove="onmousemove1('3')" onclick="onclick1('3')" shape="poly" coords="120,120,180,120,200,160,100,160" >
                   <area id="venus44" style="cursor:pointer;" onmousemove="onmousemove1('4')" onclick="onclick1('4')" shape="poly" coords="120,100,180,100,180,120,100,120" >

                   <area id="venus55" style="cursor:pointer;" onmousemove="onmousemove1('5')" onclick="onclick1('5')" shape="poly" coords="57,156,113,156,113,200,57,200" >
                   <area id="venus66" style="cursor:pointer;" onmousemove="onmousemove1('5')" onclick="onclick1('5')" shape="poly" coords="187,156,243,156,243,200,187,200" >

                   <area id="venus77" style="cursor:pointer;" onmousemove="onmousemove1('6')" onclick="onclick1('6')" shape="poly" coords="50,206,100,206,100,270,50,270" >
                   <area id="venus88" style="cursor:pointer;" onmousemove="onmousemove1('6')" onclick="onclick1('6')" shape="poly" coords="207,206,253,206,253,270,207,270" >

                  <area id="venus99" style="cursor:pointer;" onmousemove="onmousemove1('7')" onclick="onclick1('7')" shape="poly"    coords="67,116,123,116,123,180,67,180" >
                  <area id="venus1010" style="cursor:pointer;" onmousemove="onmousemove1('7')" onclick="onclick1('7')" shape="poly" coords="177,116,233,116,233,180,177,180" >
                  <area id="venus1111" style="cursor:pointer;" onmousemove="onmousemove1('16')" onclick="onclick1('15')" shape="poly" coords="90,400,210,400,210,515,90,515" >
   
            </map>

        </div>   <p id="demo1" style="height:20px;"></p>
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
      <div class="col-md-6 nopadding" id="BackBody">
        <div class="split-image"><img id="myImg2" onmousemove="showCoords2(event)" onmouseout="showCoordsGG2()" class="img-responsive wow fadeIn" src="images/Budy003.png" alt="Image" usemap="#BodyMap2" />
              <map name="BodyMap2">
                   <area id="venusb1" style="cursor:pointer;" onmousemove="onmousemove1('8')" onclick="onclick1('8')" shape="poly" coords="107,216,193,216,193,316,107,316" >
                   <area id="venusb22" style="cursor:pointer;" onmousemove="onmousemove1('9')" onclick="onclick1('9')" shape="poly" coords="90,280,210,280,210,400,90,400" >
                   <area id="venusb33" style="cursor:pointer;" onmousemove="onmousemove1('10')" onclick="onclick1('10')" shape="poly" coords="120,120,180,120,200,200,100,200" >
                   <area id="venusb44" style="cursor:pointer;" onmousemove="onmousemove1('11')" onclick="onclick1('11')" shape="poly" coords="120,70,180,70,180,120,100,120" >

                   <area id="venusb55" style="cursor:pointer;" onmousemove="onmousemove1('12')" onclick="onclick1('12')" shape="poly" coords="57,156,113,156,113,200,57,200" >
                   <area id="venusb66" style="cursor:pointer;" onmousemove="onmousemove1('12')" onclick="onclick1('12')" shape="poly" coords="187,156,243,156,243,200,187,200" >

                   <area id="venusb77" style="cursor:pointer;" onmousemove="onmousemove1('13')" onclick="onclick1('13')" shape="poly" coords="50,206,100,206,100,270,50,270" >
                   <area id="venusb88" style="cursor:pointer;" onmousemove="onmousemove1('13')" onclick="onclick1('13')" shape="poly" coords="207,206,253,206,253,270,207,270" >

                   <area id="venusb99" style="cursor:pointer;" onmousemove="onmousemove1('14')" onclick="onclick1('14')" shape="poly"    coords="67,116,123,116,123,180,67,180" >
                   <area id="venusb1010" style="cursor:pointer;" onmousemove="onmousemove1('14')" onclick="onclick1('14')" shape="poly" coords="177,116,233,116,233,180,177,180" >

                   <area id="venusb1111" style="cursor:pointer;" onmousemove="onmousemove1('15')" onclick="onclick1('15')" shape="poly" coords="90,400,210,400,210,475,90,475" >
            </map>
           <%-- <canvas id="canvas" class="img-responsive wow fadeIn" onmousemove="showCoords(event)"></canvas>--%>
        </div>
      <p id="demo2"  style="height:20px;"></p>
       
      </div>
    </div>
 
    </div>
     <!-- End SERVICES Section -->

          <div class="app-features text-center" id="SERVICES2" >
     

          
        <div  class="culmn">

            <div>
                <div class="container" ">
                    <div class="row">
                        <div class="main_drag roomy-50">
                            <div class="col-md-12">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide" style="background-image:url(assets/images/drag1.png); background-color:yellowgreen;"></div>
                                        <div class="swiper-slide" style="background-image:url(assets/images/drag3.png); background-color:white;"></div>
                                        <div class="swiper-slide" style="background-image:url(assets/images/drag2.png); background-color:white;"></div>
                                        <div class="swiper-slide" style="background-image:url(assets/images/drag1.png); background-color:white;"></div>
                                        <div class="swiper-slide" style="background-image:url(assets/images/drag2.png); background-color:white;"></div>
                                       <%--  <div class="swiper-slide" style="background-image:url(assets/images/drag2.png)"></div>
                                         <div class="swiper-slide" style="background-image:url(assets/images/drag2.png)"></div>
                                         <div class="swiper-slide" style="background-image:url(assets/images/drag2.png)"></div>--%>
                                     <%--  <div class="swiper-slide" style="background-color:red; width:100%;"></div>--%>
                                    </div>
                                    <!-- If we need navigation buttons -->
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>

    </div>
     <!-- End SERVICES Section -->


          <div class="app-features text-center" id="SERVICES3" style="display:none;">
     
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
                <h2>Starter Plan</h2>
                <span>Free</span>
                <ul>
                  <li>Consectetur adipiscing</li>
                  <li>Nunc luctus nulla et tellus</li>
                  <li>Suspendisse quis metus</li>
                  <li>Vestibul varius fermentum erat</li>
                </ul>
                <a href="Subscribe.aspx?Sub=S1" class="btn btn-primary btn-action btn-fill">Buy Now</a>
              </div>
            </div>
          </div>


          <div class="col-md-3">
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
                <a href="Subscribe.aspx?Sub=S2" class="btn btn-primary btn-action btn-fill">Buy Now</a>
              </div>
            </div>
          </div>

   <div class="col-md-3">
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
                <a href="Subscribe.aspx?Sub=S3" class="btn btn-primary btn-action btn-fill">Buy Now</a>
              </div>
            </div>
          </div>




    <div class="col-md-3">
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
                <a href="Subscribe.aspx?Sub=S4" class="btn btn-primary btn-action btn-fill">Buy Now</a>
              </div>
            </div>
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
     <div style="width:100%; height:35px; background-color:#f3f3f3;"></div>
    
    
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


             <!-- JS includes -->
        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/swiper.min.js"></script>
        <script src="assets/js/main.js"></script>
    


 </form>
</body>
</html>
