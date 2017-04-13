<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_index.aspx.cs" Inherits="BE_Project.Web.Login_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 149px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="margin-right: 10%; margin-left: 10%; width: 750px">
    
        <table style="width:750px;">
            <tr>
                <td bgcolor="White">
                    <asp:Image ID="Image1" runat="server" ImageUrl="Images/top_bg.jpg" />
               </td>
            </tr>
             <tr>
                <td style="background-color: #996633"  colspan="7" bgcolor="White">
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
            <tr><td bgcolor="White">
                <table style="width: 100%; margin-right: 15%; margin-left: 15%;">
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
                            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" 
                                ImageUrl="~/Images/admin.gif" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                                Font-Size="Large" Font-Underline="False" PostBackUrl="~/Admin_login.aspx">Admin</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="margin-left: 40px" class="style1">
                            <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" 
                                ImageUrl="~/Images/air123.jpg" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                                Font-Size="Large" Font-Underline="False" PostBackUrl="~/Air_login.aspx">Air Force</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="margin-left: 40px" class="style1">
                            <asp:Image ID="Image4" runat="server" Height="150px" Width="150px" 
                                ImageUrl="~/Images/india-defence-1.jpg" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                                Font-Size="Large" Font-Underline="False" PostBackUrl="~/Def_login.aspx">Defence</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="margin-left: 40px" class="style1">
                            <asp:Image ID="Image5" runat="server" Height="150px" Width="150px" 
                                ImageUrl="~/Images/indian-navy.jpg" />
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                                Font-Size="Large" Font-Underline="False" PostBackUrl="~/Navy_login.aspx">Navy</asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </td></tr>
             <tr><td style="background-color: #996633; height: 30px" align="center" bgcolor="White">Copyright@2013. All Rights Reserved.</td></tr>
        
        </table>
    
    </div>
    </form>
</body>
</html>
