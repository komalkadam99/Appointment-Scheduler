<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DateSlot.aspx.cs" Inherits="DateSlot" %>

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
    <link href="DateSlot2.css" rel="stylesheet" />
    <title>Book Your Appointment</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="wrapper">

            <div class="leftcol">
                <img src="images/p21_1.jpg" class="logo">
                <p>&ensp;<label for="hey">Hey, &ensp;<asp:Label ID="username" runat="server" Text="username"></asp:Label></p>
                <div class="content">
                    <label for="book"> Book your appointment now &ensp;<i class="fa fa-calendar-check-o"></i></label>
                    <asp:LinkButton ID="BtnSpc" runat="server" CssClass="btn btn-primary" OnClick="BtnSpc_Click"><i class="fa fa-check-circle"></i>&nbsp; Select Speciality</asp:LinkButton>
                    <asp:LinkButton ID="BtnD" runat="server" CssClass="btn btn-primary" OnClick="BtnD_Click"><i class="fa fa-check-circle"></i>&nbsp; Select the Doctor</asp:LinkButton>
                    <asp:LinkButton ID="BtnT" runat="server" CssClass="btn btn-primary" ><i class="fa fa-check-circle"></i>&nbsp; Select date and time</asp:LinkButton>
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

                <section class="date">
                <%--<p class="selectD">Select Date &ensp;<i class="fa fa-calendar-check-o"></i></p>--%>
                <asp:Label ID="SDate" runat="server" cssClass="selectD" Text="Select Date  ">Select Date <i class="fa fa-calendar-check-o"></i></asp:Label>
                <asp:Calendar ID="Calendar1" runat="server" DayNameFormat="Shortest" class="table table-dark" Width="400px" BorderStyle="None" BackColor="White" ForeColor="Black" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="False">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" BorderStyle="None" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" VerticalAlign="Bottom" BorderStyle="None" />
                                <OtherMonthDayStyle ForeColor="#6900d1" BorderStyle="None"/> 
                                <DayStyle BorderStyle="None"></DayStyle>
                                <SelectorStyle BorderStyle="None"></SelectorStyle>                  
                                <TitleStyle BackColor="#6900d1" Font-Bold="True" Font-Size="16pt" ForeColor="white" BorderStyle="None" />
                                <%--<TodayDayStyle BackColor="#CCCCCC" />--%>
                               <%-- <BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" />--%>
                </asp:Calendar>
                    
                     
                </section>
                <aside class="part2">
                    <asp:Label ID="SLotLabel" runat="server" cssClass="selectT" Text="Select Time Slot  ">Select Time Slot <i class="fa fa-clock-o"></i></asp:Label>
                
                    
                <div class="slots" id="cards">
                <div class="container">
                <div class="row">

                <div class="col-md-2">
                   
                    
                    <div class="g_slot"><asp:linkbutton id="slot1" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot1_Click"><i class="fa fa-clock-o"></i>&nbsp; 10:00 - 10:20</asp:linkbutton></div>
                    <div class="g_slot"><asp:linkbutton id="slot2" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot2_Click"><i class="fa fa-clock-o"></i>&nbsp; 10:20 - 10:40</asp:linkbutton></div>
                    <div class="g_slot"><asp:linkbutton id="slot3" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot3_Click"><i class="fa fa-clock-o"></i>&nbsp; 10:40 - 11:00</asp:linkbutton></div>
                    <div class="g_slot"><asp:linkbutton id="slot4" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot4_Click"><i class="fa fa-clock-o"></i>&nbsp; 11:00 - 11:20</asp:linkbutton></div>

                  

                </div>

                <div class="col-md-2">
                    <div class="g1_slot"><asp:LinkButton ID="slot5" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot5_Click"><i class="fa fa-clock-o"></i>&nbsp; 11:20 - 11:40</asp:LinkButton></div>
                    <div class="g1_slot"><asp:LinkButton ID="slot6" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot6_Click"><i class="fa fa-clock-o"></i>&nbsp; 11:40 - 12:00</asp:LinkButton></div>
                    <div class="g1_slot"><asp:LinkButton ID="slot7" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot7_Click"><i class="fa fa-clock-o"></i>&nbsp; 12:00 - 12:20</asp:LinkButton></div>
                    <div class="g1_slot"><asp:LinkButton ID="slot8" runat="server" cssClass="selectedBtn" Enabled="false" OnClick="slot8_Click"><i class="fa fa-clock-o"></i>&nbsp; 12:20 - 12:40</asp:LinkButton></div>
                    
                </div>

                </div>
                </div>
                </div>

                <asp:LinkButton ID="Confirm" runat="server" CssClass="confirm" OnClick="Confirm_Click">CONFIRM</asp:LinkButton>
                
                </aside>              
              
            </div>
            </div>
            </div>
        
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

