using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Controllers
{
    public class SecurityController : ApiController
    {
        // GET: api/Security
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Security/5
        public string Get(int id)
        {
            return "value";
        }


        // POST: api/Security
        public void Post()
        {
            

        }

        // PUT: api/Security/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Security/5
        public void Delete(int id)
        {
        }
    }
}
