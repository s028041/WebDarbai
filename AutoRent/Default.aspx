<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="AutoRent._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head;
        any other head content must come *after* these tags -->
    <title>ReservationForm</title>

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
                    <a class="navbar-brand" href="Default.aspx"><span>Auto Rent</span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Vechles</a></li>
                    </ul>
                                    
                </div>
            </div>
        </div>
    <!--- RESERVATION FORM  -->
        <div class="container" style="margin-top:70px;">
            <div class="form-horizontal">
                <h2>Please fill up the Form</h2>
                <hr />
                 

            <label class="col-xs-11">First Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUname" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>
            <label class="col-xs-11">Last Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbLast" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>

            <label class="col-xs-11">Phone Number</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPhone" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
            </div>

                <label class="col-xs-11">Select Your Car</label>
                <div class="col-xs-11">
                <asp:DropDownList ID="CarList"  runat="server" CssClass="form-control" Width="500px" ></asp:DropDownList>
                    </div>
                   <label class="col-xs-11">Price Per Day</label>
                    <div class="col-xs-11">
                    <asp:DropDownList ID="PriceList" runat="server" CssClass="form-control" Width="500px" ></asp:DropDownList>
                    </div>
                <br/><br/>
                    <div class="col-xs-11 space-vert">
                    <asp:Button ID="btnConfirm" Text="Confirm" runat="server" CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
                        <asp:Label ID="Msg" runat="server" ForeColor="Red" ></asp:Label>
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