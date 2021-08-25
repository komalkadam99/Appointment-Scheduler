<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookDoc1.aspx.cs" Inherits="BookDoc1" %>

<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link href="BookDoc2.css" rel="stylesheet" />
    <title>Book Your Appointment</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="wrapper">

            <div class="leftcol">
                <img src="images/p21_1.jpg" class="logo">
                <p>&ensp;<asp:Label ID="Label1" runat="server" Text="Hey, "></asp:Label>
                    <asp:Label ID="username" runat="server" Text="username"></asp:Label></p>
                <div class="content">
                    <label for="book"> Book your appointment now &ensp;<i class="fa fa-calendar-check-o"></i></label>
                    <asp:LinkButton ID="BtnSpc" runat="server" CssClass="btn btn-primary" OnClick="BtnSpc_Click"><i class="fa fa-check-circle"></i>&nbsp; Select Speciality</asp:LinkButton>
                    <asp:LinkButton ID="BtnD" runat="server" CssClass="btn btn-primary"><i class="fa fa-check-circle"></i>&nbsp; Select the Doctor</asp:LinkButton>
                    <asp:LinkButton ID="BtnT" runat="server" CssClass="btn btn-primary" OnClick="BtnT_Click"><i class="fa fa-check-circle"></i>&nbsp; Select date and time</asp:LinkButton>
                    <asp:Button ID="BtnBook" runat="server" Text="Book Appointment" CssClass="type2"/>
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
                <asp:Image ID="D1_Image" runat="server" CssClass="img1" />
                </div>
                
                    <div class="title">
                        <asp:Label ID="D1_Name" runat="server"  Text="Hey, "></asp:Label>
                        
                    </div>
                   <%-- <div class="discrp">
                        <asp:Label ID="D1_Info" runat="server"  Text="A dedicated and compassionate medical professional specialised in the field of Ear, Nose, Throat diseases."></asp:Label>
                       
                    </div>--%>
                <div class="spc1"><asp:LinkButton ID="D1_Btn" CssClass="spc" runat="server" OnClick="D1_Btn_Click">Select Doctor</asp:LinkButton></div>
                    
                </div>            

                <div class="card-box">
                <div class="img">
                <asp:Image ID="D2_Image" runat="server" CssClass="img1" />
                </div>
                    <div class="title">
                         <asp:Label ID="D2_Name" runat="server"  Text="Hey, "></asp:Label>
                        
                    </div>
                    <%--<div class="discrp">
                        <asp:Label ID="D2_Info" runat="server"  Text="slkccjljlkdcmdvmdkjvnkjdsdc.mdfkcjkvjdfjcdfoijvodfijvfodvhjcoidvjpivpefhipeveopveovohveohdfjkfefhkefkdjekfkehfkefhkehfkehkh"></asp:Label>
                    </div>--%>
                <div class="spc1"><asp:LinkButton ID="D2_Btn" runat="server" CssClass="spc" OnClick="D2_Btn_Click">Select Doctor</asp:LinkButton></div>
                </div>    

                <div class="card-box">
                <div class="img">
                <asp:Image ID="D3_Image" runat="server" CssClass="img1" />
                </div>
                    <div class="title">
                         <asp:Label ID="D3_Name" runat="server"  Text="Hey, "></asp:Label>
                        
                    </div>
                    <%--<div class="discrp">
                       <asp:Label ID="D3_Info" runat="server"  Text="slkccjljlkdcmdvmdkjvnkjdsdc.mdfkcjkvjdfjcdfoijvodfijvfodvhjcoidvjpivpefhipeveopveovohveohdfjkfefhkefkdjekfkehfkefhkehfkehkh"></asp:Label>
                       </div>--%>
                <div class="spc1"><asp:LinkButton ID="D3_Btn" runat="server" CssClass="spc" OnClick="D3_Btn_Click">Select Doctor</asp:LinkButton></div>
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
