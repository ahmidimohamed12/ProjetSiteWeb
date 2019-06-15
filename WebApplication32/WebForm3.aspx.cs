using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication32
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=volavion;integrated security=true");
        public SqlCommand cmd = new SqlCommand("", cnx);
        public SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["log"] = "";
            Session["pas"] = "";
        }

        protected void btnconnect_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from admi";
            cnx.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if(dr[0].Equals(txtlog.Text) && dr[1].Equals(txtpas.Text))
                {
                    Session["log"] = dr[0].ToString();
                    Session["Pas"] = dr[1].ToString();
                    cnx.Close();
                    this.Response.Redirect("~/menu.aspx");
                    break;
                }

                
            }
        }
    }
}