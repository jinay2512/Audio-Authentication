<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Def_upload.aspx.cs" Inherits="BE_Project.Web.Defence_upload" %>

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
                <asp:Panel ID="Panel1" runat="server" Width="400px" Height="450px" 
                    BorderStyle="Solid">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                Upload Files</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                File ID:</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                File Name:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Select a File: </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        
                    </table>
                    <p align="center"><asp:Label ID="Label2" runat="server" Text="" ></asp:Label></p>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="Vertical" Width="400px" 
                        onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowdeleting="GridView1_RowDeleting" EnableModelValidation="True">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="fileid" HeaderText="File ID" />
                            <asp:BoundField DataField="filenam" HeaderText="File Name" />
                            <asp:CommandField HeaderText="Delete Files" ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </asp:Panel>
                <p align="center"><asp:Label ID="Label3" runat="server" Text="" ></asp:Label></p>
                </center>
            </td>
            </tr>
            <tr><td style="background-color: #996633; height: 30px" align="center">Copyright@2013. All Rights Reserved.</td></tr>
        
            </table>
    
    </div>
    </form>
</body>
</html>
