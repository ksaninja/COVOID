﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitLifter_WS
{
    public partial class MusclesList : System.Web.UI.Page
    {
        HttpCookie cookie;
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

                   

                    if (Request.QueryString["Side"] != null && Request.QueryString["Msl"] != null)
                    {
                        string Side = Request.QueryString["Side"].ToString();
                        string Msl = Request.QueryString["Msl"].ToString();

                        UserName.Text = Msl;
                        this.back_Page.HRef = "Workouts.aspx?Side=" + Side;

                      
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

    }
}