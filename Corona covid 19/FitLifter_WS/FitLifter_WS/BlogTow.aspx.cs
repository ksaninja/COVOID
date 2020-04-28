using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitLifter_WS
{
    public partial class BlogTow : System.Web.UI.Page
    {
        HttpCookie cookie;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["FitLifter"] != null)
            {

            }
            else
            {
                Response.Redirect("Home.aspx");
            }

        }
    }
}