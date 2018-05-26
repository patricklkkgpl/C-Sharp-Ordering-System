<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerEntry.aspx.cs" Inherits="Ordering_System.CustomerEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Entry</title>
    <link href="styles/styles.css" rel="stylesheet" />
</head>
<body>
    <div class="container">


        <div class="center header">
            <h1>Enter Customer Information</h1>
        </div>
        <hr />

        

        <form id="CustEntryFrm" runat="server">

            <div class="menu_container">

                <ul class="main_menu">
                    <a class="menu_item" href="Default.aspx"><li>Home</li></a>
                    <a class="menu_item" href="CustomerEntry.aspx"><li>Customer Entry</li></a>
                    <a class="menu_item" href="CustomerViewAll.aspx"><li>View All Customers</li></a>
                    <a class="menu_item" href="OrderEntry.aspx"><li>Order Entry</li></a>
                    <a class="menu_item" href="OrderViewAll.aspx"><li>View All Orders</li></a>
                </ul>




            </div>

            <div class="bodyContainer">
                
                <asp:Label Text="First Name: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="first" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="firstValid" runat="server" ErrorMessage="* First name is required" ControlToValidate="first" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Last Name: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="last" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lastValid" runat="server" ErrorMessage="* Last name is required" ControlToValidate="last" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Street: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="street" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="streetValid" runat="server" ErrorMessage="* Street address is required" ControlToValidate="street" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="City: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="city" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="cityValid" runat="server" ErrorMessage="* City address is required" ControlToValidate="city" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="State: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="state" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="stateValid" runat="server" ErrorMessage="* State address is required" ControlToValidate="state" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Zip Code: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="zip" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="zipValid" runat="server" ErrorMessage="* Zip Code address is required" ControlToValidate="zip" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Phone Number: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:TextBox ID="phone" runat="server" CssClass="textField"></asp:TextBox>
                <asp:RequiredFieldValidator ID="phoneValid" runat="server" ErrorMessage="* Phone number is required" ControlToValidate="phone" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />
                <asp:Label Text="Phone Number Type: " runat="server" CssClass="CustTxtLbl" /><br />
                <asp:DropDownList ID="phoneType" runat="server" CssClass="textField">
                    <asp:ListItem Value="none">Choose a type</asp:ListItem>
                    <asp:ListItem Value="home">Home</asp:ListItem>
                    <asp:ListItem Value="mobile">Mobile</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="phoneTypeValid" runat="server" ErrorMessage="* Type of phone number is required" ControlToValidate="phoneType" InitialValue="none" CssClass="ErrLbl"></asp:RequiredFieldValidator>
                <br />

                <input class="btn" id="reset" type="reset" value="Clear" />
                <asp:Button ID="submit" runat="server" Text="Add" OnClick="submit_Click" CssClass="btn" />
            </div>

        </form>

        <footer>Copyright 2018 | Muhammad Al Juburi</footer>
    </div>
</body>
</html>
