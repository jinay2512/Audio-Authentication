<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Def_authenticate.aspx.cs" Inherits="BE_Project.Web.Defence_authenticate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
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
                            <asp:MenuItem Text="Upload_Files" Value="Home" NavigateUrl="~/Def_upload.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Download_Files" Value="Sign In" 
                                NavigateUrl="~/Def_download.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="LogOut" Value="Sign Up" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                
            </tr>
            <tr>
            <td>
            <center>
                <asp:Panel ID="Panel1" runat="server" Width="400px" Height="370px" 
                    BorderStyle="Solid">
                    <table style="margin: 30% 10% 30% 10%; width:100%;">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                One Time Password</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Download" 
                                    onclick="Button1_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                   
                   
                </asp:Panel>
                </center>
            </td>
            </tr>
            <tr><td style="background-color: #996633; height: 30px" align="center">Copyright@2013. All Rights Reserved.</td></tr>
        
            </table>
    
    </div>
    </form>
</body>
</html>
