using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace FitLifter_WS
{
    public partial class ProfileHome : System.Web.UI.Page
    {
        HttpCookie cookie;
        string Email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Request.Cookies["FitLifter"] != null)
            {

                cookie = Request.Cookies["FitLifter"];

                if (cookie["UserType"] != "user")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                   
                    UserName.Text = cookie["UserFullName"];
                    Email = cookie["UserEmail"];

                    string ResposeData = Run_Async_GET_User(Email).Result;

                    var _user1 = JsonConvert.DeserializeObject<UserM>(ResposeData);
                   
                    string ResposeData1 = RunAsyncPOST_LIVE_LOCATION(_user1.UserID).Result;

                    var _Liveocaion1 = JsonConvert.DeserializeObject<LocationM>(ResposeData1);
                
                    if(_Liveocaion1.CounterID == 0)
                    {
                        LocationM _Location1 = new LocationM();
                        _Location1.UserID = _user1.UserID;
                        _Location1.Longitude = "";
                        _Location1.latitude = "";
                        _Location1.Date = "";
                        _Location1.Time = "";

                        RunAsyncPOSTONE(_Location1);
                    }
                  
                    if (cookie["UserGender"] == "male")
                        this.ProfileImg.InnerHtml = "<img class='img-responsive wow fadeInUp' data-wow-delay='0.1s' src='images/app-signup-male.png' alt='App' />";
                    else if (cookie["UserGender"] == "female")
                        this.ProfileImg.InnerHtml = "<img class='img-responsive wow fadeInUp' data-wow-delay='0.1s' src='images/app-signup-female.png' alt='App' />";
                }
              

            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        static async Task RunAsyncPOSTONE(LocationM _user)
        {
            //Random rand1 = new Random();
            //int rand2 = rand1.Next(1111, 9999);

            using (var client = new HttpClient())
            {

                //usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace("'", "");

                string HttpLinkData = "{'UserID':'" + _user.UserID + "','Longitude':'" + _user.Longitude.ToString() + "','latitude':'" + _user.latitude.ToString() + "','Date':'" + _user.Date.ToString() + "','Time':'" + _user.Time.ToString() + "'}";


                HttpContent httpContent = new StringContent(HttpLinkData, Encoding.UTF8, "application/json");
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                // Console.WriteLine("POST");
                //    HttpResponseMessage response = await client.GetAsync("api/khalid");
                HttpResponseMessage response = client.PostAsync("api/v1/livelocation", httpContent).Result;
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

        static async Task<string> RunAsyncPOST_LIVE_LOCATION(string ID)
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
                HttpResponseMessage response = client.GetAsync("api/v1/livelocation/" + ID).Result;


                if (response.IsSuccessStatusCode)
                {
                    string RqstData = response.Content.ReadAsStringAsync().Result;
                    datare = RqstData;

                }
            }
            return datare;
        }

        protected void Logout_Button_Clicked(object sender, EventArgs e)
        {
            string[] cookies = Request.Cookies.AllKeys;
            HttpCookie cookie = new HttpCookie("FitLifter");
            cookie["UserID"] = string.Empty;
            cookie["UserFullName"] = string.Empty;
            cookie["UserAccess"] = string.Empty;
            cookie.Value = string.Empty;
            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);
            HttpContext.Current.Request.Cookies.Clear();
            //Response.Cookies.Remove("User_Informations");
            //Session.Remove();
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Home.aspx");
        }

            
    }
}