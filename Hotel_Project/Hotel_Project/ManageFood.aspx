<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="ManageFood.aspx.cs" Inherits="Hotel_Project.ManageFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSourceManageFood" ForeColor="#333333" GridLines="None" Width="459px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
        <asp:BoundField DataField="fprice" HeaderText="fprice" SortExpression="fprice" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceManageFood" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString2 %>" DeleteCommand="DELETE FROM [Food] WHERE [fid] = @fid" InsertCommand="INSERT INTO [Food] ([fname], [fprice]) VALUES (@fname, @fprice)" SelectCommand="SELECT * FROM [Food]" UpdateCommand="UPDATE [Food] SET [fname] = @fname, [fprice] = @fprice WHERE [fid] = @fid">
    <DeleteParameters>
        <asp:Parameter Name="fid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="fname" Type="String" />
        <asp:Parameter Name="fprice" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="fname" Type="String" />
        <asp:Parameter Name="fprice" Type="Decimal" />
        <asp:Parameter Name="fid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
