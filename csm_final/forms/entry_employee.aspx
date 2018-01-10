<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_employee.aspx.cs"
    Inherits="csm_final.forms.entry_employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Employee form</title>
    <link rel="Stylesheet" href="Styles/StyleSheet.css" />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function job_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <div class="form-style-5">
        <form id="form1" runat="server">
        <fieldset>
            <legend><span class="number">1</span>Employee Entry </legend>
            
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Employee Id" CausesValidation="True"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Value must be  in numbers" ForeColor="Red" Operator="DataTypeCheck"
                Type="Integer"></asp:CompareValidator>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Employee Code"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox3"
                ErrorMessage="Value must be  in numbers" ForeColor="Red" Operator="DataTypeCheck"
                Type="Integer"></asp:CompareValidator>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Cold Chain Id"></asp:TextBox>
            &nbsp;<p>
                Is Active:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" ToolTip="Whether The Employee Is Working Or Not">
                    <asp:ListItem Value="0">No</asp:ListItem>
                    <asp:ListItem Value="1">Yes</asp:ListItem>
                </asp:DropDownList>
            </p>
            <legend><span class="number">2</span> Personal Details:<br />
            </legend>Name:<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
                ErrorMessage="Write Alphabets Only" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            Department:<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="Write Alphabets Only" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Designation:<br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6"
                ErrorMessage="Write Alphabets Only" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999"
                CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                ForeColor="Black" Height="180px" SelectedDate="2017-04-02" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
            Leaving Date:-<br />
            <br />
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#999999"
                CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
        </fieldset>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        &nbsp;</form>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [EMPLOYEE]"></asp:SqlDataSource>
</body>
</html>
