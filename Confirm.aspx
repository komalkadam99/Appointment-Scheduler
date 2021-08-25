<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="Confirm" %>

<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <title>Appointment Confirmed</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="Confirm.css" rel="stylesheet" />
</head>

    
<body>
    <form id="form2" runat="server">
    <div>
         <nav class="navbar navbar-expand-lg navbar-dark">
                <img src="images/p9.png">
                <h4>&ensp;APPOINTMENT SCHEDULER</h4>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"></button>
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto text-right">
                    <li class="nav-item">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="home1"><i class="fa fa-home"></i>&nbsp; Home</asp:LinkButton>
                    </li>
                    <li class="nav-item">
                    <asp:LinkButton ID="AptLogout" runat="server" CssClass="home1"><i class="fa fa-sign-out"></i>&nbsp; Logout</asp:LinkButton>
                    </li>
                </ul>
                </div>
                </nav> 

        <div class="main">
            <div class="title"> 
            <div class="title1">Appointment Confirmed! </div>
            </div>

            <div class="one">
                <asp:Label ID="DetQ1" runat="server" Text="Label">Pateint Name: &ensp;</asp:Label>
                <asp:Label ID="DetA1" runat="server" Text="Label">abcd lkjflkjfkjwhfkwhfljfehfnwohfu&ensp;</asp:Label>
            </div>

            <div class="two">
                <asp:Label ID="DetQ2" runat="server" Text="Label">Doctor Name: &ensp;</asp:Label>
                <asp:Label ID="DetA2" runat="server" Text="Label">abcd lkjflkjfkjwhfkwhfljfehfnwohfu&ensp;</asp:Label>
            </div>

            <div class="three">
                <asp:Label ID="DetQ3" runat="server" Text="Label">Speciality:  &ensp; &ensp; &ensp;</asp:Label>
                <asp:Label ID="DetA3" runat="server" Text="Label">abcd lkjflkjfkjwhfkwhfljfehfnwohfu&ensp;</asp:Label>
            </div>

            <div class="four">
                <asp:Label ID="DetQ4" runat="server" Text="Label">Date:&ensp; &ensp; &ensp; &ensp; &ensp; &ensp;</asp:Label>
                <asp:Label ID="DetA4" runat="server" Text="Label">12/12/2020 &ensp;</asp:Label>
            </div>

            <div class="five">
                <asp:Label ID="DetQ5" runat="server" Text="Label">Slot: &ensp; &ensp; &ensp; &ensp; &ensp; &ensp;</asp:Label>
                <asp:Label ID="DetA5" runat="server" Text="Label">10:20-10:40 &ensp;</asp:Label>
            </div>

            <div class="six">
                <asp:LinkButton ID="AptHome" runat="server" CssClass="home" OnClick="AptHome_Click"><i class="fa fa-home"></i>&nbsp; Home</asp:LinkButton>
            </div>
            
        </div>

        </div>
    </form>
</body>
</html>