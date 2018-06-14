<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_In.aspx.cs" Inherits="MobileArena.Sign_In1" %>

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
                        <li id="edit" runat="server"><a href="Edit.aspx"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>Edit</a></li>
                        <li id="signup" runat="server"><a href="Sign_Up.aspx"><span class="glyphicon glyphicon-registration-mark" aria-hidden="true"></span>Sign Up</a></li>
                        <li id="signin" runat="server" class="active"><a href="Sign_In.aspx"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>Sign In</a></li>
                    </ul>
                    <asp:Label runat="server" Text="logged off" ForeColor="Red" ID="LoginStatus"  CssClass="pull-right"></asp:Label>
                    <asp:Label runat="server" Text="Status:&nbsp" ID="Label3" CssClass="pull-right"></asp:Label>
                    <a runat="server" id="logoff" class="btn btn-danger pull-right"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>Log off</a>                 
                </div>
            </div>
        </div>
    <!--- Sign in start  -->
        <div class="container" style="margin-top:70px;">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                 <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <!--- Sign in end  -->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
