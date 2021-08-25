<asp:sqldatasource runat="server" ConnectionString="<%$ ConnectionStrings:DASConnectionString %>" SelectCommand="SELECT [P_id], [P_email], [P_fname], [P_lname] FROM [PatientTable]"></asp:sqldatasource>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample.aspx.cs" Inherits="Sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
        <br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <input id="Password1" type="password" /><br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="214px" Width="231px" />
        <br />
        </div>
    </form>
</body>
</html>
