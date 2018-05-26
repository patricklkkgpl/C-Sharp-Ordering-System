<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderViewAll.aspx.cs" Inherits="Ordering_System.OrderViewAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Orders</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">

    <div class="center header">
            <h1>View All Orders</h1>
        </div>
        <hr />

    <form id="OrderViewAllFrm" runat="server">

        <div class="menu_container">


            <ul class="main_menu">
                <a class="menu_item" href="Default.aspx">
                    <li>Home</li>
                </a>
                <a class="menu_item" href="CustomerEntry.aspx">
                    <li>Customer Entry</li>
                </a>
                <a class="menu_item" href="CustomerViewAll.aspx">
                    <li>View All Customers</li>
                </a>
                <a class="menu_item" href="OrderEntry.aspx">
                    <li>Order Entry</li>
                </a>
                <a class="menu_item" href="OrderViewAll.aspx">
                    <li>View All Orders</li>
                </a>
            </ul>

        </div>


        <div class="bodyContainer">

            <div class="ViewAllOrders">
                <asp:Label ID="emptyLbl" runat="server" Text="There is no data available to display" CssClass="center" Font-Bold="True" Font-Size="Larger" Visible="False" Width="100%"></asp:Label>
            <asp:SqlDataSource ID="OrderViewAllSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CustConnectionString %>" SelectCommand="SELECT [Id], [orderDate], [orderTime], [custid], [grandTotal] FROM [Orders]"></asp:SqlDataSource>
            <asp:GridView ID="ViewAllOrdersGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="OrderViewAllSqlDataSource" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="OrderInfoBtn" runat="server" CommandArgument='<%# Eval("Id") + ";" + Eval("custid") %>' CommandName="OrderInfo" OnCommand="OrderInfoBtn_Command" Text='<%# Eval("Id") %>' BackColor="#C9DFF5" CssClass="infoBtn" ForeColor="#003300" />
                        </ItemTemplate>
                        <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" Width="75px" />
                        <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="orderDate" HeaderText="Order Date" SortExpression="orderDate" >
                    <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="orderTime" HeaderText="Order Time" SortExpression="orderTime" >
                    <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Customer ID" SortExpression="custid">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("custid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("custid") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                        <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total" SortExpression="grandTotal">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("grandTotal") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("grandTotal") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                        <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                </div>
        </div>
    </form>

        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
        </div>
</body>
</html>
