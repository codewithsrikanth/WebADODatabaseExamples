using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebADODB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString);
            string query = $"select count(*) from Registration where Email='{txtEmail.Text}' and Password='{txtPwd.Text}'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int count =Convert.ToInt32(cmd.ExecuteScalar());
            if(count == 1)
            {
                //Server.Transfer("~/Home.aspx");
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                lblResult.ForeColor = Color.Red;
                lblResult.Text = "Invalid Credentails";
            }

        }
    }
}