using PhoneGuideAPI_DAL;
using PhoneGuideAPI_ENTITY;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace PhoneGuideAPI.Controllers
{
    public class GuideController : ApiController
    {
        DataContext db = new DataContext();
        [HttpGet]
        public List<Person> Guide()
        {
            List<Person> personList = db.Person.ToList();
            return personList;
        }

    }
}