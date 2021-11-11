using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;

namespace VizKartApp.Areas.Customer.Controllers
{
    public class DemoController : ApiController
    {
        public string Index()
        {
            return "Hello world";
        }
    }
}
