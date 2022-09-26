<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurant.Master" AutoEventWireup="true" CodeBehind="OrderFood.aspx.cs" Inherits="Hotel_Project.OrderFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 152px;
        }
        .auto-style3 {
            width: 448px;
        }
        .auto-style4 {
            width: 17px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 448px;
            height: 45px;
        }
        .auto-style7 {
            width: 152px;
            height: 118px;
        }
        .auto-style8 {
            width: 17px;
            height: 118px;
        }
        .auto-style9 {
            width: 448px;
            height: 118px;
        }
        .auto-style10 {
            height: 118px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<p id="btnSearch" class="mt-0">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Room Number</td>
            <td class="auto-style8">:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Height="51px" Width="215px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Green" ForeColor="White" Height="45px" OnClick="Button3_Click" Text="Button" Width="140px" />
            </td>
            <td class="auto-style10"><asp:DropDownList ID="ddlFoodSelected" runat="server" AutoComplete="true" DataSourceID="SqlDataSourceOrder" DataTextField="fname" DataValueField="fname">
    </asp:DropDownList>
                <asp:Button ID="Button1" runat="server"  Text="Select" CssClass="auto-style1" Width="115px" BackColor="Green" ForeColor="White" Height="45px" />
        <asp:SqlDataSource ID="SqlDataSourceOrder" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString2 %>" SelectCommand="SELECT [fname] FROM [Food]"></asp:SqlDataSource>
                <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" BackColor="Green" ForeColor="White" Height="45px" Width="155px" />
                <asp:Button ID="Button2" runat="server" Height="45px" ForeColor="White" BackColor="green" Text="Bill" Width="131px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td rowspan="3">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="fid" DataSourceID="SqlDataSourceFoodChosen" CellPadding="4" ForeColor="#333333" GridLines="None" Width="293px" AllowPaging="True" PageSize="1">
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
                <asp:SqlDataSource ID="SqlDataSourceFoodChosen" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString %>" SelectCommand="SELECT * FROM [Food] WHERE ([fname] = @fname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlFoodSelected" Name="fname" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">CART</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridViewCart" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="335px">
                    <AlternatingRowStyle BackColor="White" />
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
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="refno" DataSourceID="SqlDataSourcePersonDetail" GroupItemCount="3">
                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color:#FFF8DC;">refno:
                            <asp:Label ID="refnoLabel" runat="server" Text='<%# Eval("refno") %>' />
                            <br />
                            cname:
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                            <br />
                            mobile:
                            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
                            <br />
                        </td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">refno:
                            <asp:Label ID="refnoLabel1" runat="server" Text='<%# Eval("refno") %>' />
                            <br />
                            cname:
                            <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                            <br />
                            mobile:
                            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <br />
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">cname:
                            <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                            <br />
                            mobile:
                            <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <br />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <br />
                        </td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server" style="background-color:#DCDCDC;color: #000000;">refno:
                            <asp:Label ID="refnoLabel" runat="server" Text='<%# Eval("refno") %>' />
                            <br />
                            cname:
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                            <br />
                            mobile:
                            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
                            <br />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">refno:
                            <asp:Label ID="refnoLabel" runat="server" Text='<%# Eval("refno") %>' />
                            <br />
                            cname:
                            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
                            <br />
                            mobile:
                            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSourcePersonDetail" runat="server" ConnectionString="<%$ ConnectionStrings:HotelDBConnectionString2 %>" SelectCommand="SELECT [refno], [cname], [mobile] FROM [customer] WHERE (([checkout] IS NULL) AND ([roomnum] = @roomnum))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="roomnum" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    
</asp:Content>
