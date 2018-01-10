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
    public partial class entry_inventory : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("insert into INVENTORY" + "(InventoryId,FarmerID,ColdChainID)values(@invid,@fmid,@ccid)", con);
                cmd.Parameters.AddWithValue("@invid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@fmid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ccid", TextBox3.Text);
                
                cmd.ExecuteNonQuery();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}