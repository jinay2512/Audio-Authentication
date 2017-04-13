<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Air_reg.aspx.cs" Inherits="BE_Project.Web.Air_reg" %>

<%@ Register assembly="System.Web.Silverlight" namespace="System.Web.UI.SilverlightControls" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
        function getPos(e) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            x = pos_x;
            y = pos_y;
            //x=e.clientX;
            //y=e.clientY;
            cursor = "Your Mouse Position is : " + x + " and " + y;
            document.getElementById("displayArea").innerHTML = cursor
        }

        function stopTracking() {
            document.getElementById("displayArea").innerHTML = "";
        }

        function point_itxy1(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = (pos_x - 1);
            document.getElementById("cross").style.top = (pos_y - 15);
            document.getElementById("cross").style.visibility = "visible";
            var x1 = document.getElementById("x1");
            x1.value = pos_x;
            var y1 = document.getElementById("y1");
            y1.value = pos_y;


        }

        function point_itxy2(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = (pos_x - 1);
            document.getElementById("cross").style.top = (pos_y - 15);
            document.getElementById("cross").style.visibility = "visible";
            var x2 = document.getElementById("x2");
            x2.value = pos_x;
            var y2 = document.getElementById("y2");
            y2.value = pos_y;


        }

        function point_itxy3(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = (pos_x - 1);
            document.getElementById("cross").style.top = (pos_y - 15);
            document.getElementById("cross").style.visibility = "visible";
            var x3 = document.getElementById("x3");
            x3.value = pos_x;
            var y3 = document.getElementById("y3");
            y3.value = pos_y;


        }

        function point_itxy4(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = (pos_x - 1);
            document.getElementById("cross").style.top = (pos_y - 15);
            document.getElementById("cross").style.visibility = "visible";
            var x4 = document.getElementById("x4");
            x4.value = pos_x;
            var y4 = document.getElementById("y4");
            y4.value = pos_y;


        }

        function point_itxy5(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = (pos_x - 1);
            document.getElementById("cross").style.top = (pos_y - 15);
            document.getElementById("cross").style.visibility = "visible";
            var x5 = document.getElementById("x5");
            x5.value = pos_x;
            var y5 = document.getElementById("y5");
            y5.value = pos_y;


        }
        
        
        
        function sayGoodbye(fname) {
            var box = document.getElementById("TextBox2");
            box.value = fname;
        }

      
    
    </script>
     <style type="text/css">
        .style1
        {
            width: 600px;
        }
        .style2
        {
            width: 160px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="margin-right: 10%; margin-left: 10%;">
    
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
            <tr>
            <td>
            <table style="width:100%;">
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style1" align="center">
                            AIR FORCE REGISTRATION</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Username</td>
                        <td class="style1"  align="center">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="name cannot be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr><td class="style2">Password</td><td class="style1" align="center">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox></td><td> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="password cannot be blank"></asp:RequiredFieldValidator>
                        </td></tr>
                    <tr>
                        <td class="style2">
                            Select Image Positions</td>
                        <td class="style1"  align="center">
                            <div id="focusArea" onmousemove="getPos(event)" onmouseout="stopTracking()">
                            <img id="cross" onclick="point_itxy1(event)" alt="" src="Images/air1.jpg"height="100px" width="100px" />
                            <img id="cross" onclick="point_itxy2(event)" alt="" src="Images/air2.jpg"height="100px" width="100px" />
                            <img id="cross" onclick="point_itxy3(event)" alt="" src="Images/air3.jpg"height="100px" width="100px" />
                            <img id="cross" onclick="point_itxy4(event)" alt="" src="Images/air4.jpg"height="100px" width="100px" />
                            <img id="cross" onclick="point_itxy5(event)" alt="" src="Images/air5.jpg"height="100px" width="100px" />
                            </div>
                            <p id="displayArea"></p>
                            <p>You pointed on x = 
                                <asp:TextBox ID="x1" runat="server" TextMode="Password"></asp:TextBox> - y = 
                                <asp:TextBox ID="y1" runat="server" TextMode="Password"></asp:TextBox></p>
                                <p>You pointed on x = 
                                <asp:TextBox ID="x2" runat="server" TextMode="Password"></asp:TextBox> - y = 
                                <asp:TextBox ID="y2" runat="server" TextMode="Password"></asp:TextBox></p>
                                <p>You pointed on x = 
                                <asp:TextBox ID="x3" runat="server" TextMode="Password"></asp:TextBox> - y = 
                                <asp:TextBox ID="y3" runat="server" TextMode="Password"></asp:TextBox></p>
                                <p>You pointed on x = 
                                <asp:TextBox ID="x4" runat="server" TextMode="Password"></asp:TextBox> - y = 
                                <asp:TextBox ID="y4" runat="server" TextMode="Password"></asp:TextBox></p>
                                <p>You pointed on x = 
                                <asp:TextBox ID="x5" runat="server" TextMode="Password"></asp:TextBox> - y = 
                                <asp:TextBox ID="y5" runat="server" TextMode="Password"></asp:TextBox></p>
                            </td>
                            
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Play</td>
                        <td class="style1"  align="center">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                           <!-- <asp:Silverlight ID="Silverlight1" runat="server" Height="200px" Width="200px" Source="~/ClientBin/BE_Project.xap">
                            </asp:Silverlight>-->
                            <object width="300" height="100"
                                data="data:application/x-silverlight-2," 
                                type="application/x-silverlight-2" >
                                <param name="source" value="ClientBin/BE_Project.xap"/>
                            </object>
                            
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Play_time</td>
                        <td class="style1"  align="center">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                           
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="count cannot be blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            DOB</td>
                        <td class="style1"  align="center">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Date</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sept</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>Year</asp:ListItem>
                                <asp:ListItem>1988</asp:ListItem>
                                <asp:ListItem>1989</asp:ListItem>
                                <asp:ListItem>1990</asp:ListItem>
                                <asp:ListItem>1991</asp:ListItem>
                                <asp:ListItem>1992</asp:ListItem>
                                <asp:ListItem>1993</asp:ListItem>
                                <asp:ListItem>1994</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>1996</asp:ListItem>
                                <asp:ListItem>1997</asp:ListItem>
                                <asp:ListItem>1998</asp:ListItem>
                                <asp:ListItem>1999</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>2001</asp:ListItem>
                                <asp:ListItem>2002</asp:ListItem>
                                <asp:ListItem>2003</asp:ListItem>
                                <asp:ListItem>2004</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                                <asp:ListItem>2006</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                                <asp:ListItem>2011</asp:ListItem>
                                <asp:ListItem>2012</asp:ListItem>
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Sex</td>
                        <td class="style1"  align="center">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Address</td>
                        <td class="style1"  align="center">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Mobile</td>
                        <td class="style1"  align="center">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile Number" 
                                MaximumValue="9999999999" MinimumValue="7000000000"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Email</td>
                        <td class="style1"  align="center">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="Invalid Email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style1"  align="center">
                            <asp:Button ID="Button1" runat="server" Text="Register" 
                                onclick="Button1_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            </tr>
             <tr><td style="background-color: #996633; height: 30px" align="center">Copyright@2013. All Rights Reserved.</td></tr>
        
        </table>
    
    </div>
    </form>
</body>
</html>
