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
    public partial class AdminUserControl : System.Web.UI.Page
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

                    if (Request.QueryString["Email"] != null)
                    {
                        string Email = Request.QueryString["Email"].ToString();
                        string ResposeData = Run_Async_GET_User(Email).Result;

                        var _user1 = JsonConvert.DeserializeObject<UserM>(ResposeData);

                        UserName.Text = _user1.UserFristName + " " + _user1.UserLastName;
                        Information.InnerText = _user1.UserEmail.ToString() + " | " + _user1.UserCountry + ", " + _user1.UserCity.ToString();
                        if (!IsPostBack)
                        {
                            if (_user1.UserAcctivated.ToString() == "Healthy") //color:#e43e04; color:#f2d800;
                            {
                           //     this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:green; border:solid 2px black; border-radius:50%;'></div>";
                                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_green()", true);
                            }
                            else if (_user1.UserAcctivated.ToString() == "Suspected")
                            {
                            //    this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:#f2d800; border:solid 2px black; border-radius:50%;'></div>";
                                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_yellow('#f2d800')", true);

                            }
                            else if (_user1.UserAcctivated.ToString() == "Inflicted")
                            {
                            //    this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:#e43e04; border:solid 2px black; border-radius:50%;'></div>";
                                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_red()", true);
                            }
                        }
                        //here we get value from Str string varriable "Nikhil"  
                    }


                }

            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }


        static async Task Run_Async_PUT_Suspected(string Email)
        {
            using (var client = new HttpClient())
            {
                //  string HttpLinkData = "";
                // usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace("'", ""); User.Salary = this.TextBox133.Text;
                //   usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace(",", "");
                //            if (usr1.UserImgUrl != "")
                string HttpLinkData = "{'UserEmail':'" + Email + "'}";
                //         else if (usr1.UserImgUrl == "")
                //        HttpLinkData = "{'UserEmail':'" + usr1.UserEmail.ToString() + "','UserFullName':'" + usr1.UserFullName.ToString() + "','UserNationalNumber':'" + usr1.UserNationalNumber.ToString() + "','UserHeakthStatuse':'" + usr1.UserHeakthStatuse.ToString() + "','UserSocialStatuse':'" + usr1.UserSocialStatuse.ToString() + "','UserCareer':'" + usr1.UserCareer.ToString() + "','UserHomeAddress':'" + usr1.UserHomeAddress.ToString() + "','UserHomeLocation':'" + usr1.UserHomeLocation.ToString() + "','UserBirthDate':'" + usr1.UserBirthDate.ToString() + "','UserEmploymentDate':'" + usr1.UserEmploymentDate.ToString() + "','UserQualifiction':'" + usr1.UserQualifiction.ToString() + "','UserMobile1':'" + usr1.UserMobile1.ToString() + "','UserMobile2':'" + usr1.UserMobile2.ToString() + "','UserAdminstrationPart':'" + usr1.UserAdminstrationPart.ToString() + "','UserWork':'" + usr1.UserWork.ToString() + "','UserAccessSelection':'" + usr1.UserAccessSelection.ToString() + "','Salary':'" + usr1.Salary.ToString() + "','Allowances':'" + usr1.Allowances.ToString() + "'}";

                HttpContent httpContent = new StringContent(HttpLinkData, Encoding.UTF8, "application/json");
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                //Console.WriteLine("POST");
                //    HttpResponseMessage response = await client.GetAsync("api/khalid");

                HttpResponseMessage response = client.PutAsync("api/v1/Users/Suspected/" + Email + "/", httpContent).Result;
            }
        }


        static async Task Run_Async_PUT_Healthy(string Email)
        {
            using (var client = new HttpClient())
            {
                //  string HttpLinkData = "";
                // usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace("'", ""); User.Salary = this.TextBox133.Text;
                //   usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace(",", "");
                //            if (usr1.UserImgUrl != "")
                string HttpLinkData = "{'UserEmail':'" + Email + "'}";
                //         else if (usr1.UserImgUrl == "")
                //        HttpLinkData = "{'UserEmail':'" + usr1.UserEmail.ToString() + "','UserFullName':'" + usr1.UserFullName.ToString() + "','UserNationalNumber':'" + usr1.UserNationalNumber.ToString() + "','UserHeakthStatuse':'" + usr1.UserHeakthStatuse.ToString() + "','UserSocialStatuse':'" + usr1.UserSocialStatuse.ToString() + "','UserCareer':'" + usr1.UserCareer.ToString() + "','UserHomeAddress':'" + usr1.UserHomeAddress.ToString() + "','UserHomeLocation':'" + usr1.UserHomeLocation.ToString() + "','UserBirthDate':'" + usr1.UserBirthDate.ToString() + "','UserEmploymentDate':'" + usr1.UserEmploymentDate.ToString() + "','UserQualifiction':'" + usr1.UserQualifiction.ToString() + "','UserMobile1':'" + usr1.UserMobile1.ToString() + "','UserMobile2':'" + usr1.UserMobile2.ToString() + "','UserAdminstrationPart':'" + usr1.UserAdminstrationPart.ToString() + "','UserWork':'" + usr1.UserWork.ToString() + "','UserAccessSelection':'" + usr1.UserAccessSelection.ToString() + "','Salary':'" + usr1.Salary.ToString() + "','Allowances':'" + usr1.Allowances.ToString() + "'}";

                HttpContent httpContent = new StringContent(HttpLinkData, Encoding.UTF8, "application/json");
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                //Console.WriteLine("POST");
                //    HttpResponseMessage response = await client.GetAsync("api/khalid");

                HttpResponseMessage response = client.PutAsync("api/v1/Users/Healthy/" + Email + "/", httpContent).Result;
            }
        }

        static async Task Run_Async_PUT_Sick(string Email)
        {
            using (var client = new HttpClient())
            {
                //  string HttpLinkData = "";
                // usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace("'", ""); User.Salary = this.TextBox133.Text;
                //   usr1.UserHomeLocation = usr1.UserHomeLocation.Trim().Replace(",", "");
                //            if (usr1.UserImgUrl != "")
                string HttpLinkData = "{'UserEmail':'" + Email + "'}";
                //         else if (usr1.UserImgUrl == "")
                //        HttpLinkData = "{'UserEmail':'" + usr1.UserEmail.ToString() + "','UserFullName':'" + usr1.UserFullName.ToString() + "','UserNationalNumber':'" + usr1.UserNationalNumber.ToString() + "','UserHeakthStatuse':'" + usr1.UserHeakthStatuse.ToString() + "','UserSocialStatuse':'" + usr1.UserSocialStatuse.ToString() + "','UserCareer':'" + usr1.UserCareer.ToString() + "','UserHomeAddress':'" + usr1.UserHomeAddress.ToString() + "','UserHomeLocation':'" + usr1.UserHomeLocation.ToString() + "','UserBirthDate':'" + usr1.UserBirthDate.ToString() + "','UserEmploymentDate':'" + usr1.UserEmploymentDate.ToString() + "','UserQualifiction':'" + usr1.UserQualifiction.ToString() + "','UserMobile1':'" + usr1.UserMobile1.ToString() + "','UserMobile2':'" + usr1.UserMobile2.ToString() + "','UserAdminstrationPart':'" + usr1.UserAdminstrationPart.ToString() + "','UserWork':'" + usr1.UserWork.ToString() + "','UserAccessSelection':'" + usr1.UserAccessSelection.ToString() + "','Salary':'" + usr1.Salary.ToString() + "','Allowances':'" + usr1.Allowances.ToString() + "'}";

                HttpContent httpContent = new StringContent(HttpLinkData, Encoding.UTF8, "application/json");
                client.BaseAddress = new Uri(ApiConnection.HttpApiLcin);
                client.DefaultRequestHeaders.Accept.Clear();

                // client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/xml"));
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                //Console.WriteLine("POST");
                //    HttpResponseMessage response = await client.GetAsync("api/khalid");

                HttpResponseMessage response = client.PutAsync("api/v1/Users/Sick/" + Email + "/", httpContent).Result;
            }
        }
        protected void Login_Button_Clicked(object sender, EventArgs e)
        {

            string Email = Request.QueryString["Email"].ToString();
            Run_Async_PUT_Healthy(Email);

            //  this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:red; border:solid 2px black; border-radius:50%;'></div>";
            ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_green()", true);

        }

        protected void Login1_Button_Clicked(object sender, EventArgs e)
        {
            string Email = Request.QueryString["Email"].ToString();
            Run_Async_PUT_Suspected(Email);


         //   this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:#f2d800; border:solid 2px black; border-radius:50%;'></div>";
            ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_yellow()", true);

            //  Response.Redirect("AdminUserControl.aspx?Email="+Email);
        }
        protected void Login2_Button_Clicked(object sender, EventArgs e)
        {
            string Email = Request.QueryString["Email"].ToString();
            Run_Async_PUT_Sick(Email);

           // this.Case.InnerHtml = "<div style='width:50px; height:50px; background-color:#e43e04; border:solid 2px black; border-radius:50%;'></div>";
            ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_red()", true);
            //    Response.Redirect("AdminUserControl.aspx?Email=" + Email);
        }

        protected void Login4_Button_Clicked(object sender, EventArgs e)
        {
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


    }
}