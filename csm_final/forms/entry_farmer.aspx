<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_farmer.aspx.cs" Inherits="csm_final.forms.entry_farmer" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Farmer form</title>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [FARMER]"></asp:SqlDataSource>
<fieldset>
<legend><span class="number">1</span> Farmer Entry</legend>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder = "Farmer Id" 
        CausesValidation="True" ></asp:TextBox>

   <!-- <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox2" 
        ErrorMessage="Value must be in Alphabets only" ForeColor="Red"></asp:CompareValidator>--->
    &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder = "Product Id"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" placeholder = "Distance From Cold Chain "></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder = "Cold Chain Id" 
        ></asp:TextBox>      
</fieldset>
<fieldset>
<legend><span class="number">2</span> Details:</legend>
    <br />
    &nbsp;Joining Date:-<br />
    <asp:Calendar ID="Calendar1" runat="server" >
        </asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for="job">State:<br />
    </label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="states" DataValueField="states">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [states]"></asp:SqlDataSource>
&nbsp;&nbsp;
</fieldset>
    <asp:Button ID="Button1" runat="server"  Text="Submit" 
        onclick="Button1_Click" />
    </form>
</div>

</body>
</html>
