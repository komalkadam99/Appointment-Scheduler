<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <title>Appointment Management System</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section class="main">
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark">
        <img src="Images/p9.png">
          <h4>&ensp; APPOINTMENT SCHEDULER</h4>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false">
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto text-right">
            <li class="nav-item">
            <%--<a class="nav-link" href="#">HOME</a>--%>
            <asp:HyperLink ID="HomeLink" CssClass="nav-link" runat="server" NavigateUrl="~/Index.aspx">HOME</asp:HyperLink>
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
        
    <div class="row banner">
        <div class="col-md-6">
            <h1>DO YOU STILL WAIT IN <br> QUEUES?</h1>
            <p>Appointment Scheduler helps people to manage their appointments with doctors without having to stay in QUEUES.</p>
            <%--<button type="button" class="btn btn-primary">PATIENT LOGIN</button>--%>
            <asp:Button ID="PloginBtn" CssClass="home" runat="server" Text="PATIENT LOGIN" OnClick="PloginBtn_Click" />
            <%--<asp:Button ID="ALoginBtn" CssClass="home" runat="server" Text="ADMIN LOGIN" OnClick="AloginBtn_Click"/>--%>
            <%--<button type="button" class="btn btn-primary">ADMIN LOGIN</button>--%> <br><br>
            <label for="name">Don't have an account? &ensp;</label>
            <asp:HyperLink ID="SignupLink" runat="server" NavigateUrl="~/Preg.aspx">SIGN-UP</asp:HyperLink>
            <%--<a href="#">SIGN-UP</a>--%>
            
            
            
        </div>    
        <div class="col-md-6 text-center">
            <img src="images/p5.png" class="img-fluid">
        </div>    
    </div>     
        
    </div>
    </section>    
    </div>
    </form>
</body>
</html>
