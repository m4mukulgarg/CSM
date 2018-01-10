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
    public partial class entry_ccreg : System.Web.UI.Page
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
              

                SqlCommand cmd = new SqlCommand("insert into COLDCHAIN" + "(ColdChainId,Name,PhoneNo,Email,Pass,State)values(@ccid,@name,@phno,@email,@password,@state)", con);
                cmd.Parameters.AddWithValue("@ccid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@phno", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox5.Text);
                cmd.Parameters.AddWithValue("@state", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox6.Text);
                 cmd.ExecuteNonQuery(); 
                

     
                
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}