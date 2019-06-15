using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication32
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=volavion;integrated security=true");
        public SqlCommand cmd = new SqlCommand("", cnx);
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            ds2.SelectParameters[0].DefaultValue = Session["numero"].ToString();
        }
    }
}