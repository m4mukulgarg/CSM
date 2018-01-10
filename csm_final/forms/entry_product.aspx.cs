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
    public partial class product_entry : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("insert into product" + "([ProductID],[ProductName],[ProductType],StorageCostPerQtl,[ColdChainAdditionalExpensePerQtl],MarketSellingPricePerQtl)values(@pid,@pname,@ptype,@cost,@cce,@msp)", con);
                cmd.Parameters.AddWithValue("@pid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ptype", TextBox3.Text);
                cmd.Parameters.AddWithValue("@cost", TextBox4.Text);
                cmd.Parameters.AddWithValue("@cce", TextBox5.Text);
                  cmd.Parameters.AddWithValue("@msp", TextBox6.Text);
                
                cmd.ExecuteNonQuery();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}