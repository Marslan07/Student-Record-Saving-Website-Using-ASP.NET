<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search Form.aspx.cs" Inherits="Project.Search_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Form</title>
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 15px;
            width: 128px;
        }
        .auto-style3 {
            margin-top: 3px;
        }
        .auto-style4 {
            width: 128px;
        }
        .auto-style5 {
            height: 62px;
        }
        .auto-style6 {
            height: 1px;
            width: 104px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #808080">
              <table align="center" class="auto-style5">
                <tr>
                    <td style="background-color: #808080; font-family: Arial, Helvetica, sans-serif; margin-bottom:unset; margin-top:auto;">Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" Height="16px" style="margin-top: 3px"></asp:TextBox> 
                       <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is must Required" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator></td> 
                    </td>
                    
                </tr>
                <tr>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #808080", style="margin-top: 3px">CNIC</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtcnic" runat="server" Height="16px" CssClass="auto-style3" placeholder="00000-0000000-0"></asp:TextBox> 
                        <td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="CNIC is Required to view status" ControlToValidate="txtcnic" ForeColor="Red"></asp:RequiredFieldValidator> </td>
                       
                       
                   </td>
                    </tr>
                  <tr>
                      <td>
                          <asp:Label ID="lblerrormsg" runat="server" ForeColor="Red" style="align-items:center"></asp:Label>
                          
                      </td>
                  </tr>
                   </table>
            <table align="center"> 
                    <tr>
                                
                                <td align="center" style=" margin-top:3px" class="auto-style6" ><asp:Button ID="btnshow" runat="server" Text="Show Result" OnClick="btnshow_Click" BackColor="#669999" Height="28px" BorderStyle="None" CssClass="auto-style1" /></td>

                            </tr>
                 </table>
            </div>
        <div>
       <table>
                 <tr>
                       
                       
                       <td align="center">
                    
                       <asp:Label ID="labview" runat="server" Text="View Result" BackColor="#669999"></asp:Label>
                       </td>
                    <td align="center">
                        <asp:GridView ID="datagridview" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="207px" Width="857px" Font-Bold="True">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView> 

                    </td>
                    </tr>
           </table>
             </div>     

        
    </form>
</body>
</html>
