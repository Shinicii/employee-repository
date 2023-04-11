using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;

namespace Employee
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        string TNS = "server=localhost;user id = root;database=schema1;Password=shinicii";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = TNS;
                con.Open();
                String sqlquery = "select * from employees";
                MySqlCommand cm = new MySqlCommand(sqlquery, con);
                MySqlDataReader dr = cm.ExecuteReader(CommandBehavior.CloseConnection);
                DataTable dt = new DataTable();
                dt.Load(dr);
                employees.DataSource = dt;
                employees.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }
        protected void addNewEmployee(object sender, EventArgs e)
        {
            Response.Redirect("NewEmployee.aspx");
        }
        protected void search(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = TNS;
            con.Open();
            String sqlquery = "SELECT * FROM employees WHERE " + DropDownList1.SelectedValue +"='"+TextBox1.Text+"';";
            MySqlCommand cm = new MySqlCommand(sqlquery, con);
            MySqlDataReader dr = cm.ExecuteReader();
            if (!dr.HasRows)
            {
                Response.Write("<script> alert('No Employee Found')</script>");
            }
            else
            {
                DataTable dt1 = new DataTable();
                dt1.Load(dr);
                searchemp.DataSource = dt1;
                searchemp.DataBind();
                Label1.Text = "Result: ";
            }
            con.Close();

        }

        
    }
}