using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication32
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebService1 s = new WebService1();
          lbl.Text =   s.HelloWorld();
        }

        protected void drp_SelectedIndexChanged(object sender, EventArgs e)
        {
            ds2.SelectParameters[0].DefaultValue = drp.SelectedValue;
        }
    }
}