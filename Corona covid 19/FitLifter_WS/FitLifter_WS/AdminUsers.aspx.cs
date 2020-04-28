using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitLifter_WS
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        HttpCookie cookie;
        protected void Page_Load(object sender, EventArgs e)
        {

          
            if (Request.Cookies["FitLifter"] != null)
            {
                cookie = Request.Cookies["FitLifter"];

                if (cookie["UserType"] != "admin")
                {
                    Response.Redirect("ProfileHome.aspx");
                }
                else
                {

                    //?Str = Nikhil

                    UserName.Text = "Control all users";

                    string ResposeDataP = Run_Async_GET_ALL_USERS().Result;
                    List<UserM> _userlist = JsonConvert.DeserializeObject<List<UserM>>(ResposeDataP) as List<UserM>;
                    UsersForm.InnerHtml = "";

                    for (int i=0; i<_userlist.Count; i++)
                    {
                        UsersForm.InnerHtml += "<div class='col-md-4 wow fadeInDown' data-wow-delay='0.2s'>";

                        if (_userlist[i].UserGender.ToLower() == "female")
                        {
                            if (_userlist[i].UserAcctivated == "Healthy")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-female'></i></a></div>";
                            else if (_userlist[i].UserAcctivated == "Inflicted")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-female' style='color:#e43e04;'></i></a></div>";
                            else if (_userlist[i].UserAcctivated == "Suspected")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-female' style='color:#f2d800;'></i></a></div>";



                        }
                        else
                        {
                            if (_userlist[i].UserAcctivated == "Healthy")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-male'></i></a></div>";
                            else if (_userlist[i].UserAcctivated == "Inflicted")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-male' style='color:#e43e04;'></i></a></div>";
                            else if (_userlist[i].UserAcctivated == "Suspected")//#e43e04
                                UsersForm.InnerHtml += "<div class='icon'><a href='AdminUserControl.aspx?Email=" + _userlist[i].UserEmail.ToString() + "'><i class='ion-male' style='color:#f2d800;'></i></a></div>";
                        }
                        UsersForm.InnerHtml += "<div class='feature-single'>";
                        UsersForm.InnerHtml += "<h1>"+ _userlist[i].UserFristName + " " + _userlist[i].UserLastName + "</h1>";
                        UsersForm.InnerHtml += "<p> "+ _userlist[i].UserEmail.ToString() + " | " + _userlist[i].UserCountry + ", " + _userlist[i].UserCity.ToString() + "</p></div></div>";
                    }
                  

                }

            }
            else
            {
                Response.Redirect("Home.aspx");
            }

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


        static async Task<string> Run_Async_GET_ALL_USERS()
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
                HttpResponseMessage response = client.GetAsync("api/v1/Users").Result;


                if (response.IsSuccessStatusCode)
                {
                    string RqstData = response.Content.ReadAsStringAsync().Result;
                    datare = RqstData;

                }
            }
            return datare;

        }
    }
}