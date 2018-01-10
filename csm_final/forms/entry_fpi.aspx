<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_fpi.aspx.cs" Inherits="csm_final.forms.entry_fpi" %>


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
<legend><span class="number">1</span> Food Processing Industry(FPI)</legend>
&nbsp;
<asp:CompareValidator ID="CompareValidator6" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox1" runat="server" placeholder = "Food Processing  Id" 
        CausesValidation="True"></asp:TextBox>
&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox2" runat="server" placeholder = "Product Id"></asp:TextBox>
    
&nbsp;      
</fieldset>
<fieldset>
<legend><span class="number">2</span> Details:</legend>
<label for="job">Joining Date:<br />
    </label>
    &nbsp;&nbsp;
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [FPI]">
    </asp:SqlDataSource>
    <br />
    <br />
</fieldset>
<asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="TextBox6" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox6" runat="server" placeholder = "Distance from Cold Chain"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox3" runat="server" placeholder = "Cold Chain Id" 
        ontextchanged="TextBox3_TextChanged"></asp:TextBox>


    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;</form>
</div>

</body>
</html>
