using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FitLifter_API.Models;

namespace FitLifter_API.Controllers
{
    public class UserController : ApiController
    {
        // GET: api/User
        [Route("api/v1/Users")]
        public List<UserM> Get()
        {
            // create object from class (( UsersPersistence )) to work with Database
            UserPersistence _UserP = new UserPersistence();
            List<UserM> _user = _UserP.GetDataAll();
            return _user;
        }

        // GET: api/User/5
        [Route("api/v1/Users/{Email}")]
      //  [HttpPost]
        public UserM Get(string Email)
        {
            //Email = Email.Replace("hotmail.com", "@hotmail.com");
            UserPersistence _userP1 = new UserPersistence();
            UserM _user1 = _userP1.GetOneUser(Email);
            return _user1;
        }

        // POST: api/User
        [Route("api/v1/Users")]
        public HttpResponseMessage Post([FromBody]UserM _user1)
        {
            UserPersistence _UserP = new UserPersistence();
            _UserP.AddNewUser(_user1);
            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created);
            return response;
        }

        // PUT: api/User/5
        [Route("api/v1/Users/Healthy/{Email}")]
        public HttpResponseMessage PutHealthy(string Email)
        {
            UserPersistence _UserP = new UserPersistence();
            bool HttpStatusCodeResult = false;
            // Call the Update function , and this function return bool result ( true , false )
            // true : the function got the user and updated his information.
            // false : the function didnt got the user.
            HttpStatusCodeResult = _UserP.UpdateVerifyAccount1(Email);

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

        [Route("api/v1/Users/Suspected/{Email}")]
        public HttpResponseMessage PutSuspected(string Email)
        {
            UserPersistence _UserP = new UserPersistence();
            bool HttpStatusCodeResult = false;
            // Call the Update function , and this function return bool result ( true , false )
            // true : the function got the user and updated his information.
            // false : the function didnt got the user.
            HttpStatusCodeResult = _UserP.UpdateVerifyAccount2(Email);

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

        [Route("api/v1/Users/Sick/{Email}")]
        public HttpResponseMessage Putsick(string Email)
        {
            UserPersistence _UserP = new UserPersistence();
            bool HttpStatusCodeResult = false;
            // Call the Update function , and this function return bool result ( true , false )
            // true : the function got the user and updated his information.
            // false : the function didnt got the user.
            HttpStatusCodeResult = _UserP.UpdateVerifyAccount3(Email);

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

        // DELETE: api/User/5
        public void Delete(int id)
        {
        }
    }
}
