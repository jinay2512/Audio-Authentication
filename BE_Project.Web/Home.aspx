<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BE_Project.Web._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .style2
        {
            width: 250px;
        }
        .style3
        {
            width: 500px;
        }
        .style4
        {
            width: 250px;
           
        }
        .style5
        {
            width: 500px;
           
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-right: 10%; margin-left: 10%;">
    
         <table style="width:1000px;">
            <tr>
                <td bgcolor="White">
                    <asp:Image ID="Image1" runat="server" ImageUrl="Images/top_bg.jpg" />
               </td>
            </tr>
            <tr>
                <td style="background-color: #996600"  colspan="7" bgcolor="White">
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
            <tr>
                <td bgcolor="White">
                    <table style="width: 100%;">
                        <tr>
                            <td class="style4" align="center">
                                
                                <asp:Image ID="Image2" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/air123.jpg" />
                            </td>
                            <td class="style5">
                                
                                Graphical Passwords are one of the new authentication systems used in the 
                                market. The reason behind using strong authentication system is to strengthen 
                                the security system in Online applications. We used the concept of CCP (Cued 
                                Click Points) and Sound Frequency system (Play_time) for secure authentication. 
                                The application shown here is of secure military database where top secret files 
                                are uploaded in their server. </td>
                            <td class="style6">
                                
                                <asp:Image ID="Image5" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/air5.jpg" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                
                                <asp:Image ID="Image3" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/india-defence-1.jpg" />
                            </td>
                            <td class="style3">
                               
                                In Cued Click Points, the X and Y position of the imaged click gets saved in the 
                                database. We use five images for new registration. All the click points of the 
                                images are saved in a string and stored in the database. The database used is 
                                Sql Server 2014 Management Studio Express.</td>
                            <td>
                                
                                <asp:Image ID="Image6" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/defence5.jpg" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                
                                <asp:Image ID="Image4" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/indian-navy.jpg" />
                            </td>
                            <td class="style3">
                                
                                For Sound Frequency, We use the Silverlight tools provided by Microsoft. 
                                Silverlight is a powerful development tool for creating engaging, interactive 
                                user experiences for Web and mobile applications. Using Silverlight tools, we 
                                create a media player to play videos from our system. The play_time of the video 
                                is saved and stored in the database.</td>
                            <td>
                               
                                <asp:Image ID="Image7" runat="server" Height="200px" Width="250px" 
                                    ImageUrl="~/Images/navy5.jpg" />
                            </td>
                        </tr>
                    </table>
                </td>
            
            </tr>
            <tr><td style="background-color: #996633; height: 30px" align="center" bgcolor="White">Copyright@2013. All Rights Reserved.</td></tr>
        </table>
    
    </div>
    </form>
</body>
</html>
