<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reservation.aspx.cs" Inherits="AutoRent.reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoRent</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <<form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>Auto Rent</span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Vechles</a></li>
                        <li><a href="reservation.aspx"><span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>Sign Up</a></li>
                        <li><a href="Sign_In.aspx"><span class="glyphicon glyphicon-duplicate" aria-hidden="true"></span>Sign In</a></li>
                    </ul>
                    
    </div>
                </div>
            </div>
    <div class="container" style="margin-top: 70px">
        <div class="form-horizontal">
                <h2>Register</h2>
                <hr />
            </div>
            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" CssClass="form-control" Width="360px"></asp:TextBox>
            </div>
            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" CssClass="form-control" TextMode="Password" Width="360px"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" CssClass="form-control" TextMode="Password" Width="360px"></asp:TextBox>
            </div>
             
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" TextMode="Email" Width="360px"></asp:TextBox>
            </div>

            <div class="col-xs-11 space-vert">
                <asp:Button ID="btSignup" runat="server" CssClass="btn btn-success" Text="Sign Up" OnClick="btSignup_Click" />
                 <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
            </div>

        </div>
        <!-- Sign Up -->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
