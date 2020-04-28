<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionsPages.aspx.cs" Inherits="FitLifter_WS.QuestionsPages" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>FitLifter</title>
<!--

Template 2090 Kinetic

http://www.tooplate.com/view/2090-kinetic

-->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link rel="stylesheet" href="css/Qcss/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/Qcss/fontAwesome.css">
        <link rel="stylesheet" href="css/Qcss/tooplate-style.css">

        <script src="js/Qjs/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

       
         <script>


             //<asp: ListItem Value="">Choose your Goal/target</asp: ListItem >
             //    <asp: ListItem Value="Lose weight">Lose weight</asp: ListItem >
             //        <asp: ListItem Value="Gain muscles">Gain muscles</asp: ListItem >
             //            <asp: ListItem Value="Build strength">Build strength</asp: ListItem >




            
             var FM_selected = "metric";

             function MP_Function() {

                 
                 if (FM_selected == "metric") {
                     document.getElementById("MPfunction").innerText = "imperial";
                     document.getElementById("MPfunction").style.cssFloat = "Right";
                     document.getElementsByName('TextBox1')[0].placeholder = 'Height (feet.inch)';
                     document.getElementsByName('TextBox2')[0].placeholder = 'Weight (pounds)';
                    
                  
                     FM_selected = "imperial";
                 }
                 else if (FM_selected == "imperial") {
                     document.getElementById("MPfunction").innerText = "metric";
                     document.getElementById("MPfunction").style.cssFloat = "Left";
                     document.getElementsByName('TextBox1')[0].placeholder = 'Height (cm)';
                     document.getElementsByName('TextBox2')[0].placeholder = 'Weight (kg)';
                     FM_selected = "metric";
                 }

                 document.getElementById("TextBox1").value = "";
                 document.getElementById("TextBox2").value = "";

             }


            
             function dropdownlist_onchange(value) {

               
                 if (value == "Lose weight") {
                     document.getElementById("DDdetalisinfo").innerText = "With a great plan awaits you, you’ll definitely be able to lose those extra pounds and achieve your goal and become healthier than ever.";
                 }
                 else if (value == "Gain muscles") {
                     document.getElementById("DDdetalisinfo").innerText = "It’s time go get bigger than before. Combining both nutrition and exercise, you’re definitely on the right track to see those gains.";
                 }
                 else if (value == "Build strength") {
                     document.getElementById("DDdetalisinfo").innerText = "With a perfectly tailored plan, we will definitely be able to help you gain extra weight and be healthier than ever.";
                 }
                 else {
                     document.getElementById("DDdetalisinfo").innerText = "";
                 }




             }


             function LoadingFunction() {

                 //document.querySelector('#SERVICES2').style.display = "none";

                 var url = window.location.href;
                 var queryString1 = url ? url.split('?')[1] : window.location.search.slice(1);

                 var v1 = queryString1.split('=')[1];


                 if (v1 == "M") {
                     //scrollToForm();
                     document.getElementById("b000").style.backgroundImage = "url(images/b001.png)";
                     document.getElementById("b001").style.backgroundImage = "url(images/b002.png)";
                     document.getElementById("b002").style.backgroundImage = "url(images/b003.png)";
                     document.getElementById("b003").style.backgroundImage = "url(images/b004.png)";
                     document.getElementById("b004").style.backgroundImage = "url(images/b005.png)";

                 }
                 else if (v1 == "F") {
                     document.getElementById("b000").style.backgroundImage = "url(images/g001.png)";
                     document.getElementById("b001").style.backgroundImage = "url(images/g002.png)";
                     document.getElementById("b002").style.backgroundImage = "url(images/g003.png)";
                     document.getElementById("b003").style.backgroundImage = "url(images/g004.png)";
                     document.getElementById("b004").style.backgroundImage = "url(images/g005.png)";
                     //scrollToBackBody();
                 }
                 //document.getElementById("demo1").innerHTML = v1;
                 // }


             }


             var BodyInfo = ["0", "0", "0","0","0"];


             
             function Mouseout() {
                
                 document.getElementById("testFat2").textContent = "";
              
             }

             function MouseIn(num) {
                 if (num == 0) {
                     document.getElementById("testFat2").textContent = "all your muscles are visible and cut piece by piece with less veins.";
                 }
                 else if (num == 1) {
                     document.getElementById("testFat2").textContent = "Looking lean with soft 6 pack and no veins.";

                 }
                 else if (num == 2) {
                     document.getElementById("testFat2").textContent = "Little bulky with less muscle definition.";
                 }
                 else if (num == 3) {
                     document.getElementById("testFat2").textContent = "Looking puffed wearing cloth with no muscle definition.";
                 }
                 else if (num == 4) {
                     document.getElementById("testFat2").textContent = "Overweight or Obese.";
                 }
             }


             var IntFatVeluw = "";
             function Select_Fat(num) {

               

                 if (BodyInfo[num] == "0") {
                    

                     for (var i = 0; i < 5; i++) {
                         BodyInfo[i] = "0";
                         document.getElementById("b00" + i).style.opacity = "0.3";
                     }

                     BodyInfo[num] = "1";
                     document.getElementById("b00" + num).style.opacity = "1";
                     document.getElementById("testFat0").textContent = "your body fat is ";

                     if (num == 0) {
                         document.getElementById("testFat").textContent = "≤ 10 %";
                         IntFatVeluw = "≤ 10 %";
                     }
                     else if (num == 1) {
                         document.getElementById("testFat").textContent = "11 - 16 %";
                         IntFatVeluw = "11 - 16 %";
                     }
                     else if (num == 2) {
                         document.getElementById("testFat").textContent = "17 - 25 %";
                         IntFatVeluw = "17 - 25 %";
                     }
                     else if (num == 3) {
                         document.getElementById("testFat").textContent = "26 - 30 %";
                         IntFatVeluw = "26 - 30 %";
                     }
                     else if (num == 4) {
                         document.getElementById("testFat").textContent = "35+ %";
                         IntFatVeluw = "35+ %";
                     }

                       //    ≤ 10 %
                       //    11 - 16 %
                       //    17 - 25 %
                       //    26 - 30 %
                       //    35+ %
                 }
               //  Select Your Fat %.

             }

             var FoodInfo3 = ["0", "0", "0", "0"];

             function Select_Food3(num) {



                 if (FoodInfo3[num] == "0") {




                     FoodInfo3[num] = "1";
                     document.getElementById("F00" + num).style.opacity = "1";




                 } else {

                     FoodInfo3[num] = "0";
                     document.getElementById("F00" + num).style.opacity = "0.3";
                 }
                

             }

             var MealInfo = ["0", "0", "0"];

             function Select_Meal1(num) {


                 for (var i = 0; i < 3; i++) {
                     MealInfo[i] = "0";
                     document.getElementById("M00" + i).style.opacity = "0.3";
                 }

                 if (MealInfo[num] == "0") {




                     MealInfo[num] = "1";
                     document.getElementById("M00" + num).style.opacity = "1";




                 } else {

                     MealInfo[num] = "0";
                     document.getElementById("M00" + num).style.opacity = "0.3";
                 }


             }



             var Meal2Info = ["0", "0", "0"];

             function Select_Meal2(num) {


                 for (var i = 0; i < 3; i++) {
                     Meal2Info[i] = "0";
                     document.getElementById("MM00" + i).style.opacity = "0.3";
                 }

                 if (Meal2Info[num] == "0") {




                     Meal2Info[num] = "1";
                     document.getElementById("MM00" + num).style.opacity = "1";




                 } else {

                     Meal2Info[num] = "0";
                     document.getElementById("MM00" + num).style.opacity = "0.3";
                 }


             }



             var TimeInfo = ["0", "0", "0"];

             function Select_Time1(num) {


                 for (var i = 0; i < 3; i++) {
                     TimeInfo[i] = "0";
                     document.getElementById("T00" + i).style.opacity = "0.3";
                 }

                 if (TimeInfo[num] == "0") {




                     TimeInfo[num] = "1";
                     document.getElementById("T00" + num).style.opacity = "1";




                 } else {

                     TimeInfo[num] = "0";
                     document.getElementById("T00" + num).style.opacity = "0.3";
                 }


             }


             var Q8Info = ["0", "0", "0" ,"0" , "0"];

             function Select_Q81(num) {


                 for (var i = 0; i < 5; i++) {
                     Q8Info[i] = "0";
                     document.getElementById("Q800" + i).style.opacity = "0.3";
                 }

                 if (Q8Info[num] == "0") {

                     Q8Info[num] = "1";
                     document.getElementById("Q800" + num).style.opacity = "1";

                 } else {

                     Q8Info[num] = "0";
                     document.getElementById("Q800" + num).style.opacity = "0.3";
                 }

                 if (Q8Info[4] == "1") {

                     document.getElementById("OtherBox").style.display = "block";
                 }
                 else {
                     document.getElementById("OtherBox").style.display = "none";
                 }


             }


             var Q9Info = ["0", "0", "0", "0"];

             function Select_Q9(num) {


                 for (var i = 0; i < 4; i++) {
                     Q9Info[i] = "0";
                     document.getElementById("Q900" + i).style.opacity = "0.3";
                 }

                 if (Q9Info[num] == "0") {

                     Q9Info[num] = "1";
                     document.getElementById("Q900" + num).style.opacity = "1";

                 } else {

                     Q9Info[num] = "0";
                     document.getElementById("Q900" + num).style.opacity = "0.3";
                 }

                 if (Q9Info[3] == "1") {

                     document.getElementById("OtherBox9").style.display = "block";
                 }
                 else {
                     document.getElementById("OtherBox9").style.display = "none";
                 }


             }


             var Q11Info = ["0", "0", "0", "0" , "0" ];

             function Select_Q11(num) {


                 for (var i = 0; i < 5; i++) {
                     Q11Info[i] = "0";
                     document.getElementById("Q1100" + i).style.opacity = "0.3";
                 }

                 if (Q11Info[num] == "0") {

                     Q11Info[num] = "1";
                     document.getElementById("Q1100" + num).style.opacity = "1";

                     if (num == 0) {
                         document.getElementById("ShowInfo").innerText = "this is a no carb diet consisting mainly of healthy fat and small portion of protein (not recommended for athletes)";
                     }
                     else if (num == 1) {
                         document.getElementById("ShowInfo").innerText = "(include vegetables, carbohydrate sources, and dairy products but no meat)";
                     }
                     else if (num == 2) {
                         document.getElementById("ShowInfo").innerText = "(includes only plan based food. No dairy, meat or fish)";
                     }
                     else if (num == 3) {
                         document.getElementById("ShowInfo").innerText = "(16:8 ; 5:2 ; ) learn more about intermittent fasting here";
                     }
                     else if (num == 4) {
                         document.getElementById("ShowInfo").innerText = "This is the no “off-limit” food plan suitable for a sustainable lifestyle change";
                     }

                 } else {

                     Q11Info[num] = "0";
                     document.getElementById("Q1100" + num).style.opacity = "0.3";
                 }

              

             }


             var FoodInfo = ["1", "1", "1", "1", "1", "1", "1", "1", "1", "1", "1"];

             function Select_Food1(num) {


                 if (FoodInfo[num] == "0") {

                     FoodInfo[num] = "1";
                     document.getElementById("FOOD00" + num).style.opacity = "1";

                 } else {

                     FoodInfo[num] = "0";
                     document.getElementById("FOOD00" + num).style.opacity = "0.2";
                 }



             }



             var Q21Info = ["0", "0"];

             function Select_Q21(num) {


                 for (var i = 0; i < 2; i++) {
                     Q21Info[i] = "0";
                     document.getElementById("PQ00" + i).style.opacity = "0.3";
                 }

                 for (var i = 0; i < 6; i++) {
                     Q212Info[i] = "0";
                     document.getElementById("PQ200" + i).style.opacity = "0.3";
                 }

                 if (Q21Info[num] == "0") {




                     Q21Info[num] = "1";
                     document.getElementById("PQ00" + num).style.opacity = "1";




                 } else {

                     Q21Info[num] = "0";
                     document.getElementById("PQ00" + num).style.opacity = "0.3";
                 }

                 if (Q21Info[1] == "1") {

                     document.getElementById("QDeatials").style.display = "block";
                 }
                 else {
                     document.getElementById("QDeatials").style.display = "none";
                 }

                 if (Q212Info[5] == "1") {

                     document.getElementById("OtherBox12").style.display = "block";
                 }
                 else {
                     document.getElementById("OtherBox12").style.display = "none";
                 }


             }

             

             var Q212Info = ["0", "0", "0", "0", "0","0"];

             function Select_Q212(num) {


                 for (var i = 0; i < 6; i++) {
                     Q212Info[i] = "0";
                     document.getElementById("PQ200" + i).style.opacity = "0.3";
                 }

                 if (Q212Info[num] == "0") {




                     Q212Info[num] = "1";
                     document.getElementById("PQ200" + num).style.opacity = "1";




                 } else {

                     Q212Info[num] = "0";
                     document.getElementById("PQ200" + num).style.opacity = "0.3";
                 }



                 if (Q212Info[5] == "1") {

                     document.getElementById("OtherBox12").style.display = "block";
                 }
                 else {
                     document.getElementById("OtherBox12").style.display = "none";
                 }



             }


             
         
             
             


    </script>
    </head>
    <body onload="javascript: LoadingFunction();">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

         <form id="form1" runat="server">
             <div style="width:20px; height:100vh; background-color:#4bc34b; position:fixed; border-left:solid 1px black; top:0px; right:0px; z-index:999;"></div>
             <a href="ProfileHome.aspx" style="position:fixed; top:50px; left:50px; color:gray; z-index:999; text-decoration:none; font-size:16px; cursor:pointer;">HOME</a>
             <%--<div id="Numpage" style="position:fixed; top:50px; right:60px; color:gray; z-index:999; font-size:16px;">1 - 10</div>--%>
        <div class="ct" id="t1">
          <div class="ct" id="t2">
            <div class="ct" id="t3">
              <div class="ct" id="t4">
                    <div class="ct" id="t5">
                         <div class="ct" id="t6">
                               <div class="ct" id="t7">
                                    <div class="ct" id="t8">
                                         <div class="ct" id="t9">
                                             <div class="ct" id="t10">
                                                  <div class="ct" id="t11">
                                                       <div class="ct" id="t12">
                                                            <div class="ct" id="t13">
                                                                 <div class="ct" id="t14">
                                                                      <div class="ct" id="t15">
                                                                           <div class="ct" id="t16">
                                                                                <div class="ct" id="t17">
                                                                                     <div class="ct" id="t18">
                                                                                         <div class="ct" id="t19">
                                                                                             <div class="ct" id="t20">
                                                                                                 <div class="ct" id="t21">
                                                                                                     <div class="ct" id="t22">
                                                                                                          <div class="ct" id="t23">
                                                                                                               <div class="ct" id="t24">
                                                                                                                    <div class="ct" id="t25">
                                                                                                                          <div class="ct" id="t26">
                                                                                                                                <div class="ct" id="t27">
                                                                                                                                      <div class="ct" id="t28">
                                                                                                                                            <div class="ct" id="t29">
                                                                                                                                                  <div class="ct" id="t30">
                                                                                                    
                <section>  
               <%--  <ul>
                   <a href="#t1"><li style="width:10px; height:10px; margin-left:10px; margin-top:10px; background-color:black; border-radius:50%;" id="uno"></li></a>
                   <a href="#t2"><li style="width:10px; height:10px; margin-left:10px; margin-top:10px; background-color:black; border-radius:50%;" id="dos"></li></a>
                   <a href="#t3"><li style="width:10px; height:10px; margin-left:10px; margin-top:10px; background-color:black; border-radius:50%;" id="tres"></li></a>
                   <a href="#t4"><li style="width:10px; height:10px; margin-left:10px; margin-top:10px; background-color:black; border-radius:50%;" id="cuatro"></li></a>
                 </ul>--%>


                  <div class="page" id="p1" style="margin-top:-30px;">
                     <li style="background-color:white;" class="icon fa fa-home"><span class="title" style="color:#808080;">Welcome To</span><div style="width:100%; height:100px;"><img src="images/logo.png" width="112" height="27" alt="iLand" style="margin:0 auto;" /></div><p style="color:#808080;">Features include: Macronutrients Calculator, Meal Planner, Exercise Planner, Chat box (“Premium Plan”), Booking Consultancy (“Premium Plan”), Academy (Courses; Premium Plan).</p><div class="primary-button"><a href="#t2">START</a></div></li>   
                  </div>




                  <div class="page" id="p2"  style="margin-top:-20px;">
                    <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="left-text">
                            <h4 style="color:black;">Section 1</h4>
                            <p style="color:#808080;">This kinetic HTML template is provided by Tooplate for free of charge. You may use this layout for your website. Please tell your friends about Tooplate. Thank you.<br><br>Cras suscipit, sem vel cursus iaculis, nibh augue placerat enim, in varius dolor turpis at augue. Nulla facilisi. In quis sem pellentesque, tristique ligula non, tincidunt ipsum. Curabitur porttitor, justo id egestas egestas, enim augue lacinia quam, et volutpat velit augue sodales velit.</p>
                            <div class="primary-button">
                              <a href="#t3">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  




                  <div class="page" id="p3"  style="margin-top:-20px;">
                  <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                  <div class="col-md-8">
                      
         <%--       <asp:TextBox ID="Fname1" runat="server" TextMode="SingleLine" placeholder="Frist name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px;" ></asp:TextBox>
                <asp:TextBox ID="Fname2" runat="server" TextMode="SingleLine" placeholder="Last name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
 --%>          <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:gray; text-align:left; font-size:17px;" >Please fill all information bease fill all information bease fill all information bease fill all information below.</p>
               <p id="DDdetalisinfo" style="color:#4bc34b; text-align:left; margin-top:10px; height:15px;"></p>
               <p id="ErrorMsgs" style="font-family:Calibri; margin-bottom:5px; height:30px; color:red; font-size:15px;"></p>
                <asp:dropdownlist ID="Dropdownlist1" onchange="dropdownlist_onchange(this.value);" class="img-responsive wow fadeInUp" runat="server"  placeholder="Country" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:100%;  font-family:Calibri; float:left; margin-bottom:5px; padding-left:5px; border:solid 1px Gray; font-size:15px; height:40px; color:Gray;"> 
                    <asp:ListItem Value="">Choose your Goal/target</asp:ListItem>
                          <asp:ListItem Value="Lose weight">Lose weight</asp:ListItem>
                          <asp:ListItem Value="Gain muscles">Gain muscles</asp:ListItem>
                          <asp:ListItem Value="Build strength">Build strength</asp:ListItem>
                    </asp:dropdownlist>

                        <div style="width:100%; height:30px; margin-bottom:5px; float:left; "><div style="width:150px; height:25px; border-radius:17px; background-color:white; border:solid 1px #4bc34b; margin-top:2px; margin-bottom:5px; float:right;"><div id="MPfunction" onclick="MP_Function()" style="width:100px; height:23px; border-radius:17px; background-color:white; background-color:#4bc34b; cursor:pointer; border:solid 2px white;  font-family:Calibri; font-size:15px; float:left;">metric</div></div></div>

                     <asp:TextBox ID="TextBox1" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="Height (cm)" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:49%; font-family:Calibri; float:left; margin-bottom:5px; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

                    

                 <asp:TextBox ID="TextBox2" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off" placeholder="Weight (kg)" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:49%;  font-family:Calibri; float:right; margin-bottom:5px; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                  </asp:TextBox>


                      
                          <asp:TextBox ID="TextBox3" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off" placeholder="Age" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:100%;  font-family:Calibri; float:left; margin-bottom:5px;  font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                  </asp:TextBox>

           <%--    <asp:TextBox ID="Email" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" class="img-responsive wow fadeInUp" runat="server" TextMode="Email" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  placeholder="Email name" style="width:100%;  font-size:15px; padding-left:5px; font-family:Calibri; font-size:15px; margin-bottom:5px; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
                    
          --%>     
             <%--  <asp:dropdownlist ID="Dropdownlist2" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)"   placeholder="Country" onfocus="ChangeColorUsrN()"  onblur="ChangeColorUsrNB()"  style="width:49%;  font-family:Calibri; float:right; margin-bottom:5px; padding-left:5px;  font-size:15px; border:solid 1px Gray; height:40px; color:Gray;">
                      <asp:ListItem Value="">Gender</asp:ListItem>
                      <asp:ListItem Value="Male">Male</asp:ListItem>
                      <asp:ListItem Value="Female">Female</asp:ListItem>
               </asp:dropdownlist> --%>

            
               

              <%-- <asp:RadioButtonList ID="rblMeasurementSystem" runat="server" style="width:100%; font-family:Calibri; float:left;">
                              <asp:ListItem Text="Male" Selected="True" Value="Male" />
                              <asp:ListItem Text="Female" Value="Female" />
               </asp:RadioButtonList>--%>

            <%--   <asp:button ID="btn1" class="img-responsive wow fadeInUp" Text="SIGN UP" onclick="Login_Button_Clicked" OnClientClick="this.disabled = 'true'; this.value='Submitting please wait ...';" runat="server" BorderStyle="None" style="width:100%; color:white; font-family:Calibri; padding-left:5px;  background-color:#1eb858; margin-bottom:5px; padding-right:5px; height:40px; float:left;" UseSubmitBehavior="false" ></asp:button>
           --%>  <%--  <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> --%>
               

            <div style="float:left; height:80px;" class="primary-button">

                              <a href="#t2">BACK</a>
                              <a href="#t4">NEXT</a>
                           
                            </div>

           </div>
                    </li>
                  </div>



                  <div class="page" id="p4" style="margin-top:-50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:160px;"><div id="testFat0" style="color:#808080; font-size:15px; float:left;">Select Your body </div><div id="testFat" style="color:#4bc34b; font-size:15px;">fat %.</div></div>
                              <p id="testFat2" style="color:#4bc34b; margin-top:10px; height:15px;"></p>
                              <div style="width:100%; height:200px; margin-top:20px; margin-bottom:20px;">
                                    <div style="width:400px; height:174px; margin:0 auto;">

                                          <div id="b000" onclick="Select_Fat(0);" onmousemove="MouseIn(0)" onmouseout="Mouseout()" style="width:80px; height:174px;float:left; opacity:0.3; cursor:pointer; background-image:url('images/b001.png'); background-color:green;"></div>
                                          <div id="b001" onclick="Select_Fat(1);" onmousemove="MouseIn(1)" onmouseout="Mouseout()" style="width:80px; height:174px;float:left; opacity:0.3; cursor:pointer; background-image:url('images/b002.png'); background-color:yellow;"></div>
                                          <div id="b002" onclick="Select_Fat(2);" onmousemove="MouseIn(2)" onmouseout="Mouseout()" style="width:80px; height:174px; float:left; opacity:0.3; cursor:pointer; background-image:url('images/b003.png'); background-color:green;"></div>
                                          <div id="b003" onclick="Select_Fat(3);" onmousemove="MouseIn(3)" onmouseout="Mouseout()" style="width:80px; height:174px; float:left; opacity:0.3; cursor:pointer; background-image:url('images/b004.png'); background-color:yellow;"></div>
                                          <div id="b004" onclick="Select_Fat(4);" onmousemove="MouseIn(4)" onmouseout="Mouseout()" style="width:80px; height:174px; float:left; opacity:0.3; cursor:pointer; background-image:url('images/b005.png'); background-color:green;"></div>
                                       
              
                                   </div>
                                   <div style="width:400px; height:174px; margin:0 auto;">

                                          <div id="t000" style="width:80px; padding-left:8px; text-align:center; height:26px;float:left; font-family:Calibri; color:gray; font-size:12px;">≤ 10 %</div>
                                          <div id="t001" style="width:80px;padding-left:8px; text-align:center; height:26px;float:left; font-family:Calibri; color:gray; font-size:12px;">11 - 16 %</div>
                                          <div id="t002" style="width:80px;padding-left:8px; text-align:center; height:26px; float:left; font-family:Calibri; color:gray; font-size:12px;">17 - 25 %</div>
                                          <div id="t003" style="width:80px;padding-left:8px; text-align:center; height:26px; float:left; font-family:Calibri; color:gray; font-size:12px;">26 - 30 %</div>
                                          <div id="t004" style="width:80px;padding-left:8px; text-align:center; height:26px; float:left; font-family:Calibri; color:gray; font-size:12px;">35+ %</div>

                                   </div>
                              </div>
                            <div class="primary-button" style="height:80px;">
                                  <a href="#t3">BACK</a>
                                  <a href="#t5">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                    
                  <div class="page" id="p5" style="margin-top:50px;">
                    <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10">
                          <div class="left-text">

                                 <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:70%; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >How many meals do you prefer to have?</p>
              
                          
                              
                              
                                    
                              
                              <div  style="float:left; margin-bottom:30px; margin-top:30px; width:100%;"  class="primary-button">


                                      <a id="F000" onclick="Select_Food3(0);" style="background-color:#4bc34b; margin-bottom:5px; margin-right:10px; float: left;  color:white; opacity:0.3; cursor:pointer;">Breakfast</a>
                                      <a id="F001" onclick="Select_Food3(1);" style="background-color:#4bc34b; margin-bottom:5px; margin-right:10px; float: left;  color:white; opacity:0.3; cursor:pointer;">Lunch</a>
                                      <a id="F002" onclick="Select_Food3(2);" style="background-color:#4bc34b; margin-bottom:5px; margin-right:10px; float: left;  color:white; opacity:0.3; cursor:pointer;">Dinner</a>
                                      <a id="F003" onclick="Select_Food3(3);" style="background-color:#4bc34b; float: left;  color:white; opacity:0.3; cursor:pointer;">Snack</a>
                            </div>
                                  
                             <div style="float:left; height:80px; width:100%;"  class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t4">BACK</a>
                                  <a style="float: left;" href="#t6">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                        
                  <div class="page" id="p6" style="margin-top:50px;">
                    <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="left-text" style="margin-bottom:80px;">
                             <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:70%; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >Do you cook for yourself?</p>
              
       
                              <div   style="float:left; margin-bottom:20px; margin-top:20px; width:100%;"  class="primary-button">


                                      <a id="M000" onclick="Select_Meal1(0);" style="background-color:#4bc34b; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">No</a>
                                      <a id="M001" onclick="Select_Meal1(1);" style="background-color:#4bc34b; color:white;margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Sometimes</a>
                                      <a id="M002" onclick="Select_Meal1(2);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">Yes</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                            </div>
                                  
                          
                          </div>

                                <div class="left-text"  style="margin-top:130px; width:100%;height:220px;">
                        
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:70%; margin-bottom:5px; color:#aeaeae; text-align:left; font-size:17px;" >How much time do you have to prepare each meal?</p>
              
       
                              <div style="float:left; margin-bottom:20px;  margin-top:20px; width:100%;"  class="primary-button">


                                      <a id="MM000" onclick="Select_Meal2(0);" style="background-color:#4bc34b; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">10 mins</a>
                                      <a id="MM001" onclick="Select_Meal2(1);" style="background-color:#4bc34b; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">20 mins</a>
                                      <a id="MM002" onclick="Select_Meal2(2);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">30 mins</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                            </div>
                                  
                            <div style="float:left; height:80px; margin-top:20px; width:100%;"  class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t5">BACK</a>
                                  <a style="float: left;" href="#t7">NEXT</a>
                            </div>
                          </div>

                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                    

                  <div class="page" id="p7"  style="margin-top:-20px;">
                  <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                  <div class="col-md-6">
                      
         <%--       <asp:TextBox ID="Fname1" runat="server" TextMode="SingleLine" placeholder="Frist name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px;" ></asp:TextBox>
                <asp:TextBox ID="Fname2" runat="server" TextMode="SingleLine" placeholder="Last name" style="width:100%; padding-left:5px; font-family:Calibri; margin-bottom:5px; background-color:white; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
 --%>          <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >At what time do you have your?</p>
           
             

                      
                              <div style="float:left; width:80%;" class="primary-button">


                      <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:100%; margin-bottom:3px; color:#aeaeae; text-align:left; float:left; font-size:17px;" >Breakfast</p>      
                     <input ID="TextBox4" type="time" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="Breakfast" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; background-color:white; float:left; font-family:Calibri; margin-bottom:5px;  font-size:15px; padding-left:5px; border:solid 1px Gray; height:25px; color:Gray;" />
            
                                
                     <asp:TextBox ID="TextBox7" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="Breakfast's examples" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>
                     

                 <p class="img-responsive wow fadeInUp" style="font-family:Calibri; float:left; width:100%;  margin-bottom:3px;  color:#aeaeae; text-align:left; font-size:17px;" >Lunch</p>
                 <input ID="TextBox5"  type="time" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off" placeholder="Lunch" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; background-color:white;  float:left;  font-family:Calibri; margin-bottom:5px; font-size:17px; padding-left:5px; border:solid 1px Gray; height:25px; color:Gray;" />
                <asp:TextBox ID="TextBox10" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="Lunch's examples" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>
                      
                  
                       <p class="img-responsive wow fadeInUp" style="font-family:Calibri; float:left;  margin-bottom:3px;  width:100%; color:#aeaeae; text-align:left; font-size:17px;" >Dinner</p>
                        <input ID="TextBox6"  type="time" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off" placeholder="Dinner" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; background-color:white;  float:left;  font-family:Calibri; margin-bottom:5px; font-size:15px; padding-left:5px; border:solid 1px Gray; height:25px; color:Gray;" />
            
                          <asp:TextBox ID="TextBox11" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="Dinner's examples" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:59%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

                  
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                            </div>

<%--                      <div style="float:left; width:80%;" class="primary-button">
                    <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >Can you give an example of each meal?</p>
              

                                                   
                     <asp:TextBox ID="TextBox7" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="examples" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:69%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

</div>--%>
           <%--    <asp:TextBox ID="Email" onkeypress="return blockSpecialChar(event)" onkeyup="ChangeColorPassB()"  onpaste="return false;" class="img-responsive wow fadeInUp" runat="server" TextMode="Email" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  placeholder="Email name" style="width:100%;  font-size:15px; padding-left:5px; font-family:Calibri; font-size:15px; margin-bottom:5px; padding-right:5px; height:40px; float:left;" ></asp:TextBox>
                    
          --%>     
             <%--  <asp:dropdownlist ID="Dropdownlist2" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)"   placeholder="Country" onfocus="ChangeColorUsrN()"  onblur="ChangeColorUsrNB()"  style="width:49%;  font-family:Calibri; float:right; margin-bottom:5px; padding-left:5px;  font-size:15px; border:solid 1px Gray; height:40px; color:Gray;">
                      <asp:ListItem Value="">Gender</asp:ListItem>
                      <asp:ListItem Value="Male">Male</asp:ListItem>
                      <asp:ListItem Value="Female">Female</asp:ListItem>
               </asp:dropdownlist> --%>

            
               

              <%-- <asp:RadioButtonList ID="rblMeasurementSystem" runat="server" style="width:100%; font-family:Calibri; float:left;">
                              <asp:ListItem Text="Male" Selected="True" Value="Male" />
                              <asp:ListItem Text="Female" Value="Female" />
               </asp:RadioButtonList>--%>

            <%--   <asp:button ID="btn1" class="img-responsive wow fadeInUp" Text="SIGN UP" onclick="Login_Button_Clicked" OnClientClick="this.disabled = 'true'; this.value='Submitting please wait ...';" runat="server" BorderStyle="None" style="width:100%; color:white; font-family:Calibri; padding-left:5px;  background-color:#1eb858; margin-bottom:5px; padding-right:5px; height:40px; float:left;" UseSubmitBehavior="false" ></asp:button>
           --%>  <%--  <img class="img-responsive wow fadeInUp" data-wow-delay="0.1s" src="images/app-signup.png" alt="App" /> --%>
               

                            <div style="float:left; height:80px;" class="primary-button">

                              <a href="#t6">BACK</a>
                              <a href="#t8">NEXT</a>
                           
                            </div>

                       </div>
                    </li>
                  </div>



                     <div class="page" id="p8" style="margin-top:90px;">
                     <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                       <div class="container">
                         <div class="row">
                           <div class="col-md-6">
                             <div class="left-text">


               


                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                             

         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; float:left; font-size:17px;" >When was the last time you followed a diet plan?</p>
              

                               <div style="float:left; margin-bottom:20px; margin-top:20px; width:100%;" class="primary-button">


                                      <a id="T000" onclick="Select_Time1(0);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">1 Month ago</a>
                                      <a id="T001" onclick="Select_Time1(1);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">2 Months ago</a>
                                      <a id="T002" onclick="Select_Time1(2);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">3 Months+</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                               </div>
                                  
                            <div style="float:left; height:80px; margin-top:10px; width:100%;" class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t7">BACK</a>
                                  <a style="float:left;" href="#t9">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                     <div class="page" id="p9" style="margin-top:90px;">
                     <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                       <div class="container">
                         <div class="row">
                           <div class="col-md-6">
                             <div class="left-text">


               
                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                             

                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; float:left; font-size:17px;" >Tell us about your eating habits you’re struggling with?</p>
              

                               <div style="float:left; margin-bottom:20px; margin-top:20px; width:100%;" class="primary-button">


                                      <a id="Q8000" onclick="Select_Q81(0);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">I Eat a Lot of Junk Food</a>
                                      <a id="Q8001" onclick="Select_Q81(1);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">I Love Carbs</a>
                                      <a id="Q8002" onclick="Select_Q81(2);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Emotional eating</a>
                                      <a id="Q8003" onclick="Select_Q81(3);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">I eat too much</a>
                                      <a id="Q8004" onclick="Select_Q81(4);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">Others</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                               </div>

                                 
                      <div id="OtherBox" style="float:left; display:none; width:80%;" class="primary-button">
                    <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >Can you give an example?</p>
              

                                                   
                     <asp:TextBox ID="TextBox8" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="example" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:69%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

</div>
                                  
                            <div style="float:left; height:80px; margin-top:10px; width:100%;" class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t8">BACK</a>
                                  <a style="float:left;" href="#t10">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                     <div class="page" id="p10" style="margin-top:0px;">
                     <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                       <div class="container">
                         <div class="row">
                           <div class="col-md-6">
                             <div class="left-text">


               
                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                             

                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; float:left; font-size:17px;" >Tell us about your eating habits you’re struggling with?</p>
              

                               <div style="float:left; margin-bottom:20px; margin-top:20px; width:100%;" class="primary-button">


                                      <a id="Q9000" onclick="Select_Q9(0);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">No social support</a>
                                      <a id="Q9001" onclick="Select_Q9(1);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">I don’t know how to eat healthy</a>
                                      <a id="Q9002" onclick="Select_Q9(2);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Lack of time</a>
                                      <a id="Q9003" onclick="Select_Q9(3);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">Others</a>
                                    
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                               </div>

                                 
                      <div id="OtherBox9" style="float:left; display:none; width:80%;" class="primary-button">
                    <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >Can you give an example?</p>
              

                                                   
                     <asp:TextBox ID="TextBox9" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="example" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:69%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

</div>
                                  
                            <div style="float:left; height:80px; margin-top:10px; width:100%;" class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t9">BACK</a>
                                  <a style="float:left;" href="#t11">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  
















                    
                     <div class="page" id="p11" style="margin-top:90px;">
                     <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                       <div class="container">
                         <div class="row">
                           <div class="col-md-6">
                             <div class="left-text">


               
                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                             

                               <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:100%; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; float:left; font-size:17px;" >Select which type of diet you prefer the most:</p>

                               <p id="ShowInfo" class="img-responsive wow fadeInUp" style="font-family:Calibri; height:50px; width:100%; margin-bottom:2px; color:#4bc34b; text-align:left; float:left; font-size:17px;" ></p>
              

                               <div style="float:left; margin-bottom:20px; margin-top:20px; width:100%;" class="primary-button">


                                      <a id="Q11000" onclick="Select_Q11(0);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;" title="this is a no carb diet consisting mainly of healthy fat and small portion of protein (not recommended for athletes)" >Keto Diet</a>
                                      <a id="Q11001" onclick="Select_Q11(1);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float: left; opacity:0.3; cursor:pointer;" title="(include vegetables, carbohydrate sources, and dairy products but no meat)">Vegetarian Diet</a>
                                      <a id="Q11002" onclick="Select_Q11(2);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float:left; opacity:0.3; cursor:pointer;" title="(includes only plan based food. No dairy, meat or fish)">Vegan Diet</a>
                                      <a id="Q11003" onclick="Select_Q11(3);" style="background-color:#4bc34b; color:white; margin-bottom:5px; margin-right:10px; float:left; opacity:0.3; cursor:pointer;" title="(16:8 ; 5:2 ; ) learn more about intermittent fasting here">Intermittent Fasting Diet</a>
                                      <a id="Q11004" onclick="Select_Q11(4);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;" title="This is the no “off-limit” food plan suitable for a sustainable lifestyle change">Classic/Flexible Dieting</a>
                                    
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                               </div>

                                  
                            <div style="float:left; margin-top:10px; height:80px; width:100%;" class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t10">BACK</a>
                                  <a style="float:left;" href="#t12">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



















                    
                     
                  <div class="page" id="p12" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:28px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Meat</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                          <div id="FOOD000" onclick="Select_Food1(0);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Chicken_Breast_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Chicken Breast</div>
                                          </div>


                                          <div id="FOOD001" onclick="Select_Food1(1);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/chicken_thigh_borderless.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">chicken Thigh</div>
                                          </div>

                                         <div id="FOOD002" onclick="Select_Food1(2);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Lean_Beef_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Lean Beef</div>
                                          </div>


                                        
                                         <div id="FOOD003" onclick="Select_Food1(3);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Turkey_2_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Turkey</div>
                                          </div>


                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t11">BACK</a>
                                  <a href="#t13">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  





                         
                  <div class="page" id="p13" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Fish</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                          <div id="FOOD004" onclick="Select_Food1(4);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Tuna_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Diet Tuna</div>
                                          </div>


                                          <div id="FOOD005" onclick="Select_Food1(5);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Salamon_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Salmon</div>
                                          </div>

                                         <div id="FOOD006" onclick="Select_Food1(6);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Shrimp_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Shrimp</div>
                                          </div>


                                        
                                         <div id="FOOD007" onclick="Select_Food1(7);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/White_Fish_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">White Fish</div>
                                          </div>


                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t12">BACK</a>
                                  <a href="#t14">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



















                      <div class="page" id="p14" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:28px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Carbs</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                     <div style="width:90%; padding-left:7%; background-color:yellow; margin:0 auto;">


                                          <div id="FOOD008" onclick="Select_Food1(8);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Rice_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Rice</div>
                                          </div>


                                          <div id="FOOD009" onclick="Select_Food1(9);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Bread_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Bread</div>
                                          </div>

                                         <div id="FOOD0010" onclick="Select_Food1(10);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Pasta_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Pasta</div>
                                          </div>


                                        
                                         <div id="FOOD0012" onclick="Select_Food1(12);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/potato_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">potato</div>
                                          </div>


                                          <div id="FOOD0013" onclick="Select_Food1(13);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Sweet_Potato_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Sweet Potato</div>
                                          </div>


                                          <div id="FOOD0014" onclick="Select_Food1(14);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Sweet_Corn_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Sweet Corn</div>
                                          </div>

                                         <div id="FOOD0015" onclick="Select_Food1(15);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Oats_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Oats</div>
                                          </div>


                                        
                                         <div id="FOOD0016" onclick="Select_Food1(16);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Chia_Seeds_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Chia Seeds</div>
                                          </div>

                                          <div id="FOOD0017" onclick="Select_Food1(17);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Freekeh_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Freekeh</div>
                                          </div>


                                          <div id="FOOD0018" onclick="Select_Food1(18);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Brown_Toast_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Brown Toast</div>
                                          </div>
                                       
                                          <div id="FOOD0019" onclick="Select_Food1(19);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cereal_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cereal</div>
                                          </div>


                                           <div id="FOOD0020" onclick="Select_Food1(20);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Quinoa_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Quinoa</div>
                                          </div>


                                           <div id="FOOD0021" onclick="Select_Food1(21);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Rice_Cake_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Rice Cake</div>
                                          </div>


                                         <div id="FOOD0022" onclick="Select_Food1(22);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/White_Toast_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">White Toast</div>
                                          </div>


                                       

                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t13">BACK</a>
                                  <a href="#t15">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  






                    

                      <div class="page" id="p15" style="margin-top:10px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:28px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Dairy</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                     <div style="width:90%; padding-left:7%; background-color:yellow; margin:0 auto;">


                                         <div id="FOOD0023" onclick="Select_Food1(23);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Almond_Milk_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Almond Milk</div>
                                          </div>

                                          <div id="FOOD0024" onclick="Select_Food1(24);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Gouda_Cheese_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Gouda Cheese</div>
                                          </div>


                                          <div id="FOOD0025" onclick="Select_Food1(25);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cheddar_Cheese_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cheddar Cheese</div>
                                          </div>

                                         <div id="FOOD0026" onclick="Select_Food1(26);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cottage_Cheese_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cottage Cheese</div>
                                          </div>


                                        
                                         <div id="FOOD0027" onclick="Select_Food1(27);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Feta_Cheese_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Feta Cheese</div>
                                          </div>


                                          <div id="FOOD0028" onclick="Select_Food1(28);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Flamank_Edma_Cheese_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Flamank Edma Cheese</div>
                                          </div>


                                          <div id="FOOD0029" onclick="Select_Food1(29);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Mozzarella_Color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Mozzarella</div>
                                          </div>

                                         <div id="FOOD0030" onclick="Select_Food1(30);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Emmental_cheese_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Emmental Cheese</div>
                                          </div>


                                        
                                         <div id="FOOD0031" onclick="Select_Food1(31);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Greek_Yogurt_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Greek Yogurt</div>
                                          </div>

                                          <div id="FOOD0032" onclick="Select_Food1(32);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Light_Yogurt_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Light Yogurt</div>
                                          </div>

                                          <div id="FOOD0033" onclick="Select_Food1(33);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Skimmed_Milk_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Skimmed Milk</div>
                                          </div>

                                          <div id="FOOD0034" onclick="Select_Food1(34);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Full_Fat_Milk_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Full Fat Milk</div>
                                          </div>


                                           <div id="FOOD0035" onclick="Select_Food1(35);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Egg_Whole_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Egg Whole</div>
                                          </div>


                                           <div id="FOOD0036" onclick="Select_Food1(36);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Egg_Whites_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Egg Whites</div>
                                          </div>


                                        

                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t14">BACK</a>
                                  <a href="#t16">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p16" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:28px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Fruits</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                     <div style="width:90%; padding-left:7%; background-color:yellow; margin:0 auto;">


                                          <div id="FOOD0037" onclick="Select_Food1(37);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Strawberry_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Strawberry</div>
                                          </div>


                                          <div id="FOOD0038" onclick="Select_Food1(38);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Mango_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Mango</div>
                                          </div>

                                         <div id="FOOD0039" onclick="Select_Food1(39);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Banana_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Banana</div>
                                          </div>


                                        
                                         <div id="FOOD0040" onclick="Select_Food1(40);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Apple_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Red Apple</div>
                                          </div>


                                         <div id="FOOD0041" onclick="Select_Food1(41);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Green_Apple_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Green Apple</div>
                                          </div>

                                         <div id="FOOD0042" onclick="Select_Food1(42);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Kiwi_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Kiwi</div>
                                          </div>

                                        
                                         <div id="FOOD0043" onclick="Select_Food1(43);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Grapes_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Grapes</div>
                                          </div>


                                          <div id="FOOD0044" onclick="Select_Food1(44);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Tangerine_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Tangerine</div>
                                          </div>

                                          <div id="FOOD0045" onclick="Select_Food1(45);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Orange_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Orange</div>
                                          </div>

                                          <div id="FOOD0046" onclick="Select_Food1(46);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Pear_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Pear</div>
                                          </div>

                                          <div id="FOOD0047" onclick="Select_Food1(47);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Honeydew_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Honeydew</div>
                                          </div>


                                          <div id="FOOD0048" onclick="Select_Food1(48);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cherry_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cherry</div>
                                          </div>

                                          <div id="FOOD0049" onclick="Select_Food1(49);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Dates_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Dates</div>
                                          </div>


                                            <div id="FOOD0050" onclick="Select_Food1(50);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Avocado_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Avocado</div>
                                          </div>

                                         <div id="FOOD0051" onclick="Select_Food1(51);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Brown_Turkey_Fig_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Brown Turkey</div>
                                          </div>


                                         <div id="FOOD0052" onclick="Select_Food1(52);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Prickly_Pear_Fig_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Prickly Pear Fig</div>
                                          </div>
                                        

                                         <div id="FOOD0053" onclick="Select_Food1(53);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Pineapple_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Pineapple</div>
                                          </div>


                                         <div id="FOOD0054" onclick="Select_Food1(54);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Coconut_Shreds_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Coconut Shreds</div>
                                          </div>


                                        
                                         <div id="FOOD0055" onclick="Select_Food1(55);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Watermelon_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Watermelon</div>
                                          </div>


                                        
                                         <div id="FOOD0056" onclick="Select_Food1(56);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Plum_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Plum</div>
                                          </div>

                                        
                                         <div id="FOOD0057" onclick="Select_Food1(57);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peach_2_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peach</div>
                                          </div>

                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t15">BACK</a>
                                  <a href="#t17">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  


                    
                   
                      <div class="page" id="p17" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Veggies</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:90%; padding-left:7%;  margin:0 auto;">


                                          <div id="FOOD0058" onclick="Select_Food1(58);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Spinach_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Spinach</div>
                                          </div>


                                           <div id="FOOD0059" onclick="Select_Food1(59);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Red_Kidney_Beans_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Red Kidney Beans</div>
                                          </div>

                                          <div id="FOOD0060" onclick="Select_Food1(60);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Black_Beans_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Black Beans</div>
                                          </div>

                                        
                                         <div id="FOOD0061" onclick="Select_Food1(61);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Broccoli_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Broccoli</div>
                                          </div>


                                          
                                         <div id="FOOD0062" onclick="Select_Food1(62);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Carrot_2_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Carrot</div>
                                          </div>



                                          
                                         <div id="FOOD0063" onclick="Select_Food1(63);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Fava_Beans_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Fava Beans</div>
                                          </div>


                                          
                                         <div id="FOOD0064" onclick="Select_Food1(64);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Eggplant_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Eggplant</div>
                                          </div>


                                           <div id="FOOD0065" onclick="Select_Food1(65);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Onion_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Onion</div>
                                          </div>



                                            <div id="FOOD0066" onclick="Select_Food1(66);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Tomato_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Tomato</div>
                                          </div>



                                            <div id="FOOD0067" onclick="Select_Food1(67);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cucumber_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cucumber</div>
                                          </div>


                                         <div id="FOOD0068" onclick="Select_Food1(68);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Green_Olives_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Green Olives</div>
                                          </div>


                                         <div id="FOOD0069" onclick="Select_Food1(69);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Black_Olives_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Black Olives</div>
                                          </div>


                                         <div id="FOOD0070" onclick="Select_Food1(70);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Green_Peas_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Green Peas</div>
                                          </div>


                                          <div id="FOOD0071" onclick="Select_Food1(71);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Sweet_Peppers_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Sweet Peppers</div>
                                          </div>



                                          <div id="FOOD0072" onclick="Select_Food1(72);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cabbage_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cabbage</div>
                                          </div>


                                          <div id="FOOD0073" onclick="Select_Food1(73);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Mushroom_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Mushroom</div>
                                          </div>


                                          <div id="FOOD0074" onclick="Select_Food1(74);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Okra_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Okra</div>
                                          </div>



                                          <div id="FOOD0075" onclick="Select_Food1(75);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Zucchini_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Zucchini</div>
                                          </div>


                                          <div id="FOOD0076" onclick="Select_Food1(76);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cauliflower_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cauliflower</div>
                                          </div>


                                          <div id="FOOD0077" onclick="Select_Food1(77);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Artichoke_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Artichoke</div>
                                          </div>


                                          <div id="FOOD0078" onclick="Select_Food1(78);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Beetroot_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Beetroot</div>
                                          </div>


                                          <div id="FOOD0079" onclick="Select_Food1(79);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Radish_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Radish</div>
                                          </div>

                                          <div id="FOOD0080" onclick="Select_Food1(80);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Lentils_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Lentils</div>
                                          </div>


                                           <div id="FOOD0081" onclick="Select_Food1(81);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Black_eyed_pea_2_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Black Eyed Pea</div>
                                          </div>


                                           <div id="FOOD0082" onclick="Select_Food1(82);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Hummus_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Hummus</div>
                                          </div>

                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t16">BACK</a>
                                  <a href="#t18">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p18" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                      <div style="width:90%; padding-left:11%;  margin:0 auto;">


                                          <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanuts_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut</div>
                                          </div>


                                          <div id="FOOD0084" onclick="Select_Food1(84);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Walnut_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Walnut</div>
                                          </div>

                                         <div id="FOOD0085" onclick="Select_Food1(85);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cashew_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cashew</div>
                                          </div>


                                        
                                         <div id="FOOD0086" onclick="Select_Food1(86);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Almonds_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Almonds</div>
                                          </div>


                                        <div id="FOOD0087" onclick="Select_Food1(87);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>


                                        <div id="FOOD0088" onclick="Select_Food1(88);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Olive_Oil_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Olive Oil</div>
                                          </div>


                                        <div id="FOOD0089" onclick="Select_Food1(89);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Coconut_Oil_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Coconut Oil</div>
                                          </div>


                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t17">BACK</a>
                                  <a href="#t19">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  




                    
                      <div class="page" id="p19" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Sugar & Spices</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                         <div id="FOOD0090" onclick="Select_Food1(90);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Sugar_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Sugar</div>
                                          </div>


                                        <div id="FOOD0091" onclick="Select_Food1(91);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Honey_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Honey</div>
                                          </div>


                                        <div id="FOOD0092" onclick="Select_Food1(92);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Curry_Powder_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Curry Powder</div>
                                          </div>


                                        <div id="FOOD0093" onclick="Select_Food1(93);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Cinnamon_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Cinnamon</div>
                                          </div>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t18">BACK</a>
                                  <a href="#t20">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  


                      <div class="page" id="p20" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="left-text">
                            <h4 style="color:black; font-size:34px; float:left; text-align:left;">Section 2</h4>
                            <p style="color:#808080; float:left; text-align:left;">This kinetic HTML template is provided by Tooplate for free of charge. You may use this layout for your website. Please tell your friends about Tooplate. Thank you.<br><br>Cras suscipit, sem vel cursus iaculis, nibh augue placerat enim, in varius dolor turpis at augue. Nulla facilisi. In quis sem pellentesque, tristique ligula non, tincidunt ipsum. Curabitur porttitor, justo id egestas egestas, enim augue lacinia quam, et volutpat velit augue sodales velit.</p>
                            <div style="float:left; height:80px;" class="primary-button">

                              <a href="#t19">BACK</a>
                              <a href="#t21">NEXT</a>
                           
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p21" style="margin-top:10px;">
                 <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="left-text" style="margin-bottom:80px;">
                             <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; text-align:left; color:black; font-size:38px; font-weight:bold;" >Health Checkup.</p>
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:70%; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >You Have Any Medical Conditions or Recently Had Surgery?</p>
              
       
                              <div   style="float:left; margin-bottom:20px; margin-top:20px; width:100%;"  class="primary-button">


                                      <a id="PQ000" onclick="Select_Q21(0);" style="background-color:#4bc34b; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">No</a>
                                      <a id="PQ001" onclick="Select_Q21(1);" style="background-color:#4bc34b; color:white; float: left; opacity:0.3; cursor:pointer;">Yes</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                            </div>
                                  
                          
                          </div>

                                <div id="QDeatials" class="left-text"  style="margin-top:130px;  display:none;  width:100%;height:220px;">
                        
                         <p class="img-responsive wow fadeInUp" style="font-family:Calibri; width:70%; margin-bottom:5px; color:#aeaeae; text-align:left; font-size:17px;" >Medical Condition</p>
              
       
                              <div style="float:left; margin-bottom:20px; margin-top:10px; width:100%;"  class="primary-button">


                                      <a id="PQ2000" onclick="Select_Q212(0);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Diabetes</a>
                                      <a id="PQ2001" onclick="Select_Q212(1);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Gluten Intolerant</a>
                                      <a id="PQ2002" onclick="Select_Q212(2);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Gut Problems</a>
                                      <a id="PQ2003" onclick="Select_Q212(3);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Lactose Intolerant</a>
                                      <a id="PQ2004" onclick="Select_Q212(4);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Kidney or liver Disease</a>
                                      <a id="PQ2005" onclick="Select_Q212(5);" style="background-color:#4bc34b; margin-bottom:5px; color:white; margin-right:10px; float: left; opacity:0.3; cursor:pointer;">Other</a>
                                     <%-- <a id="F003" onclick="Select_Food1(3);" style="background-color:gray; opacity:0.3; cursor:pointer;">Snack</a>--%>
                            </div>


                                        <div id="OtherBox12" style="float:left; display:none; width:80%;" class="primary-button">
                    <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:5px; margin-top:2vw; color:#aeaeae; text-align:left; font-size:17px;" >Can you write your Medical Condition?</p>
              

                                                   
                     <asp:TextBox ID="TextBox12" class="img-responsive wow fadeInUp" runat="server" onchange="return blockSpecialChar(event)" autocomplete="off"  placeholder="your Medical Condition" onfocus="ChangeColorUsrN('UN')"  onblur="ChangeColorUsrNB('UN')"  style="width:69%; font-family:Calibri; float:left; margin-bottom:20px; background-color:white; font-size:15px; padding-left:5px; border:solid 1px Gray; height:40px; color:Gray;">
            
                      
                     </asp:TextBox>

</div>
                                  
                          
                          </div>
                              <div style="float:left; margin-top:20px; height:80px; width:100%;"  class="primary-button">
                                  <a style="float: left; margin-right:10px;" href="#t20">BACK</a>
                                  <a style="float: left;" href="#t22">NEXT</a>
                            </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  




                      <div class="page" id="p22" style="margin-top:50px;">
               <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-6">
                          <div class="left-text">
                            <h4 style="color:black; font-size:34px; float:left; text-align:left;">Section 3</h4>
                            <p style="color:#808080; float:left; text-align:left;">This kinetic HTML template is provided by Tooplate for free of charge. You may use this layout for your website. Please tell your friends about Tooplate. Thank you.<br><br>Cras suscipit, sem vel cursus iaculis, nibh augue placerat enim, in varius dolor turpis at augue. Nulla facilisi. In quis sem pellentesque, tristique ligula non, tincidunt ipsum. Curabitur porttitor, justo id egestas egestas, enim augue lacinia quam, et volutpat velit augue sodales velit.</p>
                            <div style="float:left; height:80px;" class="primary-button">

                              <a href="#t21">BACK</a>
                              <a href="#t23">NEXT</a>
                           
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>
                    


                      <div class="page" id="p23" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t22">BACK</a>
                                  <a href="#t24">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p24" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:90%; padding-left:7%;  margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t23">BACK</a>
                                  <a href="#t25">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p25" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t24">BACK</a>
                                  <a href="#t26">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  




                      <div class="page" id="p26" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t25">BACK</a>
                                  <a href="#t27">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p27" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t26">BACK</a>
                                  <a href="#t28">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p28" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t27">BACK</a>
                                  <a href="#t29">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  


                      <div class="page" id="p29" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t28">BACK</a>
                                  <a href="#t30">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  



                      <div class="page" id="p30" style="margin-top:50px;">
                <li class="icon fa fa-user" style="background-color:white;"><span class="title"></span>
                    <div class="container">
                      <div class="row">
                        <div class="col-md-10" style="font-family:Calibri;">
                          <div class="left-text">
                            <p class="img-responsive wow fadeInUp" style="font-family:Calibri; margin-bottom:15px; text-align:center; color:black; font-size:38px; font-weight:bold;" >Tell us about yourself.</p>
                            <div style="color:#808080; font-size:15px; margin:0 auto; width:100%;">Are You Allergic or want to remove any of the items below?</div>
                              <div style="color:#808080; font-size:24px; margin:0 auto; margin-top:15px; color:#4bc34b; width:100%; font-weight:bold;">Nuts & Oils</div>
                              <div style="width:100%;float:left; margin-top:50px; margin-bottom:20px;">
                                    <div style="width:360px; margin:0 auto;">


                                        <%--  <div id="FOOD0083" onclick="Select_Food1(83);" style="width:70px; height:90px; margin:10px; float:left; opacity:1; cursor:pointer;">
                                              <div style="width:70px; height:70px; float:left; background-size:100% 100%; background-image:url('images/Food/Peanut_Butter_color.png');"></div>
                                              <div style="width:70px; height:15px; margin-top:5px; float:left; font-size:12px; color:gray;">Peanut Butter</div>
                                          </div>--%>



                                        
                                     </div>
                                  
                              </div>

                            <div class="primary-button">
                                  <a href="#t30">BACK</a>
                                  <a href="#t1">NEXT</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="right-image">
                            <img src="img/right-about-image.png" alt="">
                          </div>
                        </div>
                      </div>
                    </div>
                    </li>
                  </div>  

            <%--      <p class="credit" style="background-color:white; color:gray;">Copyright &copy; 2017 Company Name 
                        
                        - Design: Tooplate</p>--%>
                </section>
                                                                                                                                                       </div><%--30--%>
                                                                                                                                                 </div>
                                                                                                                                           </div>
                                                                                                                                     </div>
                                                                                                                               </div>
                                 </div>  <%--25--%>
                               </div>
                              </div>
                           </div>
                           </div>
                       </div>
                    </div>

              </div> <%--18--%>
             </div>
            </div>
           </div>
          </div>
         </div> <%--13--%>
        </div>
       </div>
      </div>
     </div>
               </div>
      </div>
     </div>  <%--6--%>

             </div>
                  </div>
                </div>
              </div>
            </div>  <%--1--%>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/Qjs/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/Qjs/vendor/bootstrap.min.js"></script>

    
        <script src="js/Qjs/plugins.js"></script>
        <script src="js/Qjs/main.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
       </form>
    </body>
</html>