<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cc_login.aspx.cs" Inherits="csm_final.cc_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <div  class = "form-style-5" align = "center">
            <form id="form_min_login" runat="server">
        <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate" 
                BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
                Height="200px" Width="297px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
            <br />
            </form>
            <p> If you don't have the ceredentials, contact the head of your department. </p>
        </div>
        <asp:SqlDataSource ID="SQL_user" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [COLDCHAIN]"></asp:SqlDataSource>
            </body>
</html>
