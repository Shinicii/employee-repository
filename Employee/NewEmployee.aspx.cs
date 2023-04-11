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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string TNS = "server=localhost;user id = root;database=schema1;Password=shinicii";
            MySqlConnection con = new MySqlConnection();
            con.ConnectionString = TNS;
            con.Open();
            StringBuilder check = new StringBuilder("SELECT * FROM employees WHERE id ='" + TextBox1.Text + "';");
            MySqlCommand chk = new MySqlCommand(check.ToString(), con);
            MySqlDataReader dr = chk.ExecuteReader();
            bool dataExists = dr.HasRows;
            dr.Close();
            con.Close();
            if (dataExists)
            {
                Response.Write("<script> alert('User ID already exist.') </script>");
                TextBox1.Text = "";
            }
         
            else
            {
                MySqlConnection con1 = new MySqlConnection();
                con1.ConnectionString = TNS;
                con1.Open();
                StringBuilder insert = new StringBuilder("INSERT INTO employees VALUES('"+TextBox1.Text+"','"+TextBox2.Text + "','" +TextBox3.Text + "','" +TextBox4.Text + "','" + TextBox5.Text +"',DEFAULT);");
                MySqlCommand insrt = new MySqlCommand(insert.ToString(),con1);
                insrt.ExecuteNonQuery();
                Response.Write("<script> alert('Data Inserted.') </script>");
            }
            Response.Redirect("EmployeeList.aspx");


        }

        
    }
}