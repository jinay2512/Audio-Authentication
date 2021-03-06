﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_viewuser.aspx.cs" Inherits="BE_Project.Web.Admin_upload" %>

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
                            <asp:MenuItem Text="Uploaded_Files" Value="Home" 
                                NavigateUrl="~/Admin_ownerdata.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="View_Users" Value="Sign In" 
                                NavigateUrl="~/Admin_viewuser.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="LogOut" Value="Sign Up" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                
            </tr>
            <tr>
            <td>
            <center>
                <asp:Panel ID="Panel1" runat="server" Width="600px" Height="450px" 
                    BorderStyle="Solid">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Height="450px" Width="593px">
                    
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="field" HeaderText="Type" />
                            <asp:BoundField DataField="name" HeaderText="User Name" />
                            <asp:BoundField DataField="date" HeaderText="Date of Birth" />
                            <asp:BoundField DataField="time" HeaderText="Played Time" />
                            <asp:BoundField DataField="sex" HeaderText="Sex" />
                            <asp:BoundField DataField="addr" HeaderText="Address" />
                            <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    
                    </asp:GridView>
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
