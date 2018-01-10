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
    public partial class entry_inventory_item : System.Web.UI.Page
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
                string b;
                SqlCommand cmd = new SqlCommand("insert into InventoryItem" + "(InventoryItemId,InventoryId,ProductId,EntryDate,IsIn,LeaveDate,Quantity)values(@invitemid,@invid,@prid,@edate,@isin,@ldate,@qty)", con);
                
                cmd.Parameters.AddWithValue("@invitemid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@invid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@prid", TextBox3.Text);
                cmd.Parameters.AddWithValue("@edate", Calendar1.SelectedDate);
                cmd.Parameters.AddWithValue("@isin", DropDownList1.Text.Equals("Yes"));
                if(DropDownList1.Text.Equals("No"))
                     cmd.Parameters.AddWithValue("@ldate", Calendar2.SelectedDate);
                else
                    cmd.Parameters.AddWithValue("@ldate", Convert.ToDateTime("1753-01-01 00:00:00.000"));
                cmd.Parameters.AddWithValue("@qty", TextBox4.Text);
                b = DropDownList1.Text;
                Console.WriteLine(b);
                if (b.Equals("No"))
                {
                    Calendar2.Visible = false;
                }
                cmd.ExecuteNonQuery();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        
    }
}