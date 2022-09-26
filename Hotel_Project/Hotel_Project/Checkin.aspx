<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkin.aspx.cs" Inherits="Hotel_Project.Checkin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 224px;
        height: 69px;
    }
        .auto-style4 {
            width: 12px;
            height: 69px;
        }
        .auto-style47 {
        width: 1093px;
    }
    .auto-style48 {
        width: 210px;
    }
    .auto-style49 {
        height: 69px;
        width: 165px;
    }
    .auto-style50 {
        width: 13px;
        height: 69px;
    }
    .auto-style56 {
        width: 114px;
    }
    .auto-style57 {
        width: 13px;
    }
    .auto-style58 {
        width: 165px;
    }
    .auto-style59 {
        width: 210px;
        height: 69px;
    }
    .auto-style62 {
        width: 224px;
        height: 51px;
    }
    .auto-style63 {
        width: 12px;
        height: 51px;
    }
    .auto-style64 {
        width: 210px;
        height: 51px;
    }
    .auto-style65 {
        width: 165px;
        height: 51px;
    }
    .auto-style66 {
        width: 13px;
        height: 51px;
    }
    .auto-style67 {
        width: 114px;
        height: 51px;
    }
    .auto-style68 {
        width: 114px;
        height: 39px;
    }
    .auto-style69 {
        width: 224px;
        height: 39px;
    }
    .auto-style70 {
        width: 12px;
        height: 39px;
    }
    .auto-style71 {
        width: 210px;
        height: 39px;
    }
    .auto-style72 {
        height: 39px;
        width: 165px;
    }
    .auto-style73 {
        width: 13px;
        height: 39px;
    }
        .auto-style74 {
            height: 69px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main_content">

        <div class="header">"WE HAVE THE BEST SERVICE FOR YOU.."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="43px" Text="Submit" Width="154px" OnClick="Button1_Click" BackColor="#6600FF" ForeColor="White" />
                </div>  

        <div class="info">
 
    <table class="auto-style47">
        <tr>
            <td class="auto-style2">Name</td>
            <td class="auto-style4">:</td>
            <td class="auto-style59">
                <asp:TextBox ID="txtName" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style69">Email</td>
            <td class="auto-style70">:</td>
            <td class="auto-style71">
                <asp:TextBox ID="txtEmail" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td class="auto-style4">:</td>
            <td class="auto-style59">
                <asp:DropDownList ID="DropDownListGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem Value="Female"></asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style62">ID Type</td>
            <td class="auto-style63">:</td>
            <td class="auto-style64">
                <asp:DropDownList ID="ddlID" runat="server">
                    <asp:ListItem Value="Aadhar"></asp:ListItem>
                    <asp:ListItem Value="DL">Driving Liscence</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td class="auto-style4">:</td>
            <td class="auto-style59">
                <asp:TextBox ID="txtAddress" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">ID No</td>
            <td class="auto-style4">:</td>
            <td class="auto-style48">
                <asp:TextBox ID="txtIdNum" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtIdNum"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SqlDataSourceForRoomRent" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT [price] FROM [Room] WHERE ([roomtype] = @roomtype)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlRoom" Name="roomtype" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Postal Code</td>
            <td class="auto-style4">:</td>
            <td class="auto-style59">
                <asp:TextBox ID="txtPost" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtPost"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style49">Check In Date</td>
            <td class="auto-style50">:</td>
            <td class="auto-style74">
                <asp:TextBox ID="txtDate" runat="server" Height="36px" Width="235px" TextMode="DateTimeLocal"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Nationality</td>
            <td class="auto-style4">:</td>
            <td class="auto-style48">
                <asp:TextBox ID="txtNation" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtNation"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style49">Type of Room</td>
            <td class="auto-style50">:</td>
            <td>
                <asp:DropDownList ID="ddlRoom" runat="server" DataSourceID="SqlDataSourceRoomType" DataTextField="roomtype" DataValueField="roomtype" OnSelectedIndexChanged="ddlRoom_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceRoomType" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT [roomtype] FROM [Room] WHERE ([roomstatus] IS NOT NULL)"></asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="ddlRoom"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#6600FF" ForeColor="White" Height="25px" OnClick="Button2_Click" Text="-" Width="38px" />
&nbsp;<asp:FormView ID="FormView1" runat="server" Font-Size="Small" DataSourceID="SqlDataSourceForRoomRent" ForeColor="#333333" CellPadding="4">
                    <EditItemTemplate>
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                    </ItemTemplate>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:FormView>
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Mobile</td>
            <td class="auto-style4">:</td>
            <td class="auto-style48">
                <asp:TextBox ID="txtMobile" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style49">No: of Days</td>
            <td class="auto-style50">:</td>
            <td>
                <asp:TextBox ID="txtDays" runat="server" Height="36px" Width="235px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required" ForeColor="Red" Font-Size="xx-small" ControlToValidate="txtDays"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style69">&nbsp;</td>
            <td class="auto-style70">&nbsp;</td>
            <td class="auto-style71">
                &nbsp;</td>
            <td class="auto-style72">
                </td>
            <td class="auto-style73">
                </td>
            <td class="auto-style68">
                </td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style64">
                &nbsp;</td>
            <td class="auto-style65">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            <td class="auto-style66">
                </td>
            <td class="auto-style67">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style48">
                &nbsp;</td>
            <td class="auto-style58">
                &nbsp;</td>
            <td class="auto-style57">
                &nbsp;</td>
            <td class="auto-style56">
                &nbsp;</td>
        </tr>
        </table>
               </div>
</div> 
            
        

</asp:Content>
