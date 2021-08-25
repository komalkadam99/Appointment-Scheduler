<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookingDemo.aspx.cs" Inherits="BookingDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DASConnectionString %>" SelectCommand="SELECT * FROM [DoctorTable2]" ></asp:SqlDataSource>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="D_fname" DataValueField="D_id">
        </asp:DropDownList>
        <br />
        <asp:Image ID="Image1" runat="server" Height="179px" Width="208px" />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&amp;-+=()])(?=\\S+$).{8, 20}$"></asp:RegularExpressionValidator>
        <br />
        <asp:Calendar ID="Calendar1" runat="server" ></asp:Calendar>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="D_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="D_id" HeaderText="DOCTOR ID" InsertVisible="False" ReadOnly="True" SortExpression="D_id" />
                <asp:BoundField DataField="D_fname" HeaderText="D_fname" SortExpression="D_fname" />
                <asp:BoundField DataField="D_lname" HeaderText="D_lname" SortExpression="D_lname" />
                <asp:BoundField DataField="D_spec" HeaderText="D_spec" SortExpression="D_spec" />
                <asp:BoundField DataField="D_img" HeaderText="D_img" SortExpression="D_img" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" Enabled="False" OnClick="Button2_Click" Text="Button" />
        <br />
        <br />
        
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="A_id" OnRowDeleting="GridView2_RowDeleting">
           <%-- <Columns>
                <asp:TemplateField HeaderText="A_id">  
                            <ItemTemplate>  
                                <asp:Label ID="lblstid" runat="server" Text='<%#Eval ("A_id")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Doc_name">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Doc_name")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Slot_name">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtClassName" runat="server" Text='<%#Eval ("Slot_name") %>'></asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="A_date">  
                            <ItemTemplate>  
                                <asp:TextBox ID="txtRollNo" runat="server" Text='<%#Eval ("A_date")%>'> </asp:TextBox>  
                            </ItemTemplate>  
                        </asp:TemplateField>  --%>
            <%--</Columns>--%>
        </asp:GridView>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="Email Id is required"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownList4" ControlToValidate="DropDownList3" Display="Dynamic" ErrorMessage="Re-typed password does not match"></asp:CompareValidator>
        <br />
    
    </div>
        <p>
            
        </p>
    </form>
</body>
</html>
