<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="BE_Project.Web.Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 129px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-right: 10%; margin-left: 10%; width: 750px">
    
        <table style="width:750px;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="Images/top_bg.jpg" />
               </td>
            </tr>
             <tr>
                <td style="background-color: #996633"  colspan="7">
                    <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Names="Trebuchet MS" Font-Size="Large" ForeColor="Black" Height="30px" 
                        Orientation="Horizontal" Width="500px">
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Sign In" Value="Sign In" NavigateUrl="~/Login_index.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Sign Up" Value="Sign Up" NavigateUrl="~/Reg_index.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                
            </tr>
            <tr><td>
                <table style="width: 100%; margin-right: 20%; margin-left: 20%; height: 350px;">
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td align="center">
                            LOGIN</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Enter Username:</td>
                        <td align="center">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Enter Username" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Enter Password:</td>
                        <td align="center">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Enter Password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td align="center">
                            <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </td></tr>
             <tr><td style="background-color: #996633; height: 30px" align="center">Copyright@2013. All Rights Reserved.</td></tr>
        
        </table>
    
    </div>
    </form>
</body>
</html>
