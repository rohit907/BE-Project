<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportACrime.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    
         </div>
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="width: 255px">
                    <strong>Report a Crime</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    <span style="font-style: italic">Your Details</span></td>
                <td class="style2" style="width: 180px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="style3" style="font-size: large">
                    User
                    Name:</td>
                <td class="style2" style="width: 255px">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxName" ErrorMessage="*Name Required" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Address:</td>
                <td class="style2" style="width: 255px">
                    <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" 
                        Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxAddress" ErrorMessage="*Add Required" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Contact No:"></asp:Label>
                </td>
                <td class="style2" style="width: 255px">
                    <asp:TextBox ID="TextBoxCon" runat="server" Width="180px" Height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxCon" ErrorMessage="*Contact No. Required" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="width: 255px">
                    &nbsp;</td>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Victim Details"></asp:Label>
                
           
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Victim's Name"></asp:Label>
                    :</td>
                <td class="style2" style="width: 255px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="width: 255px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="style4">
                    </td>
                <td class="style5" style="width: 255px">
                    </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    <em>Crime Details</em></td>
                <td class="style2" style="width: 255px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="style3" style="font-size: large">
                    Location Of Crime:</td>
                <td class="style2" style="width: 255px">
                    <asp:DropDownList ID="Location" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="175px">
                        <asp:ListItem>Select Location</asp:ListItem>
                        <asp:ListItem>Ambadi Road</asp:ListItem>
                        <asp:ListItem>Anand Nagar</asp:ListItem>
                        <asp:ListItem>Manickpur</asp:ListItem>
                        <asp:ListItem>KT Village</asp:ListItem>
                        <asp:ListItem>Sai Nagar</asp:ListItem>
                        <asp:ListItem>Panchal Nagar</asp:ListItem>
                        <asp:ListItem>100ft Road</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="Location" ErrorMessage="*Location required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Type:</td>
                
                <td class="style2" style="width: 255px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="175px">
                        <asp:ListItem>Select type of crime</asp:ListItem>
                        <asp:ListItem>Eve Teasing</asp:ListItem>
                        <asp:ListItem>Murder</asp:ListItem>
                        <asp:ListItem>Robbery</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style7" style="font-size: large">
                    Date of incident:</td>
                <td class="style8" style="width: 255px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: medium">
                    </span> 
                    <asp:Calendar ID="Calendar" runat="server" 
                        onselectionchanged="Calendar_SelectionChanged" style="font-size: small"></asp:Calendar>
                </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style3" style="height: 67px">
                    </td>
                <td class="style2" style="height: 67px; width: 255px">
                    </td>
                <td style="height: 67px">
                    </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Evidence:</td>
                <td class="style2" style="width: 255px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Button ID="BUpload" runat="server" onclick="BUpload_Click" Text="Upload" />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="width: 255px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Criminal Details:</td>
                <td class="style2" style="width: 255px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Gender:</td>
                <td class="style2" style="width: 255px">
                    <asp:DropDownList ID="CGender" runat="server">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="CGender" ErrorMessage="*Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Age Group:</td>
                <td class="style2" style="width: 255px">
                    <asp:DropDownList ID="AgeGroup" runat="server">
                        <asp:ListItem>Select Age Group</asp:ListItem>
                        <asp:ListItem>Upto 12</asp:ListItem>
                        <asp:ListItem>13-18</asp:ListItem>
                        <asp:ListItem>19-35</asp:ListItem>
                        <asp:ListItem>36-50</asp:ListItem>
                        <asp:ListItem>50-65</asp:ListItem>
                        <asp:ListItem>65 Above</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="AgeGroup" ErrorMessage="*Age Group required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="font-size: large">
                    Name*( if known):</td>
                <td class="style2" style="width: 255px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style2" style="width: 255px">
                    <asp:Button ID="SubmitReport" runat="server" Text="Submit" 
                        onclick="SubmitReport_Click1" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Reset" />
                </td>
            </tr>
        </table>
    
    </div>
   
        </asp:Content>
