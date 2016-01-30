<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 58px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="LabelWelcome" runat="server" Text="Welcome   "></asp:Label>
    
    </div>
    <asp:Button ID="B_Logout" runat="server" onclick="Button1_Click" Text="Logout" 
        Height="26px" />
    </form>
</body>
</html>
