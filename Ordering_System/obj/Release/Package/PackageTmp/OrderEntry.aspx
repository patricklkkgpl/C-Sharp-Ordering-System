<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderEntry.aspx.cs" Inherits="Ordering_System.OrderEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Entry</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="center header">
            <h1>Place an Order</h1>
        </div>
        <hr />

        <form id="OrderFrm" runat="server">
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

                <asp:Label Text="Select Customer : " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:DropDownList ID="CustDropDownList" runat="server" CssClass="textField"></asp:DropDownList>
                <hr />

                <div class="LeftColOrder">
                    <img src="img/Pizza.png" width="150" /><br />
                    <asp:Label Text="Cheese Pizza (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="5" runat="server" ID="CheesePrice" /><br />
                    <asp:TextBox ID="cheese" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="cheeseValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="cheese" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                    <br />

                    <img src="img/Stromboli.png" width="150" /><br />
                    <asp:Label Text="Stromboli (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="8" runat="server" ID="StromboliPrice" /><br />
                    <asp:TextBox ID="stromboli" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="stromboliValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="stromboli" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                    <br />

                    <img src="img/HotCkn.png" width="150" /><br />
                    <asp:Label Text="Hot Chicken Wings - dozen (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="7" runat="server" ID="HotPrice" /><br />
                    <asp:TextBox ID="hotCkn" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="hotValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="hotCkn" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                    <br />

                </div>

                <div class="RightColOrder">
                    <img src="img/BBQCkn.png" width="150" /><br />
                    <asp:Label Text="BBQ Chicken Wings - dozen (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="8" runat="server" ID="BBQPrice" /><br />
                    <asp:TextBox ID="BBQCkn" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="BBQValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="BBQCkn" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                    <br />

                    <img src="img/Spaghetti.png" width="150" /><br />
                    <asp:Label Text="Spaghetti Dinner (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="6" runat="server" ID="SpaghettiPrice" /><br />
                    <asp:TextBox ID="spaghetti" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="spaghettiValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="spaghetti" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <img src="img/Salad.png" width="150" /><br />
                    <asp:Label Text="Salad (Max 9 Qty): " runat="server" CssClass="CustTxtLbl" />
                    <asp:Label Text="$" runat="server" /><asp:Label Text="5" runat="server" ID="SaladPrice" /><br />
                    <asp:TextBox ID="salad" runat="server" MaxLength="1" CssClass="textField">0</asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="saladValid" runat="server" ErrorMessage="Enter number only" ControlToValidate="salad" ValidationExpression="\d+" CssClass="ErrLbl"></asp:RegularExpressionValidator>
                    <br />
                </div>
                <div class="total">
                <asp:Label Text="Sub Total : " runat="server" CssClass="CustTxtLbl" Font-Bold="True" /><asp:Label runat="server" ID="subTotalLbl" CssClass="CustTxtLbl" Font-Bold="True" Font-Size="Large" /><br />
                <asp:Label Text="Tax : " runat="server" CssClass="CustTxtLbl" Font-Bold="True" /><asp:Label runat="server" ID="taxLbl" CssClass="CustTxtLbl" Font-Bold="True" Font-Size="Large" /><br />
                <asp:Label Text="Total : " runat="server" CssClass="CustTxtLbl" Font-Bold="True" /><asp:Label runat="server" ID="totalLbl" CssClass="CustTxtLbl" Font-Bold="True" Font-Size="X-Large" ForeColor="#1D5F9F" /><br />

                
                <asp:Label Text="No order was placed!" runat="server" ID="TotalError" Visible="False" CssClass="ErrLbl" />
                <br />
                <input class="btn" id="orderReset" type="reset" value="Clear" />
                <asp:Button ID="OrderAdd" runat="server" Text="Order" OnClick="OrderAdd_Click" Enabled="False" CssClass="btn" />
                <asp:Button ID="calc" runat="server" Text="Calculate Order" OnClick="calc_Click" CssClass="btn" /><asp:Button ID="Editbtn" runat="server" Text="Edit Calculation" CssClass="btn" Enabled="False" OnClick="Editbtn_Click" />
                    </div>
            </div>
        </form>

        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
    </div>
</body>
</html>
