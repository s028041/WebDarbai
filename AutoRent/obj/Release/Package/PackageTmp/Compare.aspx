<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compare.aspx.cs" Inherits="MobileArena.Compare" %>

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
                        <li><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                        <li class="active"><a href="Compare.aspx"><span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>Compare</a></li>
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
            <asp:DropDownList ID="compare1DropDownList" runat="server" CssClass="btn btn-default"></asp:DropDownList>
            <asp:DropDownList ID="compare2DropDownList" runat="server" CssClass="btn btn-default"></asp:DropDownList>
            <asp:Button ID="comparebtn" Text="Compare" runat="server" CssClass="btn btn-primary" OnClick="comparebtn_Click" />

            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <asp:Image ID="picture1" runat="server" CssClass="img-responsive pull-left" />
                </div>
                <div class="col-xs-6 col-md-6">
                    <asp:Image ID="picture2" runat="server" CssClass="img-responsive pull-right" />
                </div>
            </div>

            
            <table class="table table-bordered" id="compareTable" runat="server">
                <tbody>
                    <tr class="compare-header">
                        <th>Name</th>
                        <td>
                            <asp:Label ID="name1" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="name2" runat="server" ForeColor="Black"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">NETWORK</th>
                    </tr>
                    <tr>
                        <th>Technology</th>
                        <td>
                            <asp:Label ID="lblNetwork1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblNetwork2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">LAUNCH</th>
                    </tr>
                    <tr>
                        <th>Release date</th>
                        <td>
                            <asp:Label ID="lblLaunch1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblLaunch2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">BODY</th>
                    </tr>
                    <tr>
                        <th>Dimensions</th>
                        <td>
                            <asp:Label ID="lblDimensions1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblDimensions2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Weight</th>
                        <td>
                            <asp:Label ID="lblWeight1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblWeight2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>SIM</th>
                        <td>
                            <asp:Label ID="lblSim1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblSim2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">DISPLAY</th>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <td>
                            <asp:Label ID="lblType1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblType2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Size</th>
                        <td>
                            <asp:Label ID="lblSize1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblSize2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Resolution</th>
                        <td>
                            <asp:Label ID="lblResolution1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblResolution2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Multitouch</th>
                        <td>
                            <asp:Label ID="lblMultitouch1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblMultitouch2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">PLATFORM</th>
                    </tr>
                    <tr>

                        <th>OS</th>
                        <td>
                            <asp:Label ID="lblOS1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblOS2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Chipset</th>
                        <td>
                            <asp:Label ID="lblChipset1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblChipset2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>CPU</th>
                        <td>
                            <asp:Label ID="lblCPU1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblCPU2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>GPU</th>
                        <td>
                            <asp:Label ID="lblGPU1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblGPU2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">MEMORY</th>
                    </tr>
                    <tr>
                        <th>Card slot</th>
                        <td>
                            <asp:Label ID="lblCardSlot1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblCardSlot2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Internal</th>
                        <td>
                            <asp:Label ID="lblInternal1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblInternal2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">CAMERA</th>
                    </tr>
                    <tr>

                        <th>Primary</th>
                        <td>
                            <asp:Label ID="lblPrimary1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblPrimary2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Features</th>
                        <td>
                            <asp:Label ID="lblFeatures1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblFeatures2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Video</th>
                        <td>
                            <asp:Label ID="lblVideo1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblVideo2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Secondary</th>
                        <td>
                            <asp:Label ID="lblSecondary1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblSecondary2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">COMMS</th>
                    </tr>
                    <tr>
                        <th>WLAN</th>
                        <td>
                            <asp:Label ID="lblWLAN1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblWLAN2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Bluetooth</th>
                        <td>
                            <asp:Label ID="lblBluetooth1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblBluetooth2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>GPS</th>
                        <td>
                            <asp:Label ID="lblGPS1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblGPS2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Radio</th>
                        <td>
                            <asp:Label ID="lblRadio1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblRadio2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>USB</th>
                        <td>
                            <asp:Label ID="lblUSB1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblUSB2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">FEATURES</th>
                    </tr>
                    <tr>
                        <th>Sensors</th>
                        <td>
                            <asp:Label ID="lblSensors1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblSensors2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Messaging</th>
                        <td>
                            <asp:Label ID="lblMessaging1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblMessaging2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Browser</th>
                        <td>
                            <asp:Label ID="lblBrowser1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblBrowser2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Java</th>
                        <td>
                            <asp:Label ID="lblJava1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblJava2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Battery</th>
                        <td>
                            <asp:Label ID="lblBattery1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblBattery2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th colspan="3" class="compare-header">MISC</th>
                    </tr>
                    <tr>
                        <th>Colors</th>
                        <td>
                            <asp:Label ID="lblColors1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblColors2" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <th>Price group</th>
                        <td>
                            <asp:Label ID="lblPriceGroup1" runat="server"></asp:Label></td>
                        <td>
                            <asp:Label ID="lblPriceGroup2" runat="server"></asp:Label></td>
                    </tr>
                </tbody>
            </table>






        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
