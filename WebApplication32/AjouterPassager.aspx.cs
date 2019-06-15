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
    public partial class AjouterPassager : System.Web.UI.Page
    {
        public static SqlConnection cnx = new SqlConnection("data source=.;initial catalog=volavion;integrated security=true");
        public SqlCommand cmd = new SqlCommand("",cnx);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            cmd.CommandText = string.Format("insert into passager values({0},'{1}','{2}','{3}')",txtpo.Text,txtnom.Text,txtprenom.Text,txtville.Text);
            cnx.Open();

            int n = cmd.ExecuteNonQuery();
            if (n == 1)
            {
                this.Response.Write("<script>alert('ajouter');</script>");
            }
            else {
                this.Response.Write("<script>alert('Problem d ajouter');</script>");
            }

            cnx.Close();
        }
    }
}