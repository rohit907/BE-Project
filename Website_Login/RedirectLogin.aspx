<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RedirectLogin.aspx.cs" Inherits="RedirectLogin" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
    
        <asp:Label ID="Label1" runat="server" 
            Text="Please Login to Report a Crime      "></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click Here</asp:HyperLink>
    
    </div>
    
        </asp:Content>


