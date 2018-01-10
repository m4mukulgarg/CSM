using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;


namespace csm_final
{
    public partial class kpi1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetChartTypes();
                GetChartData();
                GetChartTypes2();
                GetChartData2();

            }


        }
        private void GetChartTypes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                DropDownList1.Items.Add(li);
            }
        }
        private void GetChartData()
        {
            Series series = Chart1.Series["Series1"];
            series.Points.AddXY("Driver", 50);
            series.Points.AddXY("Clerk", 90);
            series.Points.AddXY("House Keeping", 80);
            series.Points.AddXY("Labour", 100);

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData();
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);
            //GetChartData2();
        }
        private void GetChartTypes2()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li2 = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                DropDownList2.Items.Add(li2);
            }
        }
        private void GetChartData2()
        {
            Series series = Chart2.Series["Series1"];
            series.Points.AddXY("Logistics", 60);
            series.Points.AddXY("Inventory", 40);
            series.Points.AddXY("Management", 25);


        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData2();
            Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList2.SelectedValue);
            GetChartData();
        }
    }
}