<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navy_download.aspx.cs" Inherits="BE_Project.Web.Navy_download" %>

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
                            <asp:MenuItem Text="Upload_Files" Value="Home" NavigateUrl="~/Navy_upload.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Download_Files" Value="Sign In" 
                                NavigateUrl="~/Navy_download.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="LogOut" Value="Sign Up" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                
            </tr>
            <tr>
            <td>
            <center>
                <asp:Panel ID="Panel1" runat="server" Width="400px" Height="450px" 
                    BorderStyle="Solid">
                   <table style="width:100%;">
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
                                Select files of Field:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                    <asp:ListItem>----Select----</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>Navy</asp:ListItem>
                                    <asp:ListItem>Defence</asp:ListItem>
                                    <asp:ListItem>Airforce</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                   
                    <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onpageindexchanged="DataGrid1_PageIndexChanged" 
                        onselectedindexchanged="DataGrid1_SelectedIndexChanged">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditItemStyle BackColor="#2461BF" />
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <AlternatingItemStyle BackColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundColumn DataField="filenam" HeaderText="File Name"></asp:BoundColumn>
                            <asp:ButtonColumn CommandName="Select" HeaderText="Download" Text="Download">
                            </asp:ButtonColumn>
                        </Columns>
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    </asp:DataGrid>
                   
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
