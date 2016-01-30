<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
    <div style="font-weight: 700">
    
        <h2 style="text-align: center">
            User Login</h2>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <font size="4">UserName:</font></td>
            <td style="width: 69px">
                <asp:TextBox ID="TextBoxUserName" runat="server" Width="104px" 
                    ontextchanged="TextBoxUserName_TextChanged"></asp:TextBox>
            </td>
            <td dir="ltr">
            <font color="red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    Font-Size="10" ErrorMessage="*UserName Required" 
                    ControlToValidate="TextBoxUserName"></asp:RequiredFieldValidator>
            </font>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <font size="4">Password:</font></td>
            <td style="width: 69px">
                <asp:TextBox ID="TextBoxPassword" runat="server" 
                    ontextchanged="TextBox2_TextChanged" TextMode="Password" Width="104px"></asp:TextBox>
            </td>
            <td>
            
            <font color="red">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPassword" CssClass="style3" 
                    Font-Size="10" ErrorMessage="*Please Enter Passsword"></asp:RequiredFieldValidator>
            </font></td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style6" style="width: 69px">
                <asp:Button ID="Button_Login" runat="server" onclick="Button_Login_Click" 
                    style="height: 26px" Text="Login" />
            </td>
            <td class="style6">
                <font size="4"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User.. Register Here</asp:HyperLink></font>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="width: 69px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
    
        </asp:Content>

