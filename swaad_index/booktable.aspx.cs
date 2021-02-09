using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace swaad_index
{
    public partial class booktable : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data source=NADEEM\\SQLEXPRESS; initial catalog = Reserve;integrated Security=true";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into res" + "(Unique_id, Name, Email_id, Phone, Table_no)values(@Unique_id, @Name, @Email_id, @Phone, @Table_no)", con);
            cmd.Parameters.AddWithValue("@Unique_id", userid.Text);
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Email_id", email.Text);
            cmd.Parameters.AddWithValue("@Phone", phone.Text);
            cmd.Parameters.AddWithValue("@Table_no", table.Text);
            cmd.ExecuteNonQuery();
            Lbl1.Text = "Reserved Succesfully";
        }
    }
}