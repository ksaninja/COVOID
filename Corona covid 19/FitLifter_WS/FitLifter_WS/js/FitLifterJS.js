
function ChangeColorPassB() {
    if ((document.getElementById("Fname").value != "") && (document.getElementById("Lname").value != "") && (document.getElementById("Email").value != "") && (document.getElementById("Password").value != "") && (document.getElementById("ConfirmPassword").value != "") && (document.getElementById("Country").value != "") && (document.getElementById("City").value != "") && (document.getElementById("Gender").value != "")) {

        document.getElementById("ErrorMsgs").style.color = "green";
        document.getElementById("ErrorMsgs").textContent = "Thank you for filling all information";
        //document.getElementById("btn1").disabled = true;
        //document.getElementById("btn1").disabled = false;
    }
    else {
        //document.getElementById("btn1").disabled = true;
        document.getElementById("ErrorMsgs").style.color = "red";
        if (document.getElementById("Country").value == "" && document.getElementById("City").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Fill the Country";

        }
        else if (document.getElementById("City").value == "" && document.getElementById("Gender").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Fill the City";

        }
        //else if (document.getElementById("Fname1").value == "") {
        //    document.getElementById("ErrorMsgs").textContent = "Please Enter Your First Name";

        //}
        else if (document.getElementById("Fname").value == "" && document.getElementById("Lname").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Enter Your First Name";

        }
        else if (document.getElementById("FnameL").value == "" && document.getElementById("Email").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Enter Your Last Name";

        }
        else if ((document.getElementById("Password").value != document.getElementById("ConfirmPassword").value) && (document.getElementById("Password").value != "") && (document.getElementById("ConfirmPassword").value != "")) {
            document.getElementById("ErrorMsgs").textContent = "Your Password Not Mach!";

        } else {
            document.getElementById("ErrorMsgs").textContent = "";
        }



    }

  
}



function blockSpecialChar(e) {

    if ((document.getElementById("Fname").value != "") && (document.getElementById("Lname").value != "") && (document.getElementById("Email").value != "") && (document.getElementById("Password").value != "") && (document.getElementById("ConfirmPassword").value != "") && (document.getElementById("Country").value != "") && (document.getElementById("City").value != "") && (document.getElementById("Gender").value != "")) {

        document.getElementById("ErrorMsgs").style.color = "green";
        document.getElementById("ErrorMsgs").textContent = "Thank you for filling all information";
        //document.getElementById("btn1").disabled = true;
        //document.getElementById("btn1").disabled = false;
    }
    else {
        //document.getElementById("btn1").disabled = true;
        document.getElementById("ErrorMsgs").style.color = "red";
        if (document.getElementById("Country").value == "" && document.getElementById("City").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Fill the Country";

        }
        else if (document.getElementById("City").value == "" && document.getElementById("Gender").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Fill the City";

        }
        //else if (document.getElementById("Fname1").value == "") {
        //    document.getElementById("ErrorMsgs").textContent = "Please Enter Your First Name";

        //}
        else if (document.getElementById("Fname").value == "" && document.getElementById("Lname").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Enter Your First Name";

        }
        else if (document.getElementById("FnameL").value == "" && document.getElementById("Email").value != "") {
            document.getElementById("ErrorMsgs").textContent = "Please Enter Your Last Name";

        }
        else if ((document.getElementById("Password").value != document.getElementById("ConfirmPassword").value) && (document.getElementById("Password").value != "") && (document.getElementById("ConfirmPassword").value != "")) {
            document.getElementById("ErrorMsgs").textContent = "Your Password Not Mach!";

        } else {
            document.getElementById("ErrorMsgs").textContent = "";
        }



    }

    var k = e.keyCode;
    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || (k >= 48 && k <= 57));

 
}

function Email_Used() {


    document.getElementById("ErrorMsgs").style.color = "red";
    document.getElementById("ErrorMsgs").textContent = "Email already used!";
}


function LoginTest(e) {


    var k = e.keyCode;
    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 64 || k == 46 || (k >= 48 && k <= 57));

   
}


function ChangedDDL() {
    if (document.getElementById("Dropdownlist2").value == "") {
        document.getElementById("ErrorMsgs").textContent = "Please Select Country!";
    }
}


function valid(f) {
    f.value = f.value.replace(/[^a-z\u00D1\u00F10-9]*/ig, '');
} 