<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Plogin.aspx.cs" Inherits="Plogin" %>

<!DOCTYPE html>

<html lang="en">
<head id="Head2" runat="server">
    <title>Login</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="Plogin.css" rel="stylesheet" />
</head>

    
<body>
    <form id="form1" runat="server">
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
                <%--<li class="nav-item">
                <a class="nav-link" href="#">ABOUT US</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
                </li>--%>
                </ul>
            </div>
        </nav>  

        <div class="main">

            <section>
                <div class="image_container">
                    <div class="img1"><asp:Image ID="login_img" runat="server" style="width: 360px" ImageUrl="~/Images/login.png"/></div>
                </div>
            </section>

            <aside class="rightside">
                <div class="loginbox">
                    <div class="one"><h1>LOGIN &ensp;</h1></div>
                    <div class="two"><asp:TextBox ID="PUname" runat="server" placeholder="enter email id"></asp:TextBox></div>
                    <div class="three"><asp:TextBox ID="PPwd" runat="server" placeholder="enter password" TextMode="Password"></asp:TextBox></div>
                    <div class="four"><asp:LinkButton ID="Plog" runat="server" CssClass="login_btn" OnClick="Plog_Click"><i class="fa fa-sign-in"></i>&nbsp; LOGIN</asp:LinkButton></div>
                    <asp:Label ID="Label2" runat="server" Text="Label" visible="false"></asp:Label><br>
                    <div class="five"><asp:Label ID="signupL" runat="server" Text="Label">Dont have an account? &ensp;</asp:Label><br></div>
                    <div class="six"><asp:LinkButton ID="signup" runat="server" OnClick="signup_Click" CssClass="signup_btn" >&nbsp; SIGN-UP</asp:LinkButton></div> 
                </div> 
            </aside>    
        </div>

        </div>
    </form>
</body>
</html>
























