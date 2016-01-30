<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserReports.aspx.cs" Inherits="UserReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSourceReport">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="Victim_Name" HeaderText="Victim_Name" 
                    SortExpression="Victim_Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" 
                    SortExpression="Location" />
                <asp:BoundField DataField="Type_c" HeaderText="Type_c" 
                    SortExpression="Type_c" />
                <asp:BoundField DataField="Date_c" HeaderText="Date_c" 
                    SortExpression="Date_c" />
                <asp:BoundField DataField="Gender_c" HeaderText="Gender_c" 
                    SortExpression="Gender_c" />
                <asp:BoundField DataField="Agegroup" HeaderText="Agegroup" 
                    SortExpression="Agegroup" />
                <asp:BoundField DataField="Name_c" HeaderText="Name_c" 
                    SortExpression="Name_c" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceReport" runat="server" 
            ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
            SelectCommand="SELECT * FROM [Report_Table]"></asp:SqlDataSource>
    
    </div>
    <asp:Button ID="BLogout" runat="server" onclick="BLogout_Click" Text="Logout" />
    </form>
</body>
</html>
