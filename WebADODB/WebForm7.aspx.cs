using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebADODB
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CompanyDBConn"].ConnectionString);
        SqlCommand cmd;SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            btnUpdate.Enabled = false;
            if (!IsPostBack)
                BindEmployeeData();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Employee emp = GetEmpData();
            string query = $"insert into Employee values({emp.Eno},'{emp.Ename}',{emp.Salary},'{emp.Designation}',{emp.DeptID})";
            DBOperation(query);
            BindEmployeeData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Employee emp = GetEmpData();
            string query = $"update Employee set Ename='{emp.Ename}',Salary={emp.Salary},Designation='{emp.Designation}',DeptID={emp.DeptID} where Eno={emp.Eno}";
            DBOperation(query);
            BindEmployeeData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string query = "delete from Employee where Eno="+txtEno.Text;
            DBOperation(query);
            BindEmployeeData();
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            string query = "select * from Employee where Eno="+txtEno.Text;
            cmd = new SqlCommand(query, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    txtEname.Text = dr["Ename"].ToString();
                    txtSalary.Text = dr["Salary"].ToString();
                    txtDesignation.Text = dr["Designation"].ToString();
                    txtDeptNo.Text = dr["DeptID"].ToString();
                }
                btnUpdate.Enabled = true;
            }
            else
            {
                lblResult.Text = "No Record(s) Found";
            }
            con.Close();
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
        private Employee GetEmpData()
        {
            Employee emp = new Employee();
            emp.Eno =Convert.ToInt32(txtEno.Text);
            emp.Ename =txtEname.Text;
            emp.Designation = txtDesignation.Text;
            emp.Salary =Convert.ToDouble(txtSalary.Text);
            emp.DeptID =Convert.ToInt32(txtDeptNo.Text);
            return emp; 
        }
        private void DBOperation(string query)
        {
            cmd = new SqlCommand(query, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.RecordsAffected > 0)
                lblResult.Text = dr.RecordsAffected + "Record(s) Affected";
            else
                lblResult.Text = "DB Operation Failed";
            con.Close();
        }
        private void BindEmployeeData()
        {
            string query = "select * from Employee";
            cmd = new SqlCommand(query, con);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(dr);
                gvEmployee.DataSource = dt;
                gvEmployee.DataBind();
            }
            con.Close();
        }

        protected void gvEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    class Employee
    {
        public int Eno { get; set; }
        public string Ename { get; set; }
        public double Salary { get; set; }
        public string Designation { get; set; }
        public int DeptID { get; set; }
    }
}