<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderView.aspx.cs" Inherits="Ordering_System.OrderView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Order</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="center header">
            <h1>View Order</h1>
        </div>
        

        <form id="OrderViewFrm" runat="server">

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

                <div class="custViewInfo">

                    <asp:SqlDataSource ID="OrderViewSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CustConnectionString %>" SelectCommand="SELECT Orders.Id, Orders.custid, Orders.orderDate, Orders.orderTime, Orders.prod1Qty, Orders.prod2Qty, Orders.prod3Qty, Orders.prod4Qty, Orders.prod5Qty, Orders.prod6Qty, Orders.subTotal, Orders.taxAmt, Orders.grandTotal, Customers.Id, Customers.first, Customers.last FROM Orders CROSS JOIN Customers WHERE (Orders.Id = @id) AND (Customers.Id = @custid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                            <asp:QueryStringParameter DefaultValue="" Name="custid" QueryStringField="custid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label Text="Order ID : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="idLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Customer ID : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="custidLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Name : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="nameLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Order Date : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="orderDateLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Order Time : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="orderTimeLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Cheese Pizza (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="cheesePizzaLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Stromboli (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="StromboliLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Hot Chicken Wings (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="HotCknLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="BBQ Chicken Wings (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="BBQCknLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Spaghetti (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="spaghettiLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Salad (Qty) : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="saladLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Sub Total Amount : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="subTotalLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Tax Deducted : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="taxLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                    <asp:Label Text="Total Amount : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="totalLabl" CssClass="LblCellData" Font-Bold="False" /><br />

                </div>
            </div>


        </form>


        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
    </div>
</body>
</html>
