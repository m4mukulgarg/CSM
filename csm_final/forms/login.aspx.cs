using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace csm_final.forms
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMin_Click(object sender, EventArgs e)
        {
            Response.Redirect("min_login.aspx");
        }

        protected void btnCC_Click(object sender, EventArgs e)
        {
            Response.Redirect("cc_login.aspx");
        }
    }
}