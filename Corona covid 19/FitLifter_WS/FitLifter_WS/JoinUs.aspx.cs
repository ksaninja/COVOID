using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Text;
using System.Net.Http.Headers;

namespace FitLifter_WS
{
    public partial class JoinUs : System.Web.UI.Page
    {


        HttpCookie cookie = new HttpCookie("FitLifter");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["FitLifter"] != null)
            {
                cookie = Request.Cookies["FitLifter"];

                if (cookie["UserType"] == "admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("ProfileHome.aspx");
                }

            }
          
        }


        protected void Login_Button_Clicked(object sender, EventArgs e)
        {

            if (this.Email.Text != "" && this.Fname.Text != "" && this.identity.Text != "" && this.Password.Text != "" && this.ConfirmPassword.Text != "" && this.MobileNum.Text != "" && this.Age.Text != "" && this.Gender.Text != "")
            {
                string ResposeData = Run_Async_GET_User(this.Email.Text).Result;

                var _user1 = JsonConvert.DeserializeObject<UserM>(ResposeData);

                if (_user1.UserEmail != null)
                {
                    //  ErrorMsgs.InnerText = "This Email alrady used!";
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used", "Email_Used()", true);
                }
                else
                {

                    UserM _user = new UserM();
                    _user.UserFristName = this.Fname.Text;
                    _user.UserLastName = this.identity.Text;
                    _user.UserEmail = this.Email.Text.ToLower();
                    _user.UserPassword = this.Password.Text;
                    _user.UserCountry = this.MobileNum.Text.ToLower();
                    _user.UserCity = this.Age.Text.ToLower();
                    _user.UserGender = this.Gender.Text.ToLower();
                    _user.UserImgUrl = "../Imgs/UserProfilePic.png";
                    _user.UserType = "user";
                    _user.UserRegistrationDate = DateTime.Now.Date.ToString();
                    _user.UserAcctivated = "Healthy"; // Suspected // Inflicted // Healthy

                    RunAsyncPOSTONE(_user);

                

                    cookie["UserFullName"] = _user.UserFristName.ToString() + " " + _user.UserLastName.ToString();
                    cookie["UserEmail"] = _user.UserEmail.ToString();
                    cookie["UserType"] = _user.UserType.ToString();
                    cookie["UserGender"] = _user.UserGender.ToString();

                    cookie.Expires = DateTime.Now.AddDays(29d);
                    Response.Cookies.Add(cookie);

                    //Response.Redirect("VerifyPage.aspx");

                    Response.Redirect("ProfileHome.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_Used2()", true);
            }

        }


     

        static async Task<string> Run_Async_GET_User(string Email)
        {
            string datare = "";
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                //  Console.WriteLine("GET");
                //  HttpResponseMessage response = await client.GetAsync("api/khalid");

                // Email = Email.Replace("@hotmail.com", "hotmail.com");

                //JsonToken accessToken = new JsonToken();
                //client.DefaultRequestHeaders.Add("APIKey", "KKHHAA11998877"); // if with key header
                HttpResponseMessage response = client.GetAsync("api/v1/Users/" + Email + "/").Result;


                if (response.IsSuccessStatusCode)
                {
                    string RqstData = response.Content.ReadAsStringAsync().Result;
                    datare = RqstData;

                }
            }
            return datare;
        }

        static async Task RunAsyncPOSTONE(UserM _user)
        {
            //Random rand1 = new Random();
            //int rand2 = rand1.Next(1111, 9999);

            using (var client = new HttpClient())
            {

                //usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace("'", "");

                string HttpLinkData = "{'UserFristName':'" + _user.UserFristName + "','UserLastName':'" + _user.UserLastName.ToString() + "','UserEmail':'" + _user.UserEmail.ToString() + "','UserPassword':'" + _user.UserPassword.ToString() + "','UserCountry':'" + _user.UserCountry.ToString() + "','UserCity':'" + _user.UserCity.ToString() + "','UserGender':'" + _user.UserGender.ToString() + "','UserImgUrl':'" + _user.UserImgUrl.ToString() + "','UserType':'" + _user.UserType.ToString()+ "','UserRegistrationDate':'" + _user.UserRegistrationDate.ToString() + "','UserAcctivated':'" + _user.UserAcctivated.ToString() + "'}";

                
                HttpContent httpContent = new StringContent(HttpLinkData, Encoding.UTF8, "application/json");
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                // Console.WriteLine("POST");
                //    HttpResponseMessage response = await client.GetAsync("api/khalid");
                HttpResponseMessage response = client.PostAsync("api/v1/Users", httpContent).Result;
            }
        }



      

    }
}