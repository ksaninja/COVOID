using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FitLifter_API.Models;

namespace FitLifter_API
{
    public class LocationPersistance
    {
        private string strconn = "Data Source=SQL5050.site4now.net;Initial Catalog=DB_9B4B6F_DS;User Id=DB_9B4B6F_DS_admin;Password=ds2019ds;";



        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        SqlDataAdapter adpt = new SqlDataAdapter();

        public LocationPersistance()
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


        public void AddNewUser(LocationM _Location)
        {

            string command = "insert into [FITLIFTER_LOCATION_TABLE] (UserID,Longitude,latitude,Date,Time) values (@UserIDS,@LongitudeS,@latitudeS,@DateS,@TimeS)";


            SqlParameter[] param = new SqlParameter[5];

            if (_Location.UserID != null)
                param[0] = new SqlParameter("@UserIDS", _Location.UserID);
            else
                param[0] = new SqlParameter("@UserIDS", "");

            if (_Location.Longitude != null)
                param[1] = new SqlParameter("@LongitudeS", _Location.Longitude);
            else
                param[1] = new SqlParameter("@LongitudeS", "");

            if (_Location.latitude != null)
                param[2] = new SqlParameter("@latitudeS", _Location.latitude);
            else
                param[2] = new SqlParameter("@latitudeS", "");


            if (_Location.Date != null)
                param[3] = new SqlParameter("@DateS", _Location.Date);
            else
                param[3] = new SqlParameter("@DateS", "");

            if (_Location.Time != null)
                param[4] = new SqlParameter("@TimeS", _Location.Time);
            else
                param[4] = new SqlParameter("@TimeS", "");

   
            SqlCommand cmd = new SqlCommand(command, con);
            cmd.CommandTimeout = 0;
            cmd.Parameters.AddRange(param);

            cmd.ExecuteNonQuery();
            cmd.Clone();
            con.Close();
        }

        public void AddNewLiveLocation(LocationM _Location)
        {

            string command = "insert into [FITLIFTER_LIVE_LOCATION_TABLE] (UserID,Longitude,latitude,Date,Time) values (@UserIDS,@LongitudeS,@latitudeS,@DateS,@TimeS)";


            SqlParameter[] param = new SqlParameter[5];

            if (_Location.UserID != null)
                param[0] = new SqlParameter("@UserIDS", _Location.UserID);
            else
                param[0] = new SqlParameter("@UserIDS", "");

            if (_Location.Longitude != null)
                param[1] = new SqlParameter("@LongitudeS", _Location.Longitude);
            else
                param[1] = new SqlParameter("@LongitudeS", "");

            if (_Location.latitude != null)
                param[2] = new SqlParameter("@latitudeS", _Location.latitude);
            else
                param[2] = new SqlParameter("@latitudeS", "");


            if (_Location.Date != null)
                param[3] = new SqlParameter("@DateS", _Location.Date);
            else
                param[3] = new SqlParameter("@DateS", "");

            if (_Location.Time != null)
                param[4] = new SqlParameter("@TimeS", _Location.Time);
            else
                param[4] = new SqlParameter("@TimeS", "");


            SqlCommand cmd = new SqlCommand(command, con);
            cmd.CommandTimeout = 0;
            cmd.Parameters.AddRange(param);

            cmd.ExecuteNonQuery();
            cmd.Clone();
            con.Close();
        }


        public List<LocationM> GetDataAll()
        {

            string command = "select * from [FITLIFTER_USERS_TABLE];";

            SqlCommand cmd = new SqlCommand(command, con);

            //   cmd.ExecuteNonQuery();
            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            List<LocationM> _LocationList = new List<LocationM>();
            LocationM _Location1;

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                _Location1 = new LocationM();
                _Location1.CounterID = int.Parse(ds.Tables[0].Rows[i][0].ToString());
                _Location1.LocationID = ds.Tables[0].Rows[i][1].ToString();
                _Location1.UserID = ds.Tables[0].Rows[i][2].ToString();

                _Location1.Longitude = ds.Tables[0].Rows[i][3].ToString();
                _Location1.latitude = ds.Tables[0].Rows[i][4].ToString();
                _Location1.Date = ds.Tables[0].Rows[i][5].ToString();

                _Location1.Time = ds.Tables[0].Rows[i][6].ToString();
          
                _LocationList.Add(_Location1);
            }

            return _LocationList;
        }


        public LocationM GetOneUser(string _UserID)
        {

            string command = "select * from [FITLIFTER_LIVE_LOCATION_TABLE] where UserID = @UserIDS;";

            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@UserIDS", _UserID);

            SqlCommand cmd = new SqlCommand(command, con);
            cmd.Parameters.AddRange(param);

            adpt.SelectCommand = cmd;
            adpt.Fill(ds);
            cmd.Clone();
            con.Close();

            LocationM _user1 = new LocationM();


            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {


                _user1.CounterID = int.Parse(ds.Tables[0].Rows[i][0].ToString());
                _user1.LocationID = ds.Tables[0].Rows[i][1].ToString();
                _user1.UserID = ds.Tables[0].Rows[i][2].ToString();

                _user1.Longitude = ds.Tables[0].Rows[i][3].ToString();
                _user1.latitude = ds.Tables[0].Rows[i][4].ToString();
                _user1.Date = ds.Tables[0].Rows[i][5].ToString();

                _user1.Time = ds.Tables[0].Rows[i][6].ToString();


            }

            return _user1;
        }


        public bool UpdateVerifyAccount(string ID,string Longitude, string latitude)
        {


            string command = "update [FITLIFTER_LIVE_LOCATION_TABLE] set Longitude = @LongitudeS , latitude = @latitudeS where UserID = @UserIDS;";

            SqlParameter[] param = new SqlParameter[3];



            if (ID != null)
                param[0] = new SqlParameter("@UserEmailS", ID);
            else
                param[0] = new SqlParameter("@UserEmailS", "");

            if (ID != null)
                param[1] = new SqlParameter("@UserEmailS", ID);
            else
                param[1] = new SqlParameter("@UserEmailS", "");

          
            param[2] = new SqlParameter("@UserIDS", ID);
        

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