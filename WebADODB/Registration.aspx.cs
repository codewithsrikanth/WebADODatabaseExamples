using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebADODB
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {                   
                    string query = "select CityName from tbl_City";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            ddlCity.Items.Add(dr[0].ToString());
                        }
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.Message;   
                //lblResult.Text = "Registration Failed";
            }
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string query = $"insert into Registration values('{txtEmail.Text}','{txtPwd.Text}','{ddlCity.SelectedValue}')";
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    Server.Transfer("~/Login.aspx");
                }
                else
                {
                    lblResult.Text = "Registration Failed";
                }
                
            }
            catch (Exception ex)
            {
                lblResult.Text = "Registration Failed: "+ex.Message;
            }
        }
    }
}