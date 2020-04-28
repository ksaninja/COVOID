using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FitLifter_API.Models
{
    public class LocationM
    {
        public int CounterID { get; set; }
        public string LocationID { get; set; }
        public string UserID { get; set; }
        public string Longitude { get; set; }
        public string latitude { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
    }
}