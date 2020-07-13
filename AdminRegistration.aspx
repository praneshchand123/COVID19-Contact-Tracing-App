<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegistration.aspx.cs" Inherits="COVID19_Web_Application_App.AdminRegistration" %>

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
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login<span class="sr-only"></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="AdminRegistration.aspx">Admin Registration<span class="sr-only">(current)</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <asp:Label runat="server" ID="firstNameAdminLabel">First Name*</asp:Label><br />
        <asp:TextBox runat="server" ID="firstNameAdmin" placeholder="First Name"></asp:TextBox><br />
        <asp:Label runat="server" ID="lastNameAdminLabel">Last Name*</asp:Label><br />
        <asp:TextBox runat="server" ID="lastNameAdmin" placeholder="Last Name"></asp:TextBox><br />
        <asp:Label runat="server" ID="emailAddressAdminLabel">Email Address*</asp:Label><br />
        <asp:TextBox runat="server" ID="emailAddressAdmin" placeholder="Enter Email Address"></asp:TextBox><br />
        <asp:Label runat="server" ID="passwordAdminLabel">Password*</asp:Label><br />
        <asp:TextBox runat="server" ID="passwordAdmin" TextMode="Password" placeholder="Enter Password"></asp:TextBox><br />
        <asp:Label runat="server" ID="retypePasswordAdminLabel">Retype Password*</asp:Label><br />
        <asp:TextBox runat="server" ID="retypePasswordAdmin" TextMode="Password" placeholder="Retype Passsword"></asp:TextBox><br />
        <asp:Label runat="server" ID="companyAdminLabel">Company Name*</asp:Label><br />
        <asp:TextBox runat="server" ID="companyAdmin" placeholder="Enter Company Name"></asp:TextBox><br />
        <asp:Label runat="server" ID="branchAdminLabel">Branch*</asp:Label><br />
        <asp:TextBox runat="server" ID="branchAdmin" placeholder="Enter Branch"></asp:TextBox><br />
        <asp:Label runat="server" ID="companyAddressLine1AdminLabel">Bussiness Address Line 1*</asp:Label><br />
        <asp:TextBox runat="server" ID="companyAddressLine1Admin" placeholder="Enter Unit/Number Street Name"></asp:TextBox><br />
        <asp:Label runat="server" ID="companyAddressLine2AdminLabel">Bussiness Address Line 2*</asp:Label><br />
        <asp:TextBox runat="server" ID="companyAddressLine2Admin" placeholder="Enter Surburb"></asp:TextBox><br />
        <asp:Label runat="server" ID="positionAdminLabel">Position*</asp:Label><br />
        <asp:TextBox runat="server" ID="positionAdmin" placeholder="Enter your Position"></asp:TextBox><br />
        <asp:Button runat="server" ID="adminRegistrationFormButton" Text="Register" OnClick="adminRegistrationFormButton_Click" />
    </form>
</body>
</html>
