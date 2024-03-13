using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebADODB
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString);
                string query = "select CityName from tbl_city";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddlCity.Items.Add(dr["CityName"].ToString());
                    }
                }
                con.Close();
            }
        }

        protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCity.Text = ddlCity.SelectedValue;
        }
    }
}