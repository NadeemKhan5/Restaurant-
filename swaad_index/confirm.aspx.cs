using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace swaad_index
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("checkres.aspx");
            }
            else
            
                con.ConnectionString = "Data source=NADEEM\\SQLEXPRESS; initial catalog = Reserve;integrated Security=true";
                con.Open();

                showdata();
            
            
        }
        public void showdata()
        {
            cmd.CommandText = "select * from res where Unique_id='" + Session["user"]+ "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            Lbl1.Text = ds.Tables[0].Rows[0]["Unique_id"].ToString();
            Lbl2.Text = ds.Tables[0].Rows[0]["name"].ToString();
            Lbl3.Text = ds.Tables[0].Rows[0]["Email_id"].ToString();
            Lbl4.Text = ds.Tables[0].Rows[0]["phone"].ToString();
            Lbl5.Text = ds.Tables[0].Rows[0]["Table_no"].ToString();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("checkres.aspx");
        }
    }
}