<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course Form.aspx.cs" Inherits="Project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AVailable Course Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 112px;
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            margin-top:10px;
            margin-bottom:10px;
        }
        .auto-style3 {
            height: 667px;
            margin-bottom:10px;
        }
        .auto-style4 {
            height: 29px;
            width: 148px;
        }
    </style>
</head>
<body style="height: 366px">
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; background-color: #6B9489;">
        <table align="center" style="margin-bottom:10px; padding:2px; margin-top:5px;">
            <tr>
                <td class="auto-style4">
                    <f2>Available Courses</f2>
                </td>
            </tr>
        </table>
        <div class="auto-style3" style="background-color: #008080">
            <table align="center" class="auto-style5" bgcolor="dcdcba" style="margin-top:10px;" >
                 <tr>

                   <td style="font-family: Arial, Helvetica, sans-serif; margin-bottom:unset; margin-top:auto;" class="auto-style1">Course</td>
                    <td class="auto-style2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="55px">
                            <asp:ListItem>BS compuetr Science</asp:ListItem>
                            <asp:ListItem>BS Software Engineering</asp:ListItem>
                            <asp:ListItem>BS Information Technology</asp:ListItem>
                        </asp:ListBox>
                    </td>>
                 </tr>
              </table>
        </div>
    </form>
</body>
</html>
