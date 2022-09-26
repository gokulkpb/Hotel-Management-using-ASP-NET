<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="AddFood.aspx.cs" Inherits="Hotel_Project.AddFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 139px;
            height:104px;
        }
        .auto-style2 {
            width: 14px;
        }
        .auto-style3 {
            width: 139px;
            height: 25px;
        }
        .auto-style4 {
            width: 14px;
            height: 25px;
        }
        .auto-style6 {
            width: 139px;
            height: 104px;
        }
        .auto-style7 {
            width: 14px;
            height: 104px;
        }
        .auto-style9 {
            width: 139px;
            height: 35px;
        }
        .auto-style10 {
            width: 14px;
            height: 35px;
        }
        .auto-style11 {
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
            width: 340px;
        }
        .auto-style13 {
            height: 104px;
            width: 340px;
        }
        .auto-style14 {
            width: 340px;
        }
        .auto-style15 {
            height: 25px;
            width: 340px;
        }
        .auto-style16 {
            width: 80%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style12"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style6">Food Name </td>
            <td class="auto-style7">:</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtFoodName" runat="server" Height="62px" Width="238px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFoodName" ErrorMessage="Required" ForeColor="Red" Font-Size="XX-Small"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="5" style="vertical-align:top;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="true" AutoGenerateColumns="False" BackColor="Green" BorderColor="Green" BorderStyle="None" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSourceFoodTable" ForeColor="#333333" GridLines="None" Width="300px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="7">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
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
                <asp:SqlDataSource ID="SqlDataSourceFoodTable" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT * FROM [Food]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Food Price</td>
            <td class="auto-style2">:</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtFoodPrice" runat="server" Height="62px" Width="238px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFoodPrice" ErrorMessage="Required" ForeColor="Red" Font-Size="XX-Small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="btAddFood" runat="server" BackColor="Green" ForeColor="White" Height="60px" Text="Add Food" Width="148px" OnClick="btAddFood_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style15">
                <asp:Label ID="lblAddFood" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
        </tr>
        </table>
&nbsp;
</asp:Content>
