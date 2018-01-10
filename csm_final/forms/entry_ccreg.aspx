<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_ccreg.aspx.cs" Inherits="csm_final.forms.entry_ccreg" %>


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
    <style type="text/css">
        #Reset1
        {
            height: 68px;
            width: 493px;
        }
    </style>
</head>
<body>
<div class="form-style-5">
    <form id="form1" runat="server">
<fieldset>
<legend><span class="number">1</span> Cold Chain Registration</legend>
&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" 
        Operator="DataTypeCheck" Type="Integer" 
        ErrorMessage="Value must be in  numbers" ControlToValidate="TextBox1" 
        ForeColor="Red"></asp:CompareValidator>
    <asp:TextBox ID="TextBox1" runat="server" placeholder = "Cold Storage Id" 
        CausesValidation="True"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="TextBox2" 
        ErrorMessage="Value must be in Alphabets only" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox2" runat="server" placeholder = "Name"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox3" runat="server" placeholder = "Phone No."></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="Write Correct Email " 
        ForeColor="Red" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox5" runat="server" placeholder = "Email"></asp:TextBox>
    Passoword is required<asp:TextBox ID="TextBox6" runat="server" placeholder = "Password"></asp:TextBox>
    Password is required<br />
    Both password are not same<asp:TextBox ID="TextBox4" runat="server" placeholder = "Confirm Password"></asp:TextBox>
&nbsp;      
</fieldset>
<fieldset>
<legend><span class="number">2</span> LOCATION:</legend>
<label for="job">City:<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [states] FROM [states]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="states" DataValueField="states" 
        Height="35px" Width="1275px" ToolTip="City" >
        <asp:ListItem>delhi</asp:ListItem>
        <asp:ListItem>mumbai</asp:ListItem>
        <asp:ListItem>goa</asp:ListItem>
        <asp:ListItem>punjab</asp:ListItem>
        <asp:ListItem>haryana</asp:ListItem>
    </asp:DropDownList>
   
&nbsp;&nbsp;
    <input id="Reset1" type="reset" value="Reset" /></fieldset>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [COLDCHAIN]">
    </asp:SqlDataSource>
    </form>
</div>

</body>
</html>
