<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navy_login.aspx.cs" Inherits="BE_Project.Web.Navy_login" %>

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
            document.getElementById("cross").style.left = pos_x;
            document.getElementById("cross").style.top = pos_y;
            document.getElementById("cross").style.visibility = "visible";
            var x1 = document.getElementById("x1");
            x1.value = pos_x;
            var y1 = document.getElementById("y1");
            y1.value = pos_y;


        }

        function point_itxy2(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = pos_x;
            document.getElementById("cross").style.top = pos_y;
            document.getElementById("cross").style.visibility = "visible";
            var x2 = document.getElementById("x2");
            x2.value = pos_x;
            var y2 = document.getElementById("y2");
            y2.value = pos_y;


        }

        function point_itxy3(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = pos_x;
            document.getElementById("cross").style.top = pos_y;
            document.getElementById("cross").style.visibility = "visible";
            var x3 = document.getElementById("x3");
            x3.value = pos_x;
            var y3 = document.getElementById("y3");
            y3.value = pos_y;


        }

        function point_itxy4(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = pos_x;
            document.getElementById("cross").style.top = pos_y;
            document.getElementById("cross").style.visibility = "visible";
            var x4 = document.getElementById("x4");
            x4.value = pos_x;
            var y4 = document.getElementById("y4");
            y4.value = pos_y;


        }

        function point_itxy5(event) {
            pos_x = event.offsetX ? (event.offsetX) : event.pageX - document.getElementById("displayArea").offsetLeft;
            pos_y = event.offsetY ? (event.offsetY) : event.pageY - document.getElementById("displayArea").offsetTop;
            document.getElementById("cross").style.left = pos_x;
            document.getElementById("cross").style.top = pos_y;
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
            width: 160px;
        }
        .style2
        {
            width: 600px;
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
                <table style="width:100%;">
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style2" align="center">
                            NAVY LOGIN</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Username:</td>
                        <td class="style2" align="center">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                     <tr><td class="style1">Password</td><td class="style2" align="center">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                       <br /> <asp:Button ID="Button2" runat="server" Text="Recover Password" 
                             onclick="Button2_Click" />
                        </td><td> &nbsp;</td></tr>
                    <tr>
                        <td class="style1">
                            Select Image Positions:</td>
                        <td class="style2" align="center">
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
                                <asp:TextBox ID="y5" runat="server" TextMode="Password"></asp:TextBox>
                                  <br />  <asp:Button ID="Button3" runat="server" Text="Recover CP" 
                                        onclick="Button3_Click" />
                            </p> 
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Play:</td>
                        <td class="style2" align="center">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                           <%-- <asp:Silverlight ID="Silverlight1" runat="server" Height="200px" Width="200px" Source="~/ClientBin/BE_Project.xap">
                            </asp:Silverlight>--%>

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
                        <td class="style1">
                            Played_time:</td>
                        <td class="style2" align="center">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style2" align="center">
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
