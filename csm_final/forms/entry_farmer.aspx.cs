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
    public partial class entry_farmer : System.Web.UI.Page
    {
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

                SqlCommand cmd = new SqlCommand("insert into FARMER" + "(FarmerID,ProductID,DistanceFromColdChain,ColdChainID,Joindate,State)values(@fid,@pid,@ccdist,@ccid,@jdate,@state)", con);


                cmd.Parameters.AddWithValue("@fid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pid", TextBox2.Text);
                cmd.Parameters.AddWithValue("@ccdist", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ccid", TextBox4.Text);

                cmd.Parameters.AddWithValue("@state", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@jdate", Calendar1.SelectedDate);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
