﻿using Newtonsoft.Json;
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
    public partial class ForgetPassword : System.Web.UI.Page
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


            if (this.Email.Text != "")
            {
                string ResposeData = Run_Async_GET_User(this.Email.Text).Result;

                var _user1 = JsonConvert.DeserializeObject<UserM>(ResposeData);

                if (_user1.UserEmail != null)
                {
                    if (_user1.UserEmail.ToLower() == this.Email.Text.ToLower())
                    {

                       


                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used", "Email_Used()", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used", "Email_Used()", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used2", "Email_Used2()", true);
            }


            //Response.Redirect("VerifyPage.aspx");

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