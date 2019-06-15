using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication32
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dgv_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ds.DeleteParameters[0].DefaultValue = dgv.Rows[e.RowIndex].Cells[1].Text;
        }

        protected void dgv_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow r = dgv.SelectedRow;

           // this.Response.Write(r);
        //    ds2.SelectParameters[0].DefaultValue = r.Cells[1].Text;
            Session["numero"] = r.Cells[1].Text;


            this.Response.Redirect("~/WebForm2.aspx");


            //ds2.SelectParameters[0].DefaultValue = r.Cells[1].Text;
            //ds2.SelectParameters[0].DefaultValue = r.Cells[0].Text;


        }

        protected void dgv_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ds.UpdateParameters[0].DefaultValue = e.NewValues[1].ToString();
            ds.UpdateParameters[1].DefaultValue = e.NewValues[2].ToString();
            ds.UpdateParameters[2].DefaultValue = e.NewValues[3].ToString();
            ds.UpdateParameters[3].DefaultValue = e.NewValues[4].ToString();
            ds.UpdateParameters[4].DefaultValue = e.NewValues[5].ToString();
            ds.UpdateParameters[5].DefaultValue = e.NewValues[6].ToString();
            ds.UpdateParameters[6].DefaultValue = e.NewValues[7].ToString();
            ds.UpdateParameters[7].DefaultValue = e.NewValues[0].ToString();
        }

        protected void dgv_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
          
        }

        protected void dgv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void dgv_RowCreated(object sender, GridViewRowEventArgs e)
        {
            
         //   this.Response.Write(r.Cells[2].Text);
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            dt.InsertParameters[0].DefaultValue = txtp.Text;
            dt.InsertParameters[1].DefaultValue = TextBox1.Text;
            dt.InsertParameters[2].DefaultValue = TextBox2.Text;
            dt.InsertParameters[3].DefaultValue = TextBox3.Text;
        }
    }
}