<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_farmer_details.aspx.cs" Inherits="csm_final.forms.entry_farmer_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>form</title>
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
<legend><span class="number">1</span> Farmer Details:</legend>
&nbsp;
<asp:CompareValidator ID="CompareValidator6" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox1" runat="server" />

&nbsp;
  <asp:TextBox ID="TextBox2" runat="server" placeholder = "Product Id"/>
    
</fieldset>&nbsp;
<fieldset>
<legend><span class="number">2</span>  Selling Details:</legend>
<asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
<asp:TextBox ID="TextBox3" runat="server" placeholder = "Cost Of Famer Selling/Qtl."></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox5" runat="server" placeholder = "Wastage/Qtl."></asp:TextBox>
&nbsp;      
    <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox4" runat="server" placeholder = "Market Selling Price/Qtl."></asp:TextBox>

</fieldset><asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource2_Selecting" 
        SelectCommand="SELECT * FROM [FARMERSALE]">
    </asp:SqlDataSource>
    </form>
</div>

</body>
</html>
