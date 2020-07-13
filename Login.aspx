<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="COVID19_Web_Application_App.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Home.aspx">Home<span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx">Admin<span class="sr-only"></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Login.aspx">Login<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AdminRegistration.aspx">Admin Registration<span class="sr-only"></span></a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form3" runat="server">
        <asp:Label ID="emailLabel" runat="server">Email:</asp:Label><br />
        <asp:TextBox ID="emailTextBox" runat="server" placeholder="Enter Username"></asp:TextBox><br />
        <asp:Label ID="passwordLabel" runat="server">Password:</asp:Label><br />
        <asp:TextBox ID="passwordTextbox" TextMode="Password" runat="server" placeholder="Enter Password"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Login_Click" />
    </form>
    

</body>
</html>
