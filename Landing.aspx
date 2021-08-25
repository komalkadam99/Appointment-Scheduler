<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Landing" %>

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
    <link href="Landing2.css" rel="stylesheet" />
    <title>Appointment Successful</title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark">
                <img src="images/p9.png">
                <h4>&ensp;APPOINTMENT SCHEDULER</h4>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"></button>
                <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto text-right">
                    <li class="nav-item">
                    <asp:LinkButton ID="AptHome" runat="server" CssClass="home" OnClick="Page_Load"><i class="fa fa-home"></i>&nbsp; Home</asp:LinkButton>
                    </li>
                    <li class="nav-item">
                    <asp:LinkButton ID="AptLogout" runat="server" CssClass="home" OnClick="AptLogout_Click"><i class="fa fa-sign-out"></i>&nbsp; Logout</asp:LinkButton>
                    </li>
                </ul>
                </div>
                </nav>
            <div class="wrapper">

            <div class="leftcol">
                
                <div class="Pdetails"> 
                    <div class="title">
                        <asp:Label ID="Details" runat="server" Text="Label" CssClass="title_lbl"> Personal Details </asp:Label>
                    </div>
                    <div class="dets" id="dets">
                    <div class="container">
                    <div class="row">

                    <div class="col-md-2">
                        <div class="g_det"><asp:Label ID="Label1" runat="server" Text="Label"> Email: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label2" runat="server" Text="Label"> First name: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label3" runat="server" Text="Label"> Last name: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label5" runat="server" Text="Label"> Date of Birth: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label6" runat="server" Text="Label"> Gender: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label7" runat="server" Text="Label"> Blood Group: </asp:Label></div>
                        <div class="g_det"><asp:Label ID="Label8" runat="server" Text="Label"> Contact: </asp:Label></div>
                    </div>
                    <div class="col-md-2">
                        <div class="g1_det"><asp:Label ID="Label9" runat="server" Text="Label"> infosdndjshkelkjfvsdnskjfnjsfnjsnfsjknilouhou </asp:Label> </div>
                        <div class="g1_det"><asp:Label ID="Label10" runat="server" Text="Label"> infoskjcnkdjscjdchukhhhkuhckh </asp:Label></div>
                        <div class="g1_det"><asp:Label ID="Label11" runat="server" Text="Label"> info </asp:Label></div>
                        <div class="g1_det"><asp:Label ID="Label12" runat="server" Text="Label"> info </asp:Label></div>
                        <div class="g1_det"><asp:Label ID="Label13" runat="server" Text="Label"> info </asp:Label></div>
                        <div class="g1_det"><asp:Label ID="Label14" runat="server" Text="Label"> info </asp:Label></div>
                        <div class="g1_det"><asp:Label ID="Label15" runat="server" Text="Label"> info </asp:Label></div>
                    </div>

                    </div>
                    </div>
                    </div>
                 
                </div>
            </div> 
                
            <div class="rightcol">  
                <div class="lab"><asp:Label ID="apt" runat="server" Text="Label">YOUR APPOINTMENTS &ensp;</asp:Label></div>         
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnectionString %>" SelectCommand="SELECT [Doc_name], [Slot_name], [Spec_name], [A_date] FROM [AppointmentTable2] WHERE ([Pat_id] = @Pat_id2)">
            <SelectParameters>
                <asp:SessionParameter Name="Pat_id2" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                <div class="gdiv">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Horizontal" Width="535px" >
                     <Columns>
                        <asp:BoundField DataField="Doc_name" HeaderText="DOCTOR NAME" SortExpression="Doc_name" />
                        <asp:BoundField DataField="Slot_name" HeaderText="SLOT" SortExpression="Slot_name" />
                        <asp:BoundField DataField="Spec_name" HeaderText="SPECIALITY" SortExpression="Spec_name" />
                        <asp:BoundField DataField="A_date" DataFormatString="{0:d}" HeaderText="DATE" SortExpression="A_date" />
                    </Columns>
                     <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                     <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                     <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F7F7F7" />
                     <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                     <SortedDescendingCellStyle BackColor="#E5E5E5" />
                     <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    </div>

               <asp:LinkButton ID="BookApt" runat="server" OnClick="BookApt_Click" CssClass="Book"><i class="fa fa-plus"></i>&nbsp; Book New Appointment</asp:LinkButton>
                   

            </div>

                
            </div>
            </div>
        
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
