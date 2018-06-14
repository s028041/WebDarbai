<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MobileArena.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head;
        any other head content must come *after* these tags -->
    <title>Mobile Arena</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>Mobile Arena</span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active"><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                        <li><a href="Compare.aspx"><span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>Compare</a></li>
                        <li id="insert" runat="server"><a href="Insert.aspx"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Insert</a></li>
                        <li id="edit" runat="server"><a href="Edit.aspx"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>Edit</a></li>
                        <li id="signup" runat="server"><a href="Sign_Up.aspx"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span>Sign Up</a></li>
                        <li id="signin" runat="server"><a href="Sign_In.aspx"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>Sign In</a></li>
                    </ul>
                    <asp:Label runat="server" Text="logged off" ForeColor="Red" ID="LoginStatus"  CssClass="pull-right"></asp:Label>
                    <asp:Label runat="server" Text="Status:&nbsp" ID="Label3" CssClass="pull-right"></asp:Label> 
                    <asp:LinkButton runat="server" ID="logoff1" CssClass="btn btn-danger pull-right"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Log off</asp:LinkButton>               
                                    
                </div>
            </div>
        </div>

        <div class="container" style="margin-top: 70px;">
            <asp:RadioButtonList ID="RadioButtonListCriterion" runat="server" RepeatDirection="Horizontal" CssClass="radiobuttons">
                <asp:ListItem Text="Name" Selected="True"></asp:ListItem>
                <asp:ListItem Text="OS"></asp:ListItem>
                <asp:ListItem Text="Price group"></asp:ListItem>
                <asp:ListItem Text="Screen size"></asp:ListItem>
                <asp:ListItem Text="Release date"></asp:ListItem>
            </asp:RadioButtonList>
            <div class="input-group">
                <asp:TextBox ID="TextBoxSearch" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button ID="btnSearch" Text="Search" runat="server" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                </span>
            </div>

            <div class="container" style="margin-top: 20px">
                <asp:ListView ID="results" runat="server" Visible="false">
                    <EmptyDataTemplate>
                        <h1>No matches found</h1>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <div id="mobile" class="row list-group">
                            <div class="item list-group-item col-xs-4 col-lg-4">
                                <div class="thumbnail">
                                    <img class="group list-group-image" src='<%# Eval("pictureDir") %>' width="400" height="250" />
                                    <div class="caption">
                                        <h3 class="group inner list-group-item-heading">
                                            <%# Eval("name") %>
                                        </h3>
                                        <h4 class="group inner list-group-item-heading">Launch: <%# Eval("launch") %>
                                        </h4>
                                        <p class="group inner list-group-item-text">
                                            Colors: <%# Eval("colors") %>
                                            <br />
                                            Price group: <%# Eval("priceGroup") %>
                                        </p>
                                        <div class="row">
                                            <div class="row col-xs-12 col-md-6">
                                                <a class="btn btn-default btn-lg" data-toggle="collapse" href='<%#string.Format("#{0}", Eval("id")) %>'>
                                                    <span class="glyphicon glyphicon-menu-down"></span>More details
                                                </a>
                                            </div>
                                        </div>
                                        <div id='<%# Eval("id") %>' class="panel-collapse collapse">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>NETWORK</th>
                                                            <td>Technology</td>
                                                            <td><%# Eval("network") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th>LAUNCH</th>
                                                            <td>Release date</td>
                                                            <td><%# Eval("launch") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="3">BODY</th>
                                                            <td>Dimensions</td>
                                                            <td><%# Eval("dimensions") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Weight</td>
                                                            <td><%# Eval("weight") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>SIM</td>
                                                            <td><%# Eval("SIM") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="4">DISPLAY</th>
                                                            <td>Type</td>
                                                            <td><%# Eval("type") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Size</td>
                                                            <td><%# Eval("size") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Resolution</td>
                                                            <td><%# Eval("resolution") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Multitouch</td>
                                                            <td><%# Eval("multitouch") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="4">PLATFORM</th>
                                                            <td>OS</td>
                                                            <td><%# Eval("OS") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Chipset</td>
                                                            <td><%# Eval("chipset") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CPU</td>
                                                            <td><%# Eval("CPU") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>GPU</td>
                                                            <td><%# Eval("GPU") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="2">MEMORY</th>
                                                            <td>Card slot</td>
                                                            <td><%# Eval("cardSlot") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Internal</td>
                                                            <td><%# Eval("mem_internal") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="4">CAMERA</th>
                                                            <td>Primary</td>
                                                            <td><%# Eval("primary") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Features</td>
                                                            <td><%# Eval("features") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Video</td>
                                                            <td><%# Eval("video") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Secondary</td>
                                                            <td><%# Eval("secondary") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="5">COMMS</th>
                                                            <td>WLAN</td>
                                                            <td><%# Eval("WLAN") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Bluetooth</td>
                                                            <td><%# Eval("bluetooth") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>GPS</td>
                                                            <td><%# Eval("GPS") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Radio</td>
                                                            <td><%# Eval("radio") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>USB</td>
                                                            <td><%# Eval("USB") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="4">FEATURES</th>
                                                            <td>Sensors</td>
                                                            <td><%# Eval("sensors") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Messaging</td>
                                                            <td><%# Eval("messaging") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Browser</td>
                                                            <td><%# Eval("browser") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Java</td>
                                                            <td><%# Eval("java") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th>BATTERY</th>
                                                            <td></td>
                                                            <td><%# Eval("battery") %></td>
                                                        </tr>
                                                        <tr>
                                                            <th rowspan="2">MISC</th>
                                                            <td>Colors</td>
                                                            <td><%# Eval("colors") %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Price group</td>
                                                            <td><%# Eval("priceGroup") %></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <a class="btn btn-default btn-lg" data-toggle="collapse" href='<%#string.Format("#{0}", Eval("id")) %>'>
                                                <span class="glyphicon glyphicon-menu-up"></span>UP
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
