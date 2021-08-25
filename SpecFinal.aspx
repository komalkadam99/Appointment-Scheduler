<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SpecFinal.aspx.cs" Inherits="SpecFinal" %>

<!DOCTYPE html>


<html lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link href="spcfinal2.css" rel="stylesheet" />
    <title>Book Your Appointment</title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <div class="wrapper">

            <div class="leftcol">
                <img src="images/p21_1.jpg" class="logo">
                <p>&ensp;<asp:Label ID="Label1" runat="server" Text="Hey, "></asp:Label>
                    <asp:Label ID="username1" runat="server" Text="username"></asp:Label></p>
                <div class="content">
                    <label for="book"> Book your appointment now &ensp;<i class="fa fa-calendar-check-o"></i></label>
                    <asp:LinkButton ID="BtnSpc" runat="server" CssClass="btn btn-primary"><i class="fa fa-check-circle"></i>&nbsp; Select Speciality</asp:LinkButton>
                    <asp:LinkButton ID="BtnD" runat="server" CssClass="btn btn-primary" OnClick="BtnD_Click"><i class="fa fa-check-circle"></i>&nbsp; Select the Doctor</asp:LinkButton>
                    <asp:LinkButton ID="BtnT" runat="server" CssClass="btn btn-primary" OnClick="BtnT_Click"><i class="fa fa-check-circle"></i>&nbsp; Select date and time</asp:LinkButton>
                    <asp:Button ID="BtnBook" runat="server" Text="Book Appointment" CssClass="type2" OnClick="BtnBook_Click"/>
                </div>
            </div> 
                
            <div class="rightcol">

                <nav class="navbar navbar-expand-lg navbar-dark">
                <img src="images/p9.png">
                <h4>&ensp;APPOINTMENT SCHEDULER</h4>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"></button>
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto text-right">
                    <li class="nav-item">
                    <asp:LinkButton ID="AptHome" runat="server" CssClass="home" OnClick="AptHome_Click"><i class="fa fa-home"></i>&nbsp; Home</asp:LinkButton>
                    </li>
                    <li class="nav-item">
                    <asp:LinkButton ID="AptLogout" runat="server" CssClass="home" OnClick="AptLogout_Click"><i class="fa fa-sign-out"></i>&nbsp; Logout</asp:LinkButton>
                    </li>
                </ul>
                </div>
                </nav> 

                <div class="cards" id="cards">
                <div class="container">
                <div class="row">

                <div class="card-box">
                <div class="img">
                <img src="images/pi1.png">
                </div>
                <div class="spc1"><asp:LinkButton ID="cardiology" runat="server" CssClass="spc" OnClick="cardiology_Click">Cardiology</asp:LinkButton></div>
                </div>            

                <div class="card-box">
                <div class="img">
                <img src="images/pi2.png">
                </div>
                <div class="spc1"><asp:LinkButton ID="gynaecology" runat="server" CssClass="spc" OnClick="gynaecology_Click">Gynaecology</asp:LinkButton></div>
                </div>    

                <div class="card-box">
                <div class="img">
                <img src="images/pi3.png">
                </div>
                <div class="spc1"><asp:LinkButton ID="dentistry" runat="server" CssClass="spc" OnClick="dentistry_Click">Dentistry</asp:LinkButton></div>
                </div>    
                
                <div class="card-box">
                <div class="img">
                <img src="images/pi4.png">
                </div>
                <div class="spc1"><asp:LinkButton ID="general" runat="server" CssClass="spc" OnClick="general_Click">General Physician</asp:LinkButton></div>
                </div>    

                <div class="card-box">
                <div class="img">
                <img src="images/pi5.png">
                </div>
                <div class="spc1"><asp:LinkButton ID="ent" runat="server" CssClass="spc" OnClick="ent_Click">ENT</asp:LinkButton></div>
                </div>    

                <div class="card-box">
                <div class="img">
                <img src="images/pi7.PNG">
                </div>
                <div class="spc1"><asp:LinkButton ID="dermat" runat="server" CssClass="spc" OnClick="dermat_Click">Dermatology</asp:LinkButton></div>
                </div>
                
                </div>
                </div>
                </div>
            
            </div>
            </div>

        </div>
    </form>
</body>
</html>

