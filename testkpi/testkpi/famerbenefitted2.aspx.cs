using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace testkpi
{
    public partial class famerbenefitted2 : System.Web.UI.Page
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
            series.Points.AddXY("7351", 160);
            series.Points.AddXY("7352", 270);
            series.Points.AddXY("6470", 230);
            series.Points.AddXY("7211", 50);
            series.Points.AddXY("6523", 200);

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData();
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList2.SelectedValue);
        }
        private void GetChartTypes2()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                DropDownList2.Items.Add(li);
            }
        }
        private void GetChartData2()
        {
            Series series = Chart2.Series["Series1"];
            series.Points.AddXY("2316", 150);
            series.Points.AddXY("1790", 110);
            series.Points.AddXY("2560", 200);
            series.Points.AddXY("2796", 170);
            series.Points.AddXY("2513", 100);


        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData2();
            Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList2.SelectedValue);
        }
    }
}