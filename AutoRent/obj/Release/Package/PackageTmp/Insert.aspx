<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="MobileArena.Insert" %>

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
                        <li class="active" id="insert" runat="server"><a href="Insert.aspx"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Insert</a></li>
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
            <asp:ListView ID="InsertMobile" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem" OnItemCommand="InsertMobile_ItemCommand">
                <InsertItemTemplate>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-success" />
                                </td>
                                <td></td>
                                <td>
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CausesValidation="false" CssClass="btn btn-danger" />
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
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Please select image" ControlToValidate="ImageUpload"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="(.*png$)|(.*jpg$)|(.*jpeg$)"
                                        ControlToValidate="ImageUpload" runat="server" ForeColor="Red" ErrorMessage="Please select a valid image file"
                                        Display="Dynamic" />
                                    <asp:TextBox ID="PictureDirTextBox" runat="server" Text='<%# Bind("PictureDir") %>' Visible="false"></asp:TextBox>
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
                </InsertItemTemplate>
                <ItemTemplate></ItemTemplate>
            </asp:ListView>


            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="EXECUTE InsertProcedure @Name,@PictureDir,@Network,@Launch,@Battery,@Colors,@PriceGroup,@OS,@Chipset,@CPU,@GPU,@Dimensions,@Weight,@SIM,@_Primary,@Features,@Video,@_Secondary,@WLAN,@Bluetooth,@GPS,@Radio,@USB,@Type,@Size,@Resolution, @Multitouch,@Sensors,@Messaging,@Browser,@Java,@CardSlot,@Internal">
                <InsertParameters>
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
                </InsertParameters>
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
