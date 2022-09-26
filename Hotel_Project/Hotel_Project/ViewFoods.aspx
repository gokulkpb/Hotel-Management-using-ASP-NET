<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="ViewFoods.aspx.cs" Inherits="Hotel_Project.ViewFoods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="bid" DataSourceID="SqlDataSourceViewFood">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
            </td>
            <td>
                <asp:Label ID="cRefLabel" runat="server" Text='<%# Eval("cRef") %>' />
            </td>
            <td>
                <asp:Label ID="RNumLabel" runat="server" Text='<%# Eval("RNum") %>' />
            </td>
            <td>
                <asp:Label ID="dateOfBillLabel" runat="server" Text='<%# Eval("dateOfBill") %>' />
            </td>
            <td>
                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
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
                <asp:Label ID="bidLabel1" runat="server" Text='<%# Eval("bid") %>' />
            </td>
            <td>
                <asp:TextBox ID="cRefTextBox" runat="server" Text='<%# Bind("cRef") %>' />
            </td>
            <td>
                <asp:TextBox ID="RNumTextBox" runat="server" Text='<%# Bind("RNum") %>' />
            </td>
            <td>
                <asp:TextBox ID="dateOfBillTextBox" runat="server" Text='<%# Bind("dateOfBill") %>' />
            </td>
            <td>
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
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
                <asp:TextBox ID="cRefTextBox" runat="server" Text='<%# Bind("cRef") %>' />
            </td>
            <td>
                <asp:TextBox ID="RNumTextBox" runat="server" Text='<%# Bind("RNum") %>' />
            </td>
            <td>
                <asp:TextBox ID="dateOfBillTextBox" runat="server" Text='<%# Bind("dateOfBill") %>' />
            </td>
            <td>
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
            </td>
            <td>
                <asp:Label ID="cRefLabel" runat="server" Text='<%# Eval("cRef") %>' />
            </td>
            <td>
                <asp:Label ID="RNumLabel" runat="server" Text='<%# Eval("RNum") %>' />
            </td>
            <td>
                <asp:Label ID="dateOfBillLabel" runat="server" Text='<%# Eval("dateOfBill") %>' />
            </td>
            <td>
                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
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
                            <th runat="server">bid</th>
                            <th runat="server">cRef</th>
                            <th runat="server">RNum</th>
                            <th runat="server">dateOfBill</th>
                            <th runat="server">amount</th>
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
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="bidLabel" runat="server" Text='<%# Eval("bid") %>' />
            </td>
            <td>
                <asp:Label ID="cRefLabel" runat="server" Text='<%# Eval("cRef") %>' />
            </td>
            <td>
                <asp:Label ID="RNumLabel" runat="server" Text='<%# Eval("RNum") %>' />
            </td>
            <td>
                <asp:Label ID="dateOfBillLabel" runat="server" Text='<%# Eval("dateOfBill") %>' />
            </td>
            <td>
                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSourceViewFood" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" DeleteCommand="DELETE FROM [FoodBill] WHERE [bid] = @bid" InsertCommand="INSERT INTO [FoodBill] ([cRef], [RNum], [dateOfBill], [amount]) VALUES (@cRef, @RNum, @dateOfBill, @amount)" SelectCommand="SELECT * FROM [FoodBill]" UpdateCommand="UPDATE [FoodBill] SET [cRef] = @cRef, [RNum] = @RNum, [dateOfBill] = @dateOfBill, [amount] = @amount WHERE [bid] = @bid">
    <DeleteParameters>
        <asp:Parameter Name="bid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="cRef" Type="Int32" />
        <asp:Parameter Name="RNum" Type="String" />
        <asp:Parameter Name="dateOfBill" Type="DateTime" />
        <asp:Parameter Name="amount" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="cRef" Type="Int32" />
        <asp:Parameter Name="RNum" Type="String" />
        <asp:Parameter Name="dateOfBill" Type="DateTime" />
        <asp:Parameter Name="amount" Type="Decimal" />
        <asp:Parameter Name="bid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
