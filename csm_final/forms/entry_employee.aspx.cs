using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace csm_final.forms
{
    public partial class entry_employee : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                string a;
                a = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection con = new SqlConnection(a);
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into employee" +"(EmployeeId,EmployeeCode,Name,Department,Designation,JoinDate,IsActive,ReleaseDate,ColdChainId)values(@empid,@ecode,@name,@department,@designation,@jdate,@isactive,@ldate,@ccid)", con);
                cmd.Parameters.AddWithValue("@empid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@ecode", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ccid", TextBox3.Text);
                cmd.Parameters.AddWithValue("@isactive", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox4.Text);
                cmd.Parameters.AddWithValue("@department", TextBox5.Text);
                cmd.Parameters.AddWithValue("@designation", TextBox6.Text);
                cmd.Parameters.AddWithValue("@jdate", Calendar1.SelectedDate);
                if (DropDownList2.Text.Equals("Yes"))
                cmd.Parameters.AddWithValue("@ldate", Convert.ToDateTime("1753-01-01 00:00:00.000"));
                else
                    cmd.Parameters.AddWithValue("@ldate", Calendar2.SelectedDate);
               // cmd.Parameters.AddWithValue("@email", TextBox5.Text);
               // cmd.Parameters.AddWithValue("@location", DropDownList1.Text);
                cmd.ExecuteNonQuery();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}