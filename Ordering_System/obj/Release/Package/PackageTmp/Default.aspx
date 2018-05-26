<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ordering_System.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ordering System</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">

        <div class="logo right">
            <p><span>&#9787;</span>YAMMY RESTAURANT</p>
        </div>
        <hr />

        <form id="welcomeFrm" runat="server">

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
                <img class="HomeImg" src="img/HomeBG.jpg" />
            </div>

        </form>


        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
    </div>


    <script src="scripts/scripts.js"></script>
</body>
</html>
