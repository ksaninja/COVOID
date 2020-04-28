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
    public partial class VerifyPage : System.Web.UI.Page
    {
        HttpCookie cookie;
        protected void Page_Load(object sender, EventArgs e)
        {
            VerifyText.Attributes.Add("onKeyPress", "javascript:if (event.keyCode == 13){ __doPostBack('" + this.btn1.UniqueID + "',''); document.getElementById('" + btn1.ClientID + "').value='logging in please wait ...';}"); // <=== press Enter to login code

            //Session.Clear();
            //Session.Abandon();
          
            if (Session["VerifyNumber"] == null)
                {
                    Random rand1 = new Random();
                    int rand2 = rand1.Next(1111, 9999);
                    Session["VerifyNumber"] = rand2.ToString();
                    Session.Timeout = 10;
                    VerifyNumber.InnerText = "Beoplay A1 bluetooth speakers image on the left is owned by Bang and Olufsen and is : " + Session["VerifyNumber"].ToString();
            }
            else {

                VerifyNumber.InnerText = "Beoplay A1 bluetooth speakers image on the left is owned by Bang and Olufsen and is : " + Session["VerifyNumber"].ToString();

            }




        }

        static async Task Run_Async_PUT_ONE(string Email)
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

                HttpResponseMessage response = client.PutAsync("api/v1/Users/" + Email + "/", httpContent).Result;
            }
        }

        protected void Login_Button_Clicked(object sender, EventArgs e)
        {
          
          


            if (this.VerifyText.Text == Session["VerifyNumber"].ToString())
            {
                cookie = Request.Cookies["FitLifter"];
                Run_Async_PUT_ONE(cookie["UserEmail"]);
                Response.Redirect("ProfileHome.aspx");

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Email_Used", "Email_Used()", true);
                //Response.Redirect("VerifyPage.aspx");
            }
        }
    }
}