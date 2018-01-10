<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kpi1.aspx.cs" Inherits="csm_final.kpi1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <table>
        <tr>
        <td>SELECT YOUR CHART TYPE : </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            </td>
        </tr>
      </table>
      <table>
       <tr>
         <td colspan='2'>
             <asp:Chart ID="Chart1" runat="server">
                 <Series>
                     <asp:Series Name="Series1">
                     </asp:Series>
                 </Series>
                 <ChartAreas>
                     <asp:ChartArea Name="ChartArea1">
                     </asp:ChartArea>
                 </ChartAreas>
             </asp:Chart>
           </td>
         <td></td>
       </tr>
      
      </table>

      <table>
      <tr>
        <td>SELECT YOUR CITY : </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
          </td>
      </tr>
      </table>
      <table>
        <tr> 
          <td colspan='2'></td>
          <td>&nbsp;</td>
        </tr>
      </table>
    </div>
    </form>
</body>
</html>
