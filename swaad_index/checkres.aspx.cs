using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace swaad_index
{
    public partial class checkres : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

                if (Session["user"] != null)
                {
                    Response.Redirect("confirm.aspx");
                }
                con.ConnectionString = "Data source=NADEEM\\SQLEXPRESS; initial catalog = Reserve;integrated Security=true";
                con.Open();
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = userid.Text.Trim();
            cmd.CommandText = "select * from res where Unique_id='" + userid.Text + "' and Email_id ='" + email.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Reserve");


            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["user"] = user;
                Response.Redirect("confirm.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Something Goes Wrong');", true);
            }
        }
    }
}