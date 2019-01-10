using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyTestAdvrtisment
{
    public partial class administratorpage : System.Web.UI.Page
    {
        HttpCookie cookie;
        protected void Page_Init(object sender, EventArgs e)
        {
            cookie = Request.Cookies["OlegCookie2018"];
            if(cookie.Value!="admin")
            {
                Page.ErrorPage = "MyErrorPage.aspx";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}