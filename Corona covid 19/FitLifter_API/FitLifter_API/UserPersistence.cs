using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FitLifter_API.Models;

namespace FitLifter_API
{
    public class UserPersistence
    {

        //  private string strconn = "Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Khalid Osama\\Dropbox\\Homathon\\Corona covid 19\\FitLifter_WS\\FitLifter_WS\\App_Data\\FitLifter_Database.mdf;Integrated Security = True";
     //   private string strconn = "Data Source=SQL5050.site4now.net;Initial Catalog=DB_9B4B6F_DS;User Id=DB_9B4B6F_DS_admin;Password=ds2019ds;";
        private string strconn = "Data Source=SQL5050.site4now.net;Initial Catalog=DB_9B4B6F_DS;User Id=DB_9B4B6F_DS_admin;Password=ds2019ds;";



        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        SqlDataAdapter adpt = new SqlDataAdapter();

        public UserPersistence()
        {

            try
            {
                con = new SqlConnection(strconn);
                con.Open();
            }
            catch
            {
                // Console.WriteLine("Error");
            }


        }


        public void AddNewUser(UserM _User)
        {

            string command = "insert into [FITLIFTER_USERS_TABLE] (UserFristName,UserLastName,UserEmail,UserPassword,UserCountry,UserCity,UserGender,UserImgUrl,UserType,UserRegistrationDate,UserAcctivated) values (@UserFristNameS,@UserLastNameS,@UserEmailS,@UserPasswordS,@UserCountryS,@UserCityS,@UserGenderS,@UserImgUrlS,@UserTypeS,@UserRegistrationDateS,@UserAcctivatedS)";


            SqlParameter[] param = new SqlParameter[11];

            if (_User.UserFristName != null)
                param[0] = new SqlParameter("@UserFristNameS", _User.UserFristName);
            else
                param[0] = new SqlParameter("@UserFristNameS", "");

            if (_User.UserLastName != null)
                param[1] = new SqlParameter("@UserLastNameS", _User.UserLastName);
            else
                param[1] = new SqlParameter("@UserLastNameS", "");

            if (_User.UserEmail != null)
                param[2] = new SqlParameter("@UserEmailS", _User.UserEmail);
            else
                param[2] = new SqlParameter("@UserEmailS", "");


            if (_User.UserPassword != null)
                param[3] = new SqlParameter("@UserPasswordS", _User.UserPassword);
            else
                param[3] = new SqlParameter("@UserPasswordS", "");

            if (_User.UserCountry != null)
                param[4] = new SqlParameter("@UserCountryS", _User.UserCountry);
            else
                param[4] = new SqlParameter("@UserCountryS", "");

            if (_User.UserCity != null)
                param[5] = new SqlParameter("@UserCityS", _User.UserCity);
            else
                param[5] = new SqlParameter("@UserCityS", "");

            if (_User.UserGender != null)
                param[6] = new SqlParameter("@UserGenderS", _User.UserGender);
            else
                param[6] = new SqlParameter("@UserGenderS", "");

            if (_User.UserImgUrl != null)
                param[7] = new SqlParameter("@UserImgUrlS", _User.UserImgUrl);
            else
                param[7] = new SqlParameter("@UserImgUrlS", "");

            if (_User.UserType != null)
                param[8] = new SqlParameter("@UserTypeS", _User.UserType);
            else
                param[8] = new SqlParameter("@UserTypeS", "");


            if (_User.UserRegistrationDate != null)
                param[9] = new SqlParameter("@UserRegistrationDateS", _User.UserRegistrationDate);
            else
                param[9] = new SqlParameter("@UserRegistrationDateS", "");


            if (_User.UserAcctivated != null)
                param[10] = new SqlParameter("@UserAcctivatedS", _User.UserAcctivated);
            else
                param[10] = new SqlParameter("@UserAcctivatedS", "");





            SqlCommand cmd = new SqlCommand(command, con);
            cmd.CommandTimeout = 0;
            cmd.Parameters.AddRange(param);

            cmd.ExecuteNonQuery();
            cmd.Clone();
            con.Close();
        }


        public List<UserM> GetDataAll()
        {

            string command = "select * from [FITLIFTER_USERS_TABLE];";

            SqlCommand cmd = new SqlCommand(command, con);

            //   cmd.ExecuteNonQuery();
            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            List<UserM> _UserList = new List<UserM>();
            UserM _usr1;

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                _usr1 = new UserM();
                _usr1.CounterID = int.Parse(ds.Tables[0].Rows[i][0].ToString());
                _usr1.UserID = ds.Tables[0].Rows[i][1].ToString();
                _usr1.UserFristName = ds.Tables[0].Rows[i][2].ToString();

                _usr1.UserLastName = ds.Tables[0].Rows[i][3].ToString();
                _usr1.UserEmail = ds.Tables[0].Rows[i][4].ToString();
                _usr1.UserPassword = ds.Tables[0].Rows[i][5].ToString();

                _usr1.UserCountry = ds.Tables[0].Rows[i][6].ToString();
                _usr1.UserCity = ds.Tables[0].Rows[i][7].ToString();
                _usr1.UserGender = ds.Tables[0].Rows[i][8].ToString();

                _usr1.UserImgUrl = ds.Tables[0].Rows[i][9].ToString();
                _usr1.UserType = ds.Tables[0].Rows[i][10].ToString();
                _usr1.UserRegistrationDate = ds.Tables[0].Rows[i][11].ToString();
                _usr1.UserAcctivated = ds.Tables[0].Rows[i][12].ToString();

                _UserList.Add(_usr1);
            }

            return _UserList;
        }


        public UserM GetOneUser(string _Email1)
        {

            string command = "select * from [FITLIFTER_USERS_TABLE] where UserEmail = @UserEmailS;";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@UserEmailS", _Email1);

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            UserM _user1 = new UserM();
          

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

               
                _user1.CounterID = int.Parse(ds.Tables[0].Rows[i][0].ToString());
                _user1.UserID = ds.Tables[0].Rows[i][1].ToString();
                _user1.UserFristName = ds.Tables[0].Rows[i][2].ToString();

                _user1.UserLastName = ds.Tables[0].Rows[i][3].ToString();
                _user1.UserEmail = ds.Tables[0].Rows[i][4].ToString();
                _user1.UserPassword = ds.Tables[0].Rows[i][5].ToString();

                _user1.UserCountry = ds.Tables[0].Rows[i][6].ToString();
                _user1.UserCity = ds.Tables[0].Rows[i][7].ToString();
                _user1.UserGender = ds.Tables[0].Rows[i][8].ToString();

                _user1.UserImgUrl = ds.Tables[0].Rows[i][9].ToString();
                _user1.UserType = ds.Tables[0].Rows[i][10].ToString();
                _user1.UserRegistrationDate = ds.Tables[0].Rows[i][11].ToString();
                _user1.UserAcctivated = ds.Tables[0].Rows[i][12].ToString();

                
            }

            return _user1;
        }

        public bool UpdateVerifyAccount(string _Email)
        {


            string command = "update [FITLIFTER_USERS_TABLE] set UserAcctivated = 'true' where UserEmail = @UserEmailS;";

            SqlParameter[] param = new SqlParameter[1];



            if (_Email != null)
                param[0] = new SqlParameter("@UserEmailS", _Email);
            else
                param[0] = new SqlParameter("@UserEmailS", "");

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            //   cmd.ExecuteNonQuery();
            int FoundData = cmd.ExecuteNonQuery();
            // adpt.SelectCommand = cmd;
            //  adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            if (FoundData == 0)
                return false;
            else
                return true;
        }


        public bool UpdateVerifyAccount1(string _Email)
        {


            string command = "update [FITLIFTER_USERS_TABLE] set UserAcctivated = 'Healthy' where UserEmail = @UserEmailS;";

            SqlParameter[] param = new SqlParameter[1];



            if (_Email != null)
                param[0] = new SqlParameter("@UserEmailS", _Email);
            else
                param[0] = new SqlParameter("@UserEmailS", "");

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            //   cmd.ExecuteNonQuery();
            int FoundData = cmd.ExecuteNonQuery();
            // adpt.SelectCommand = cmd;
            //  adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            if (FoundData == 0)
                return false;
            else
                return true;
        }

        public bool UpdateVerifyAccount2(string _Email)
        {


            string command = "update [FITLIFTER_USERS_TABLE] set UserAcctivated = 'Suspected' where UserEmail = @UserEmailS;";

            SqlParameter[] param = new SqlParameter[1];



            if (_Email != null)
                param[0] = new SqlParameter("@UserEmailS", _Email);
            else
                param[0] = new SqlParameter("@UserEmailS", "");

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            //   cmd.ExecuteNonQuery();
            int FoundData = cmd.ExecuteNonQuery();
            // adpt.SelectCommand = cmd;
            //  adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            if (FoundData == 0)
                return false;
            else
                return true;
        }


        public bool UpdateVerifyAccount3(string _Email)
        {
            string command = "update [FITLIFTER_USERS_TABLE] set UserAcctivated = 'Inflicted' where UserEmail = @UserEmailS;";

            SqlParameter[] param = new SqlParameter[1];

            if (_Email != null)
                param[0] = new SqlParameter("@UserEmailS", _Email);
            else
                param[0] = new SqlParameter("@UserEmailS", "");

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            //   cmd.ExecuteNonQuery();
            int FoundData = cmd.ExecuteNonQuery();
            // adpt.SelectCommand = cmd;
            //  adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            if (FoundData == 0)
                return false;
            else
                return true;
        }
    }
}