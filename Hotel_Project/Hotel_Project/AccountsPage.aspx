<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AccountsPage.aspx.cs" Inherits="Hotel_Project.AccountsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 655px;
            height: 66px;
        }
        .auto-style3 {
            height: 66px;
        }
        .auto-style4 {
            width: 655px;
            height: 58px;
        }
        .auto-style5 {
            height: 58px;
        }
        .auto-style6 {
            width: 655px;
            height: 65px;
            vertical-align:top;
        }
        .auto-style7 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
            <td class="auto-style2">Cash In FLow</td>
            <td class="auto-style3">Expenditure&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRefresh" runat="server" BackColor="Red" ForeColor="White" Height="44px" OnClick="btnRefresh_Click" Text="Refresh" Width="134px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lblCashIn" runat="server" ForeColor="Green"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblCashOut" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="aid" DataSourceID="SqlDataSourceAccounts" ForeColor="#333333" GridLines="None" Width="527px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="aid" HeaderText="aid" InsertVisible="False" ReadOnly="True" SortExpression="aid" />
                        <asp:BoundField DataField="cRef" HeaderText="cRef" SortExpression="cRef" />
                        <asp:BoundField DataField="rNum" HeaderText="rNum" SortExpression="rNum" />
                        <asp:BoundField DataField="restBill" HeaderText="restBill" SortExpression="restBill" />
                        <asp:BoundField DataField="roomBill" HeaderText="roomBill" SortExpression="roomBill" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAccounts" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT * FROM [Accounts]"></asp:SqlDataSource>
            </td>
            <td class="auto-style7">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="eid" DataSourceID="SqlDataSourceExpenditure" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expTypeLabel" runat="server" Text='<%# Eval("expType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expAmountLabel" runat="server" Text='<%# Eval("expAmount") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="eidLabel1" runat="server" Text='<%# Eval("eid") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="expTypeTextBox" runat="server" Text='<%# Bind("expType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="expAmountTextBox" runat="server" Text='<%# Bind("expAmount") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="expTypeTextBox" runat="server" Text='<%# Bind("expType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="expAmountTextBox" runat="server" Text='<%# Bind("expAmount") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#DCDCDC;color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expTypeLabel" runat="server" Text='<%# Eval("expType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expAmountLabel" runat="server" Text='<%# Eval("expAmount") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                            <th runat="server"></th>
                                            <th runat="server">eid</th>
                                            <th runat="server">expType</th>
                                            <th runat="server">expAmount</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="eidLabel" runat="server" Text='<%# Eval("eid") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expTypeLabel" runat="server" Text='<%# Eval("expType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="expAmountLabel" runat="server" Text='<%# Eval("expAmount") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSourceExpenditure" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" DeleteCommand="DELETE FROM [Expenditure] WHERE [eid] = @eid" InsertCommand="INSERT INTO [Expenditure] ([expType], [expAmount]) VALUES (@expType, @expAmount)" SelectCommand="SELECT * FROM [Expenditure]" UpdateCommand="UPDATE [Expenditure] SET [expType] = @expType, [expAmount] = @expAmount WHERE [eid] = @eid">
                    <DeleteParameters>
                        <asp:Parameter Name="eid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="expType" Type="String" />
                        <asp:Parameter Name="expAmount" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="expType" Type="String" />
                        <asp:Parameter Name="expAmount" Type="Decimal" />
                        <asp:Parameter Name="eid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
