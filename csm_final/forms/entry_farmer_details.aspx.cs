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
    public partial class entry_farmer_details : System.Web.UI.Page
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

       /*         SqlCommand cmd = new SqlCommand("insert into FARMERSALE"+"(FarmerID,ProductID,CostOfFarmerSellingPerQtl,WastagePerQtl,MarketSelllingPricePerQtl)values(@fid,@pid,@cost,@wastage,@msp");
                cmd.Parameters.AddWithValue("@fid", TextBox1.t);
                cmd.Parameters.AddWithValue("@pid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@cost", TextBox3.Text);
                cmd.Parameters.AddWithValue("@wastage", TextBox5.Text);
                cmd.Parameters.AddWithValue("@msp", TextBox4.Text);
                cmd.ExecuteNonQuery();*/ 
                
                   
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}