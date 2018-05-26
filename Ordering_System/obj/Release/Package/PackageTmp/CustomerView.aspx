<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerView.aspx.cs" Inherits="Ordering_System.CustomerView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Customer</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>

    <div class="container">


        <div class="center header">
            <h1>Customer Information</h1>
        </div>
        <hr />


        <form id="CustViewFrm" runat="server">

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

                <asp:SqlDataSource ID="CustInfoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CustConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label Text="Customer ID : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="idLbl" CssClass="LblCellData" Font-Bold="False"  /><br />
                <asp:Label Text="Name : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="nameLbl" CssClass="LblCellData" Font-Bold="False"  /><br />
                <asp:Label Text="Street : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="streetLbl" CssClass="LblCellData" Font-Bold="False"  /><br />
                <asp:Label Text="City : " runat="server" CssClass="right LblCellHead"  /><asp:Label runat="server" ID="cityLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                <asp:Label Text="State : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="stateLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                <asp:Label Text="Zip Code : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="zipLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                <asp:Label Text="Phone : " runat="server" CssClass="right LblCellHead" /><asp:Label runat="server" ID="phoneLbl" CssClass="LblCellData" Font-Bold="False" /><br />
                <asp:Label Text="Phone Type : " runat="server" CssClass="right LblCellHead"  /><asp:Label runat="server" ID="phonetypeLbl" CssClass="LblCellData" Font-Bold="False" /><br />

                    </div>
            </div>
        </form>

        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
    </div>
</body>
</html>
