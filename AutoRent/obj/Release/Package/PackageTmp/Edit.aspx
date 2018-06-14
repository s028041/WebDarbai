<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="MobileArena.AddNew" %>

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
                        <li><a href="Compare.aspx"><span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>Compare</a></li>
                        <li id="insert" runat="server"><a href="Insert.aspx"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Insert</a></li>
                        <li class="active" id="edit" runat="server"><a href="Edit.aspx"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>Edit</a></li>
                        <li id="signup" runat="server"><a href="Sign_Up.aspx"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span>Sign Up</a></li>
                        <li id="signin" runat="server"><a href="Sign_In.aspx"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>Sign In</a></li>
                    </ul>
                    <asp:Label runat="server" Text="logged off" ForeColor="Red" ID="LoginStatus"  CssClass="pull-right"></asp:Label>
                    <asp:Label runat="server" Text="Status:&nbsp" ID="Label3" CssClass="pull-right"></asp:Label>
                    <asp:LinkButton runat="server" ID="logoff1" CssClass="btn btn-danger pull-right"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Log off</asp:LinkButton>                 
                </div>
            </div>
        </div>

        <div class="container" style="margin-top: 70px">



            <asp:ListView ID="ListViewMobiles" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success" />
                                </td>
                                <td>
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-warning" />
                                </td>
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                                </td>
                            </tr>
                            <tr>
                                <th>Name</th>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th>Picture</th>
                                <td></td>
                                <td>
                                    <asp:FileUpload ID="ImageUpload" runat="server" />
                                    
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="(.*png$)|(.*jpg$)|(.*jpeg$)"
                                        ControlToValidate="ImageUpload" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file"
                                        Display="Dynamic" />
                                    <asp:TextBox ID="PictureDirTextBox" runat="server" Text='<%# Bind("PictureDir") %>' Visible="false"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Please select image" ControlToValidate="PictureDirTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th>NETWORK</th>
                                <td>Technology</td>
                                <td>
                                    <asp:TextBox ID="NetworkTextBox" runat="server" Text='<%# Bind("Network") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="NetworkTextBox"></asp:RequiredFieldValidator>
                                </td>

                            </tr>
                            <tr>
                                <th>LAUNCH</th>
                                <td>Release date</td>
                                <td>
                                    <asp:TextBox ID="LaunchTextBox" runat="server" Text='<%# Bind("Launch") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="LaunchTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="3">BODY</th>
                                <td>Dimensions</td>
                                <td>
                                    <asp:TextBox ID="DimensionsTextBox" runat="server" Text='<%# Bind("Dimensions") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="DimensionsTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Weight</td>
                                <td>
                                    <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="WeightTextBox"></asp:RequiredFieldValidator>

                                </td>
                            </tr>
                            <tr>
                                <td>SIM</td>
                                <td>
                                    <asp:TextBox ID="SIMTextBox" runat="server" Text='<%# Bind("SIM") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="SIMTextBox"></asp:RequiredFieldValidator>
                                </td>

                            </tr>
                            <tr>
                                <th rowspan="4">DISPLAY</th>
                                <td>Type</td>
                                <td>
                                    <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="TypeTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Size</td>
                                <td>
                                    <asp:TextBox ID="SizeTextBox" runat="server" Text='<%# Bind("Size") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="SizeTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Resolution</td>
                                <td>
                                    <asp:TextBox ID="ResolutionTextBox" runat="server" Text='<%# Bind("Resolution") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="ResolutionTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Multitouch</td>
                                <td>
                                    <asp:TextBox ID="MultitouchTextBox" runat="server" Text='<%# Bind("Multitouch") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="MultitouchTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="4">PLATFORM</th>
                                <td>OS</td>
                                <td>
                                    <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="OSTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Chipset</td>
                                <td>
                                    <asp:TextBox ID="ChipsetTextBox" runat="server" Text='<%# Bind("Chipset") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="ChipsetTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>CPU</td>
                                <td>
                                    <asp:TextBox ID="CPUTextBox" runat="server" Text='<%# Bind("CPU") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="CPUTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>GPU</td>
                                <td>
                                    <asp:TextBox ID="GPUTextBox" runat="server" Text='<%# Bind("GPU") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="GPUTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">MEMORY</th>
                                <td>Card slot</td>
                                <td>
                                    <asp:TextBox ID="Card_SlotTextBox" runat="server" Text='<%# Bind("CardSlot") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="Card_SlotTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Internal</td>
                                <td>
                                    <asp:TextBox ID="InternalTextBox" runat="server" Text='<%# Bind("Internal") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="InternalTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="4">CAMERA</th>
                                <td>Primary</td>
                                <td>
                                    <asp:TextBox ID="_PrimaryTextBox" runat="server" Text='<%# Bind("_Primary") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="_PrimaryTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Features</td>
                                <td>
                                    <asp:TextBox ID="FeaturesTextBox" runat="server" Text='<%# Bind("Features") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="FeaturesTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Video</td>
                                <td>
                                    <asp:TextBox ID="VideoTextBox" runat="server" Text='<%# Bind("Video") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="VideoTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Secondary</td>
                                <td>
                                    <asp:TextBox ID="_SecondaryTextBox" runat="server" Text='<%# Bind("_Secondary") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="_SecondaryTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="5">COMMS</th>
                                <td>WLAN</td>
                                <td>
                                    <asp:TextBox ID="WLANTextBox" runat="server" Text='<%# Bind("WLAN") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="WLANTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Bluetooth</td>
                                <td>
                                    <asp:TextBox ID="BluetoothTextBox" runat="server" Text='<%# Bind("Bluetooth") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="BluetoothTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>GPS</td>
                                <td>
                                    <asp:TextBox ID="GPSTextBox" runat="server" Text='<%# Bind("GPS") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="GPSTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Radio</td>
                                <td>
                                    <asp:TextBox ID="RadioTextBox" runat="server" Text='<%# Bind("Radio") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="RadioTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>USB</td>
                                <td>
                                    <asp:TextBox ID="USBTextBox" runat="server" Text='<%# Bind("USB") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="USBTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="4">FEATURES</th>
                                <td>Sensors</td>
                                <td>
                                    <asp:TextBox ID="SensorsTextBox" runat="server" Text='<%# Bind("Sensors") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="SensorsTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Messaging</td>
                                <td>
                                    <asp:TextBox ID="MessagingTextBox" runat="server" Text='<%# Bind("Messaging") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="MessagingTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Browser</td>
                                <td>
                                    <asp:TextBox ID="BrowserTextBox" runat="server" Text='<%# Bind("Browser") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="BrowserTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Java</td>
                                <td>
                                    <asp:TextBox ID="JavaTextBox" runat="server" Text='<%# Bind("Java") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="JavaTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th>BATTERY</th>
                                <td></td>
                                <td>
                                    <asp:TextBox ID="BatteryTextBox" runat="server" Text='<%# Bind("Battery") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="BatteryTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">MISC</th>
                                <td>Colors</td>
                                <td>
                                    <asp:TextBox ID="ColorsTextBox" runat="server" Text='<%# Bind("Colors") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="ColorsTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Price group</td>
                                <td>
                                    <asp:TextBox ID="Price_groupTextBox" runat="server" Text='<%# Bind("PriceGroup") %>' CssClass="form-control insert-field" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" ForeColor="Red" Font-Size="Large" runat="server" ErrorMessage="*" ControlToValidate="Price_groupTextBox"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </EditItemTemplate>
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
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" /></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <th>NETWORK</th>
                                                    <td>Technology</td>
                                                    <td>
                                                        <asp:Label ID="NetworkLabel" runat="server" Text='<%# Eval("Network") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th>LAUNCH</th>
                                                    <td>Release date</td>
                                                    <td>
                                                        <asp:Label ID="LaunchLabel" runat="server" Text='<%# Eval("Launch") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="3">BODY</th>
                                                    <td>Dimensions</td>
                                                    <td>
                                                        <asp:Label ID="DimensionsLabel" runat="server" Text='<%# Eval("Dimensions") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Weight</td>
                                                    <td>
                                                        <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>SIM</td>
                                                    <td>
                                                        <asp:Label ID="SIMLabel" runat="server" Text='<%# Eval("SIM") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4">DISPLAY</th>
                                                    <td>Type</td>
                                                    <td>
                                                        <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Size</td>
                                                    <td>
                                                        <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Resolution</td>
                                                    <td>
                                                        <asp:Label ID="ResolutionLabel" runat="server" Text='<%# Eval("Resolution") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Multitouch</td>
                                                    <td>
                                                        <asp:Label ID="MultitouchLabel" runat="server" Text='<%# Eval("Multitouch") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4">PLATFORM</th>
                                                    <td>OS</td>
                                                    <td>
                                                        <asp:Label ID="OSLabel" runat="server" Text='<%# Eval("OS") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Chipset</td>
                                                    <td>
                                                        <asp:Label ID="ChipsetLabel" runat="server" Text='<%# Eval("Chipset") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>CPU</td>
                                                    <td>
                                                        <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>GPU</td>
                                                    <td>
                                                        <asp:Label ID="GPULabel" runat="server" Text='<%# Eval("GPU") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2">MEMORY</th>
                                                    <td>Card slot</td>
                                                    <td>
                                                        <asp:Label ID="Card_SlotLabel" runat="server" Text='<%# Eval("CardSlot") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Internal</td>
                                                    <td>
                                                        <asp:Label ID="InternalLabel" runat="server" Text='<%# Eval("Internal") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4">CAMERA</th>
                                                    <td>Primary</td>
                                                    <td>
                                                        <asp:Label ID="_PrimaryLabel" runat="server" Text='<%# Eval("_Primary") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Features</td>
                                                    <td>
                                                        <asp:Label ID="FeaturesLabel" runat="server" Text='<%# Eval("Features") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Video</td>
                                                    <td>
                                                        <asp:Label ID="VideoLabel" runat="server" Text='<%# Eval("Video") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Secondary</td>
                                                    <td>
                                                        <asp:Label ID="_SecondaryLabel" runat="server" Text='<%# Eval("_Secondary") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="5">COMMS</th>
                                                    <td>WLAN</td>
                                                    <td>
                                                        <asp:Label ID="WLANLabel" runat="server" Text='<%# Eval("WLAN") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Bluetooth</td>
                                                    <td>
                                                        <asp:Label ID="BluetoothLabel" runat="server" Text='<%# Eval("Bluetooth") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>GPS</td>
                                                    <td>
                                                        <asp:Label ID="GPSLabel" runat="server" Text='<%# Eval("GPS") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Radio</td>
                                                    <td>
                                                        <asp:Label ID="RadioLabel" runat="server" Text='<%# Eval("Radio") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>USB</td>
                                                    <td>
                                                        <asp:Label ID="USBLabel" runat="server" Text='<%# Eval("USB") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="4">FEATURES</th>
                                                    <td>Sensors</td>
                                                    <td>
                                                        <asp:Label ID="SensorsLabel" runat="server" Text='<%# Eval("Sensors") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Messaging</td>
                                                    <td>
                                                        <asp:Label ID="MessagingLabel" runat="server" Text='<%# Eval("Messaging") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Browser</td>
                                                    <td>
                                                        <asp:Label ID="BrowserLabel" runat="server" Text='<%# Eval("Browser") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Java</td>
                                                    <td>
                                                        <asp:Label ID="JavaLabel" runat="server" Text='<%# Eval("Java") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th>BATTERY</th>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="BatteryLabel" runat="server" Text='<%# Eval("Battery") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <th rowspan="2">MISC</th>
                                                    <td>Colors</td>
                                                    <td>
                                                        <asp:Label ID="ColorsLabel" runat="server" Text='<%# Eval("Colors") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Price group</td>
                                                    <td>
                                                        <asp:Label ID="Price_groupLabel" runat="server" Text='<%# Eval("PriceGroup") %>' /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="EXECUTE DeleteProcedure @Id" SelectCommand="SELECT * FROM [Mobiles]" UpdateCommand="EXECUTE UpdateProcedure @Id,@Name,@PictureDir,@Network,@Launch,@Battery,@Colors,@PriceGroup,@OS,@Chipset,@CPU,@GPU,@Dimensions,@Weight,@SIM,@_Primary,@Features,@Video,@_Secondary,@WLAN,@Bluetooth,@GPS,@Radio,@USB,@Type,@Size,@Resolution, @Multitouch,@Sensors,@Messaging,@Browser,@Java,@CardSlot,@Internal">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="PictureDir" />
                    <asp:Parameter Name="Network" />
                    <asp:Parameter Name="Launch" />
                    <asp:Parameter Name="Battery" />
                    <asp:Parameter Name="Colors" />
                    <asp:Parameter Name="PriceGroup" />
                    <asp:Parameter Name="OS" />
                    <asp:Parameter Name="Chipset" />
                    <asp:Parameter Name="CPU" />
                    <asp:Parameter Name="Dimensions" />
                    <asp:Parameter Name="GPU" />
                    <asp:Parameter Name="Weight" />
                    <asp:Parameter Name="SIM" />
                    <asp:Parameter Name="_Primary" />
                    <asp:Parameter Name="Features" />
                    <asp:Parameter Name="Video" />
                    <asp:Parameter Name="_Secondary" />
                    <asp:Parameter Name="WLAN" />
                    <asp:Parameter Name="Bluetooth" />
                    <asp:Parameter Name="GPS" />
                    <asp:Parameter Name="Radio" />
                    <asp:Parameter Name="USB" />
                    <asp:Parameter Name="Type" />
                    <asp:Parameter Name="Size" />
                    <asp:Parameter Name="Resolution" />
                    <asp:Parameter Name="Multitouch" />
                    <asp:Parameter Name="Sensors" />
                    <asp:Parameter Name="Messaging" />
                    <asp:Parameter Name="Browser" />
                    <asp:Parameter Name="Java" />
                    <asp:Parameter Name="Internal" />
                    <asp:Parameter Name="CardSlot" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
