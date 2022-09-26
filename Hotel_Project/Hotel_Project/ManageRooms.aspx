<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageRooms.aspx.cs" Inherits="Hotel_Project.ManageRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" DeleteCommand="DELETE FROM [Room] WHERE [roomNum] = @original_roomNum" InsertCommand="INSERT INTO [Room] ([roomNum], [roomtype], [floornum], [price], [roomstatus]) VALUES (@roomNum, @roomtype, @floornum, @price, @roomstatus)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [roomtype] = @roomtype, [floornum] = @floornum, [price] = @price, [roomstatus] = @roomstatus WHERE [roomNum] = @original_roomNum">
    <DeleteParameters>
        <asp:Parameter Name="original_roomNum" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="roomNum" Type="String" />
        <asp:Parameter Name="roomtype" Type="String" />
        <asp:Parameter Name="floornum" Type="Int32" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="roomstatus" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="roomtype" Type="String" />
        <asp:Parameter Name="floornum" Type="Int32" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="roomstatus" Type="Int32" />
        <asp:Parameter Name="original_roomNum" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="roomNum" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="roomNumLabel" runat="server" Text='<%# Eval("roomNum") %>' />
            </td>
            <td>
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
            </td>
            <td>
                <asp:Label ID="floornumLabel" runat="server" Text='<%# Eval("floornum") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="roomstatusLabel" runat="server" Text='<%# Eval("roomstatus") %>' />
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
                <asp:Label ID="roomNumLabel1" runat="server" Text='<%# Eval("roomNum") %>' />
            </td>
            <td>
                <asp:TextBox ID="roomtypeTextBox" runat="server" Text='<%# Bind("roomtype") %>' />
            </td>
            <td>
                <asp:TextBox ID="floornumTextBox" runat="server" Text='<%# Bind("floornum") %>' />
            </td>
            <td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            </td>
            <td>
                <asp:TextBox ID="roomstatusTextBox" runat="server" Text='<%# Bind("roomstatus") %>' />
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
            <td>
                <asp:TextBox ID="roomNumTextBox" runat="server" Text='<%# Bind("roomNum") %>' />
            </td>
            <td>
                <asp:TextBox ID="roomtypeTextBox" runat="server" Text='<%# Bind("roomtype") %>' />
            </td>
            <td>
                <asp:TextBox ID="floornumTextBox" runat="server" Text='<%# Bind("floornum") %>' />
            </td>
            <td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            </td>
            <td>
                <asp:TextBox ID="roomstatusTextBox" runat="server" Text='<%# Bind("roomstatus") %>' />
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
                <asp:Label ID="roomNumLabel" runat="server" Text='<%# Eval("roomNum") %>' />
            </td>
            <td>
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
            </td>
            <td>
                <asp:Label ID="floornumLabel" runat="server" Text='<%# Eval("floornum") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="roomstatusLabel" runat="server" Text='<%# Eval("roomstatus") %>' />
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
                            <th runat="server">roomNum</th>
                            <th runat="server">roomtype</th>
                            <th runat="server">floornum</th>
                            <th runat="server">price</th>
                            <th runat="server">roomstatus</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
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
                <asp:Label ID="roomNumLabel" runat="server" Text='<%# Eval("roomNum") %>' />
            </td>
            <td>
                <asp:Label ID="roomtypeLabel" runat="server" Text='<%# Eval("roomtype") %>' />
            </td>
            <td>
                <asp:Label ID="floornumLabel" runat="server" Text='<%# Eval("floornum") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="roomstatusLabel" runat="server" Text='<%# Eval("roomstatus") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>

</asp:Content>
