using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebADODB
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DBOperations(object sender, CommandEventArgs e)
        {
            int eno = Convert.ToInt32(txtEno.Text);
            string ename = txtEname.Text;
            double salary = Convert.ToDouble(txtSalary.Text);
            string designation = txtDesignation.Text;
            int deptId = Convert.ToInt32(txtDeptID.Text);

            string constr = ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString;
            string name = ConfigurationManager.AppSettings["ownerName"].ToString();
            lblMsg.Text = "Welcome " + name;

            SqlConnection con = new SqlConnection(constr);
            string query = string.Empty;
            switch (e.CommandName.ToLower())
            {
                case "insert":
                    query = $"insert into Employee values({eno},'{ename}',{salary},'{designation}',{deptId})";                   
                    break;
                case "update":
                    query = $"update Employee set Ename='{ename}',Salary={salary},Designation='{designation}',DeptID={deptId} where Eno={eno}";                    
                    break;
                case "delete":
                    query = $"delete from Employee where Eno={eno}";                    
                    break;               
            }
            lblDisplay.Text =  QueryExecution(query, con);
        }
        private string QueryExecution(string query,SqlConnection con)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i > 0)
                return i + " Record(s) Effected";
            else
                return "No Record Updated in DB";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            foreach (var item in form1.Controls)
            {
                if(item is TextBox)
                {
                    TextBox t1 = (TextBox)item;
                    t1.Text = string.Empty;
                }
            }
        }
    }
}