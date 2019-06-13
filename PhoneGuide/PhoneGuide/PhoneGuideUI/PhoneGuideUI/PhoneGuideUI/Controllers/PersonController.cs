using PhoneGuideUI.Entities;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PhoneGuideUI.Controllers
{
    public class PersonController : Controller
    {
        // GET: Person
        public ActionResult Index()
        {
            List<Person> personList = new List<Person>();
            personList = HTTPHelper.SendRequest<List<Person>>("http://localhost:64908","Guide/Guide", Method.GET);
            return View(personList);
        }
    }
}