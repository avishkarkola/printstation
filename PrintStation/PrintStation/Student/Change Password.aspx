﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs" Inherits="PrintStation.Student.Change_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="accountsettings.css?<?php echo time(); ?>" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="icon" href="../Additional/images/PrintStation%20Favicon.png" />
    <title>Student - Change Password</title>

    <script>
         $(function () {
             $('[data-toggle="tooltip"]').tooltip()
         })
    </script>

</head>
<body>



    <div id="mininav" class="container-fluid">
            
            <div class="masthead clearfix">
            
                <div class="col-lg-12">
                    <div id="bringtofront" class="inner">
                        <img class="masthead-brand" src="../Additional/images/Manipal%20Logo.png" />

                        <a href="Dashboard.aspx"><img id="PSLogo" src="../Additional/images/PrintStation%20Mini%20Logo.png" /></a>
                    </div>
                </div>


            </div>

        </div>

        <div class="site-wrapper">
            <div class="site-wrapper-inner">
                <div class="cover-container">
            
                    <div class="inner cover">
                        <div class="wholedashboard">


                                  <div class="row">

                                    <div class="col-md-6 col-md-offset-3">
                                        <h1 id="whitetext1" class="cover-heading">Change<span style= "color: #FC622F">Password</span></h1>
                                    </div>

                                    <div class="col-md-3">
                                        <!-- Single button -->
                                        <div class="btn-group logoutposition">
                                          <button type="button" class="btn btn-default dropdown-toggle logoutbutton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Hey, <%:Session["Sname"]%> <span class="caret"></span>
                                          </button>
                                          <ul class="dropdown-menu logoutbutton">
                                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                                            <li><a href="Account Settings.aspx">Account Details</a></li>
                                            <li><a href="Cart.aspx">Shopping Cart</a></li>
                                            <li><a href="Card Payment.aspx">Recharge</a></li>
                                            <li role="separator" class="divider logoutsep"></li>
                                            <li><a href="../Login.aspx">Logout</a></li>
                                          </ul>
                                        </div>
                    
                                    </div>


                                    <div class="col-md-8 credpos">
                                        <asp:Label ID="Label1" runat="server" Text="Credits Remaining: " CssClass="remcredits"></asp:Label><%:Session["Scred"]%>
                                    </div>


                                </div>



                            <div class="student_dashboard">
                                    
                                    <form id="changepass" runat="server" defaultbutton="Button2">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h2>Current Password: </h2><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Field Empty" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="changepass"></asp:RequiredFieldValidator>                                                
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <h2>New Password:</h2><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Field Empty" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="changepass"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="btn btn-lg loginbutton cancelbutton" PostBackUrl="~/Student/Account Settings.aspx" />
                                            </div>
                                            <div class="col-md-4">
                                                <asp:Button ID="Button2" runat="server" Text="Confirm" CssClass="btn btn-lg loginbutton homebutton" ValidationGroup="changepass" OnClick="Button2_Click"/>
                                            </div>
                                        </div>
                                    </form>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>




</body>
</html>
