<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="Hotel_Project.AddRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 69px;
            width: 746px;
        }
        .auto-style9 {
            height: 62px;
            width: 149px;
        }
        .auto-style10 {
            height: 65px;
            width: 149px;
        }
        .auto-style13 {
            height: 61px;
            width: 149px;
        }
        .auto-style14 {
            height: 70px;
            width: 149px;
        }
        .auto-style16 {
            height: 69px;
            width: 19px;
        }
        .auto-style17 {
            height: 62px;
            width: 19px;
        }
        .auto-style18 {
            height: 65px;
            width: 19px;
        }
        .auto-style21 {
            height: 61px;
            width: 19px;
        }
        .auto-style22 {
            height: 70px;
            width: 19px;
        }
        .auto-style24 {
            height: 63px;
            width: 149px;
        }
        .auto-style25 {
            height: 63px;
            width: 19px;
        }
        .auto-style27 {
            height: 69px;
            width: 53px;
        }
        .auto-style28 {
            height: 62px;
            width: 53px;
        }
        .auto-style29 {
            height: 65px;
            width: 53px;
        }
        .auto-style30 {
            height: 61px;
            width: 53px;
        }
        .auto-style31 {
            height: 63px;
            width: 53px;
        }
        .auto-style32 {
            height: 70px;
            width: 53px;
        }
        .auto-style38 {
            width: 746px;
            vertical-align:top;
        }
        td{
            align-items:center;
        }
        .auto-style39 {
            height: 69px;
            width: 8px;
        }
        .auto-style41 {
            height: 69px;
            width: 149px;
        }
        .auto-style42 {
            width: 8px;
        }
        .auto-style43 {
            height: 64px;
            width: 149px;
        }
        .auto-style44 {
            height: 64px;
            width: 19px;
        }
        .auto-style45 {
            height: 64px;
            width: 53px;
        }
        .auto-style46 {
            margin-top: 0;
            margin-bottom: 38;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style41">Room Number</td>
        <td class="auto-style16">:</td>
        <td class="auto-style27">
            <asp:TextBox ID="txtRoomNum" runat="server" Height="46px" Width="234px" CssClass="offset-sm-0"></asp:TextBox>
        </td>
        <td class="auto-style39">&nbsp;</td>
        <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ROOM DETAILS&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">Room Type</td>
        <td class="auto-style17">:</td>
        <td class="auto-style28">
            <asp:TextBox ID="txtRoomType" runat="server" Height="46px" Width="234px"></asp:TextBox>
        </td>
        <td rowspan="5" class="auto-style42">
            &nbsp;</td>
        <td rowspan="6" class="auto-style38">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true" CellPadding="4" DataKeyNames="roomNum" DataSourceID="SqlDataSource1" GridLines="None" Height="187px" HorizontalAlign="Left" Width="606px" CssClass="auto-style46" CaptionAlign="Top" ForeColor="#333333" PageSize="7">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="roomNum" HeaderText="roomNum" ReadOnly="True" SortExpression="roomNum" />
                    <asp:BoundField DataField="roomtype" HeaderText="roomtype" SortExpression="roomtype" />
                    <asp:BoundField DataField="floornum" HeaderText="floornum" SortExpression="floornum" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="roomstatus" HeaderText="roomstatus" SortExpression="roomstatus" />
                </Columns>
                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT * FROM [Room] WHERE ([roomstatus] IS NOT NULL)"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">Floor Number</td>
        <td class="auto-style18">:</td>
        <td class="auto-style29">
            <asp:TextBox ID="txtFloor" runat="server" Height="46px" Width="234px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Rent </td>
        <td class="auto-style21">:</td>
        <td class="auto-style30">
            <asp:TextBox ID="txtRent" runat="server" Height="46px" Width="234px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style24">Room Status</td>
        <td class="auto-style25">:</td>
        <td class="auto-style31">
            <asp:TextBox ID="txtCount" runat="server" Height="46px" Width="234px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style43"></td>
        <td class="auto-style44"></td>
        <td class="auto-style45">
            <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="White" Height="59px" OnClick="Button1_Click" Text="Submit" Width="156px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style14"></td>
        <td class="auto-style22"></td>
        <td class="auto-style32">
            <asp:Label ID="LabelExep" runat="server" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style42">
            &nbsp;</td>
    </tr>
    </table>
&nbsp;
</asp:Content>
