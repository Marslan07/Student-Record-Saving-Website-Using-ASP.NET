<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration Form.aspx.cs" Inherits="Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Login Form</title>
    <style type="text/css">
        
        
       
        .auto-style2 {
            align-content:center;
            margin:10px;
            width:24%;
            text-align:center;
        }
      
       
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
            margin-top: 0px;
        }
              
       
        .auto-style5 {
            width: 146px;
        }
              
       
    </style>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; ">
        <div align="center" >
            <table  class="auto-style2";>
                <tr>
                    <td  bgcolor="89BB64" >
                    
                        <h2> Registeration Form </h2>
                    </td>
                </tr>
            </table>
            
        </div>
        

        <div>
            <table align="center" bgcolor="dcdcba" >
                <tr>
                    <td colspan="2"><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #FFFFFF" class="auto-style3" >
                        <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name" Width="181px"></asp:TextBox> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="You have must wirte your name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="CNIC"></asp:Label></td>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #FFFFFF" class="auto-style3">
                        <asp:TextBox ID="txtcnic" runat="server" placeholder="00000-0000000-0" Width="181px"></asp:TextBox> </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill this blank!" ControlToValidate="txtcnic" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                
              <tr>

                    <td colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Course"></asp:Label></td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="Courselist" runat="server" AutoPostBack="True" Width="187px">
                            <asp:ListItem>Select Course</asp:ListItem>
                            <asp:ListItem>BS computer Science</asp:ListItem>
                            <asp:ListItem>BS Information Technology</asp:ListItem>
                            <asp:ListItem>BS Software Engineering</asp:ListItem>
                            <asp:ListItem>BS Mangament Science</asp:ListItem>
                        </asp:DropDownList>
                    </td>>
                  <td>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Your course" ControlToValidate="Courselist" ForeColor="Red" InitialValue="Select Course"></asp:RequiredFieldValidator>
                  </td>
                  
            </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
                    <td>
                        &nbsp;</td>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #FFFFFF" class="auto-style3">
                        <asp:TextBox ID="txtaddress" runat="server" placeholder="Enter Address" Width="181px"></asp:TextBox> </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your Address!" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2"> <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label></td>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #FFFFFF" class="auto-style3">
                        <asp:RadioButton GroupName="Gender" ID="Male" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" Width="69px" Height="16px" />
                        <asp:RadioButton GroupName="Gender" ID="Female" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" Width="109px" CssClass="auto-style4" Height="16px" /><br />
                        <br />
                        
                    </td>

                        </tr>
                        <tr>
                    <td colspan="2" >
                        <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label> </td>
                    <td style="font-family: Arial, Helvetica, sans-serif; background-color: #FFFFFF" class="auto-style3" >
                        <asp:TextBox ID="txtcontact" runat="server" width="181" ></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill this Blank!" ControlToValidate="txtcontact" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            </tr>

                           <tr>
                    <td colspan="2">
                        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label></td>
                    <td style="font-family: Arial, Helvetica, sans-serif;" class="auto-style3">
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Mail" TextMode="Email" width="181"></asp:TextBox></td>
                               <td>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must required Email" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter the Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail"></asp:RegularExpressionValidator>
                               </td>

                           </tr>    
                </table>
            </div>
        
            <table align="center">
                        <tr>
                                <td colspan="2" align="center"  >
                                    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" BackColor="#89BB64" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift SemiBold" Font-Size="Medium" /></td>

                            </tr>
                </table>
        
    </form>
</body>
</html>
