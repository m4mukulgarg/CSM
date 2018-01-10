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
    public partial class fpibenefitted : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetChartTypes();
                GetChartData();
                GetChartTypes2();
                GetChartData2();
                GetChartTypes3();
                GetChartData3();
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
            series.Points.AddXY("7351", 6);
            series.Points.AddXY("7352", 17);
            series.Points.AddXY("6470", 13);
            series.Points.AddXY("7211", 4);
            series.Points.AddXY("6523", 10);

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData();
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList1.SelectedValue);
            GetChartData2();
            GetChartData3();
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
            series.Points.AddXY("Dec 16", 4);
            series.Points.AddXY("Jan 17", 6);
            series.Points.AddXY("Feb 17", 8);
            series.Points.AddXY("Apr 17", 11);
            


        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData2();
            Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList2.SelectedValue);
            GetChartData();
            GetChartData3();
        }
        private void GetChartTypes3()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                DropDownList3.Items.Add(li);
            }
        }
        private void GetChartData3()
        {
            Series series = Chart3.Series["Series1"];
            series.Points.AddXY("07", 10);
            series.Points.AddXY("14", 25);
            series.Points.AddXY("21", 9);
            series.Points.AddXY("28", 19);
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData3();
            Chart3.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList3.SelectedValue);
            GetChartData2();
            GetChartData();
        }
        
    }

}