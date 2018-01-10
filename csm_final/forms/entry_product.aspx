<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry_product.aspx.cs" Inherits="csm_final.forms.product_entry" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
        
    <title>Product form</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400"/>  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="Styles/font-awesome.min.css"/>                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="Styles/bootstrap.min.css"/>                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="Styles/hero-slider-style.css"/>                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="Styles/magnific-popup.css"/>                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="Styles/templatemo-style.css"/>                                   
    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->    <script language="javascript" type="text/javascript">
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
<legend><span class="number">1</span> Product Details</legend>
&nbsp;
<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox1" runat="server" placeholder = "Product Id" 
        CausesValidation="True"></asp:TextBox>
&nbsp;
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="TextBox2" 
        ErrorMessage="Value must be in Alphabets only" ForeColor="Red" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox2" runat="server" placeholder = "Product Name"></asp:TextBox>&nbsp;
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox3" runat="server" placeholder = "Product Type"></asp:TextBox>
    
&nbsp;      
</fieldset>
<fieldset>
<legend><span class="number">2</span> Selling Details</legend>
   <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <asp:TextBox ID="TextBox4" runat="server" placeholder = "Storage Cost Per Qtl"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator5" runat="server" 
        ControlToValidate="TextBox5" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox5" runat="server" placeholder = "Cold Chain Additional Expense"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator6" runat="server" 
        ControlToValidate="TextBox6" ErrorMessage="Value must be  in numbers" 
        ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        <asp:TextBox ID="TextBox6" runat="server" placeholder = "Market Selling Price Per Qtl"></asp:TextBox>
</fieldset>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [PRODUCT]">
    </asp:SqlDataSource>
    </form>
</div>

</body>
</html>
