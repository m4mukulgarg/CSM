<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_inventory_item.aspx.cs" Inherits="csm_final.forms.entry_inventory_item" %>


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
<legend><span class="number">1</span> Inventory Item</legend>
&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox1" runat="server" placeholder = "Inventory Item Id" 
        CausesValidation="True"></asp:TextBox>
&nbsp;
<asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox2" runat="server" placeholder = "Inventry Id"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox3" runat="server" placeholder = "Product Id"></asp:TextBox>
    
&nbsp;      
</fieldset>
<fieldset>
<legend><span class="number">2</span> Details</legend>

    <br />
    Entry Date:-<br />
    <br />
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    Is In:-
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem Value="1">Yes</asp:ListItem>
        <asp:ListItem Value="0">No</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="labelLeaveDate" runat="server" Text="Leave Date" Visible="False"></asp:Label>
&nbsp;<asp:Calendar ID="Calendar2" runat="server" Visible = "false" ></asp:Calendar>&nbsp;&nbsp;&nbsp;
 <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
 <asp:TextBox ID="TextBox4" runat="server" placeholder = "Quantity" ></asp:TextBox>


    <br />


</fieldset>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [InventoryItem]">
    </asp:SqlDataSource>
    </form>
</div>

</body>
</html>
