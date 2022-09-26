<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Hotel_Project.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            
            width:22%;
            vertical-align:top;
        }
        .auto-style2 {
            width: 321px;
            vertical-align:top;
        }
        .auto-style3 {
            
        }
        .auto-style4 {
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main_content">

        <div class="header">"WE HAVE THE BEST SERVICE FOR YOU.."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>  

        <div class="info">
            Room Number :
            <asp:TextBox ID="txtRoom" runat="server" Height="35px" Width="192px"></asp:TextBox>
&nbsp;
            <asp:Button ID="btnRoom" runat="server" BackColor="#6600FF" ForeColor="White" Height="40px" OnClick="Button2_Click" Text="Check For Details" Width="188px" />
&nbsp;
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="w-100">
                <tr>
                    <td class="auto-style1"><strong>Customer Details</strong><asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="refno" DataSourceID="SqlDataSourceCDetails" GridLines="Horizontal">
                            <EditItemTemplate>
                                cname:
                                <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                                <br />
                                refno:
                                <asp:Label ID="refnoLabel1" runat="server" Text='<%# Eval("refno") %>' />
                                <br />
                                mobile:
                                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                                <br />
                                email:
                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                idtype:
                                <asp:TextBox ID="idtypeTextBox" runat="server" Text='<%# Bind("idtype") %>' />
                                <br />
                                idnum:
                                <asp:TextBox ID="idnumTextBox" runat="server" Text='<%# Bind("idnum") %>' />
                                <br />
                                checkin:
                                <asp:TextBox ID="checkinTextBox" runat="server" Text='<%# Bind("checkin") %>' />
                                <br />
                                roomnum:
                                <asp:TextBox ID="roomnumTextBox" runat="server" Text='<%# Bind("roomnum") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <InsertItemTemplate>
                                cname:
                                <asp:TextBox ID="cnameTextBox0" runat="server" Text='<%# Bind("cname") %>' />
                                <br />

                                mobile:
                                <asp:TextBox ID="mobileTextBox0" runat="server" Text='<%# Bind("mobile") %>' />
                                <br />
                                email:
                                <asp:TextBox ID="emailTextBox0" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                idtype:
                                <asp:TextBox ID="idtypeTextBox0" runat="server" Text='<%# Bind("idtype") %>' />
                                <br />
                                idnum:
                                <asp:TextBox ID="idnumTextBox0" runat="server" Text='<%# Bind("idnum") %>' />
                                <br />
                                checkin:
                                <asp:TextBox ID="checkinTextBox0" runat="server" Text='<%# Bind("checkin") %>' />
                                <br />
                                roomnum:
                                <asp:TextBox ID="roomnumTextBox0" runat="server" Text='<%# Bind("roomnum") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                cname:
                                <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                                <br />
                                refno:
                                <asp:Label ID="refnoLabel" runat="server" Text='<%# Eval("refno") %>' />
                                <br />
                                mobile:
                                <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
                                <br />
                                email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                idtype:
                                <asp:Label ID="idtypeLabel" runat="server" Text='<%# Bind("idtype") %>' />
                                <br />
                                idnum:
                                <asp:Label ID="idnumLabel" runat="server" Text='<%# Bind("idnum") %>' />
                                <br />
                                checkin:
                                <asp:Label ID="checkinLabel" runat="server" Text='<%# Bind("checkin") %>' />
                                <br />
                                roomnum:
                                <asp:Label ID="roomnumLabel" runat="server" Text='<%# Bind("roomnum") %>' />
                                <br />

                            </ItemTemplate>
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSourceCDetails" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT [cname], [refno], [mobile], [email], [idtype], [idnum], [checkin], [roomnum] FROM [customer] WHERE (([roomnum] = @roomnum) AND ([checkout] IS NULL))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtRoom" Name="roomnum" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style2"><span class="auto-style3"><strong>Restaurant Bill</strong></span><asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="295px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <strong>
                        Restaurant Total =
                        <asp:Label ID="lblRest" runat="server" ForeColor="#6600FF"></asp:Label>
                        <br />
                        </strong>
                    </td>
                    <td style="vertical-align:top;" class="auto-style4"><strong>Room Bill:
                        <br />
                        <asp:Label ID="lblRoomDays" runat="server" ForeColor="#6600FF"></asp:Label>
                        <br />
                        <asp:Label ID="lblRoomRent" runat="server" ForeColor="#6600FF"></asp:Label>
                        <br />
                        <asp:Label ID="lblRoomTotal" runat="server" ForeColor="#6600FF"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lblTotal" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:Button ID="btnCheckOut" runat="server" BackColor="#6600FF" ForeColor="White" Height="57px" OnClick="btnCheckOut_Click" Text="Confirm Check Out! " Width="206px" />
                    </td>
                </tr>
            </table>
            </div>
        </div>
</asp:Content>
