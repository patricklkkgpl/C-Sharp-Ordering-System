<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerViewAll.aspx.cs" Inherits="Ordering_System.CustomerViewAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Customers</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
    <div class="center header">
            <h1>View All Customers</h1>
        </div>
        <hr />

    <form id="CustViewAllFrm" runat="server">

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
            
            
            <div class="ViewAllCustomers">
                <asp:Label ID="emptyLbl" runat="server" Text="There is no data available to display" CssClass="center" Font-Bold="True" Font-Size="Larger" Visible="False" Width="100%"></asp:Label>
            <asp:SqlDataSource ID="CustSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CustConnectionString %>" SelectCommand="SELECT [Id], [first], [last] FROM [Customers]"></asp:SqlDataSource>
            <asp:GridView ID="CustGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="CustSqlDataSource" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Select ID" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="SelectCustBtn" runat="server" Text='<%# Eval("Id") %>' CommandName="ViewPage" CommandArgument='<%# Eval("Id") %>' OnCommand="SelectCustBtn_Command" BackColor="#C9DFF5" CssClass="infoBtn" ForeColor="#003300" />
                        </ItemTemplate>
                        <HeaderStyle BorderColor="#1D5F9F" BorderWidth="1px" Width="75px" />
                        <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="first" HeaderText="First Name" SortExpression="first" >
                    <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="last" HeaderText="Last Name" SortExpression="last" >
                    <HeaderStyle BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle BorderColor="#63A3E2" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" Wrap="True" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" BorderColor="#1D5F9F" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
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
