<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_inventory.aspx.cs" Inherits="csm_final.forms.entry_inventory" %>


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
<legend><span class="number">1</span> Inventory Details: </legend>
&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox1" runat="server" placeholder = "Inventory Id" 
        CausesValidation="True"></asp:TextBox>
&nbsp;
<asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox2" runat="server" placeholder = "Farmer Id"></asp:TextBox>
&nbsp;
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox3" runat="server" placeholder = "Cold Chain Id"></asp:TextBox>


    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [INVENTORY]">
    </asp:SqlDataSource>
    </form>
</div>

</body>
</html>
