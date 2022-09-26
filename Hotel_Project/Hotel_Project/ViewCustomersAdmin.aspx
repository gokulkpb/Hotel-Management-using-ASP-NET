<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewCustomersAdmin.aspx.cs" Inherits="Hotel_Project.ViewCustomersAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;    All Customers

<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="refno" DataSourceID="SqlDataSourceCustomers" ForeColor="#333333" GridLines="None" Width="1580px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="refno" HeaderText="refno" InsertVisible="False" ReadOnly="True" SortExpression="refno" />
        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="addrs" HeaderText="addrs" SortExpression="addrs" />
        <asp:BoundField DataField="postcode" HeaderText="postcode" SortExpression="postcode" />
        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="nationality" HeaderText="nationality" SortExpression="nationality" />
        <asp:BoundField DataField="idtype" HeaderText="idtype" SortExpression="idtype" />
        <asp:BoundField DataField="idnum" HeaderText="idnum" SortExpression="idnum" />
        <asp:BoundField DataField="checkin" HeaderText="checkin" SortExpression="checkin" />
        <asp:BoundField DataField="checkout" HeaderText="checkout" SortExpression="checkout" />
        <asp:BoundField DataField="roomnum" HeaderText="roomnum" SortExpression="roomnum" />
        <asp:BoundField DataField="totalrent" HeaderText="totalrent" SortExpression="totalrent" />
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
<asp:SqlDataSource ID="SqlDataSourceCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString2 %>" SelectCommand="SELECT [refno], [cname], [gender], [addrs], [postcode], [mobile], [email], [nationality], [idtype], [idnum], [checkin], [checkout], [roomnum], [totalrent] FROM [customer]"></asp:SqlDataSource>
<br />

</asp:Content>
