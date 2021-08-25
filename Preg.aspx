<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Preg.aspx.cs" Inherits="Preg" %>



<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <title>Sign-Up</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="Preg2.css" rel="stylesheet" />
</head>

    
<body>
    <form id="form2" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <img src="images/p9.png">
            <h4>&ensp; APPOINTMENT SCHEDULER</h4>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false">
            </button>
            <div class="collapse navbar-collapse" id="Div1">
                <ul class="navbar-nav ml-auto text-right">
                <li class="nav-item">
                <asp:HyperLink ID="HyperLink1" CssClass="nav-link" runat="server" NavigateUrl="~/Index.aspx">HOME</asp:HyperLink>
                </li>
               <%-- <li class="nav-item">
                <a class="nav-link" href="#">ABOUT US</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
                </li>--%>
                </ul>
            </div>
        </nav>  

        <div class="main">
            <div class="title"> 
            <div class="title1">ENTER THE DETAILS </div>
            </div>
            <section>
                
                <div class="signinbox"> 
                    <div class="one"><asp:TextBox ID="Pemail" runat="server" placeholder="Email"></asp:TextBox></div>
                    <div class="eleven"><asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="Pemail" Display="Dynamic" ErrorMessage="Email Id is required"></asp:RequiredFieldValidator></div>
                    <div class="eleven"><asp:RegularExpressionValidator ID="REV1" runat="server" ControlToValidate="Pemail" Display="Dynamic" ErrorMessage="Please enter a valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
                    <div class="two"><asp:TextBox ID="Pfname" runat="server" placeholder="First Name"></asp:TextBox></div>
                    <div class="eleven"><asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="Pfname" Display="Dynamic" ErrorMessage="First Name required"></asp:RequiredFieldValidator></div>
                    <div class="eleven"><asp:RegularExpressionValidator ID="REV2" runat="server" ErrorMessage="Enter characters only" ControlToValidate="Pfname" Display="Dynamic" ForeColor="Red" ValidationExpression="^[a-zA-Z].*[\s\.]*$"></asp:RegularExpressionValidator></div>
                    <div class="three"><asp:TextBox ID="Plname" runat="server" placeholder="Last Name"></asp:TextBox></div>
              
                    <div class="eleven"><asp:RequiredFieldValidator ID="RFV3" runat="server" ControlToValidate="Plname" Display="Dynamic" ErrorMessage="Last Name required"></asp:RequiredFieldValidator></div>
                    <div class="eleven"><asp:RegularExpressionValidator ID="REV3" runat="server" ErrorMessage="Enter characters only" ControlToValidate="Pfname" Display="Dynamic" ForeColor="Red" ValidationExpression="^[a-zA-Z].*[\s\.]*$"></asp:RegularExpressionValidator></div>
                    
                    <div class="four"><asp:TextBox ID="Ppwd" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox></div>
                    <div class="eleven"><asp:RequiredFieldValidator ID="RFV4" runat="server" ControlToValidate="Ppwd" Display="Dynamic" ErrorMessage="Password required"></asp:RequiredFieldValidator></div>
                    <div class="five"><asp:TextBox ID="repass" runat="server" placeholder="Re-enter Password" TextMode="Password"></asp:TextBox></div>
                    <div class="eleven"><asp:RequiredFieldValidator ID="RFV5" runat="server" ControlToValidate="repass" Display="Dynamic" ErrorMessage="Please Re-type password"></asp:RequiredFieldValidator></div>
                    <div class="eleven"><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Ppwd" ControlToValidate="repass" Display="Dynamic" ErrorMessage="Re-typed password does not match"></asp:CompareValidator></div>
                </div> 
            </section>

            <aside class="rightside">

                <div class="signinbox"> 
                    <div class="six"><asp:DropDownList ID="Pgender" runat="server" placeholder="gender" BackColor="#C6C5C8" Width="185px" Height="35px" CssClass="six">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="O">Other</asp:ListItem>
                    </asp:DropDownList></div>
                    
                    <div class="seven3"><asp:TextBox ID="Pdob" runat="server" placeholder="Date of Birth" TextMode="Date" BorderStyle="None"></asp:TextBox></div>
                     <div class="eleven"><asp:RequiredFieldValidator ID="RFV6" runat="server" ControlToValidate="Pdob" Display="Dynamic" ErrorMessage="DOB required"></asp:RequiredFieldValidator></div>
                    
                    <div class="eight"><asp:DropDownList ID="Pbg" runat="server" placeholder="Blood Group" BackColor="#C6C5C8" Width="185px" Height="35px" CssClass="eight">
                        <asp:ListItem Value="M">A+</asp:ListItem>
                        <asp:ListItem Value="F">A-</asp:ListItem>
                        <asp:ListItem Value="O">B+</asp:ListItem>
                        <asp:ListItem Value="O">B-</asp:ListItem>
                        <asp:ListItem Value="O">AB+</asp:ListItem>
                        <asp:ListItem Value="O">AB-</asp:ListItem>
                        <asp:ListItem Value="O">O+</asp:ListItem>
                        <asp:ListItem Value="O">O-</asp:ListItem>
                    </asp:DropDownList></div>
                    
                    <div class="nine"><asp:TextBox ID="Pcontact" runat="server" placeholder="Contact"></asp:TextBox></div>
                     <div class="eleven"><asp:RequiredFieldValidator ID="RFV7" runat="server" ControlToValidate="Pcontact" Display="Dynamic" ErrorMessage="Contact number required"></asp:RequiredFieldValidator></div>
                    <div class="eleven"><asp:RegularExpressionValidator ID="REV4" runat="server" ErrorMessage="Enter numbers only" ControlToValidate="Pcontact" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator></div>
                    <div class="ten"><asp:LinkButton ID="SignupBtn" runat="server" CssClass="signin_btn" OnClick="SignupBtn_Click"><i class="fa fa-sign-in"></i>&nbsp; SIGN-UP</asp:LinkButton></div>
                    <div class="eleven"><asp:Label ID="SStat" runat="server" Text="Label" Visible="false"></asp:Label></div>
                </div>
            </aside>    
        </div>

        </div>
        
    </form>
</body>
</html>



















