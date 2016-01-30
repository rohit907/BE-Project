<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style4" width="25" style="font-size: 20px">
                Username:</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" CssClass="style7" 
                    ErrorMessage="*User Name Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" width="25">
                Email:</td>
            <td class="style13">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="*Enter a valid Email ID" style="color: #FF0000" 
                    ControlToValidate="TextBoxEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" CssClass="style7" 
                    ErrorMessage="*Email Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" width="25">
                Password:</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxPass" runat="server" 
                    ontextchanged="TextBox3_TextChanged" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPass" CssClass="style7" 
                    ErrorMessage="*Password Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" width="25">
                Confirm Password:</td>
            <td class="style13">
                <asp:TextBox ID="TextBoxCPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxCPass" CssClass="style7" 
                    ErrorMessage="*Confirm Your Password"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="TextBoxCPass" ErrorMessage="*Both Passwords must be same" 
                    style="color: #FF0000" ControlToCompare="TextBoxPass"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" width="25">
                Area:</td>
            <td class="style13">
                <asp:DropDownList ID="DropDownListArea" runat="server" Width="180px">
                    <asp:ListItem>Select your Area</asp:ListItem>
                    <asp:ListItem>SVP road</asp:ListItem>
                    <asp:ListItem>Link Road</asp:ListItem>
                    <asp:ListItem>IC Colony</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListArea" CssClass="style7" 
                    ErrorMessage="*Select Area" InitialValue="Select your Area"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" width="25">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    style="height: 26px" />
                <input id="Reset1" type="reset" value="Reset" /></td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" width="25">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
        </asp:Content>

