using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FitLifter_API.Models;

namespace FitLifter_API.Controllers
{
    public class LocationController : ApiController
    {
        [Route("api/v1/Location")]
        public HttpResponseMessage Post([FromBody]LocationM __Location1)
        {
            LocationPersistance _LocationP = new LocationPersistance();
            _LocationP.AddNewUser(__Location1);
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created);
            return response;
        }

        [Route("api/v1/livelocation")]
        public HttpResponseMessage PostLiveLocation([FromBody]LocationM __Location1)
        {
            LocationPersistance _LocationP = new LocationPersistance();
            _LocationP.AddNewLiveLocation(__Location1);
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created);
            return response;
        }


        [Route("api/v1/livelocation/{id}")]
        //  [HttpPost]
        public LocationM Get(string id)
        {
            //Email = Email.Replace("hotmail.com", "@hotmail.com");
            LocationPersistance _location1 = new LocationPersistance();
            LocationM _Location1 = _location1.GetOneUser(id);
            return _Location1;
        }

        [Route("api/v1/livelocation/{id}/Long/{Logn1}/Lat/{Lat1}")]
        public HttpResponseMessage PutHealthy(string id, string Logn1, string Lat1)
        {
            LocationPersistance _UserP = new LocationPersistance();
            bool HttpStatusCodeResult = false;
            // Call the Update function , and this function return bool result ( true , false )
            // true : the function got the user and updated his information.
            // false : the function didnt got the user.
            HttpStatusCodeResult = _UserP.UpdateVerifyAccount(id, Logn1, Lat1);

            HttpResponseMessage response;

            if (HttpStatusCodeResult)
            {
                response = Request.CreateResponse(HttpStatusCode.NoContent);
            }
            else
            {
                response = Request.CreateResponse(HttpStatusCode.NotFound);
            }
            return response;
        }
    }
}
