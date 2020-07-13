<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="COVID19_Web_Application_App.WebForm2" %>

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
                <li class="nav-item active">
                    <a class="nav-link" href="Admin.aspx">Admin<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login<span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AdminRegistration.aspx">Admin Registration<span class="sr-only"></span></a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form2" runat="server">
        <div class="form-group">
            <!--Shows all Customers who have entered the store -->
            <asp:Label ID="allRecordsLabel" runat="server">Show all Customers</asp:Label><br /> 
            <asp:Button CssClass="btn btn-primary" ID="allSubmitRequestButton" runat="server" Text="Submit Request" OnClick="Admin_RequestAll_Button" /><br />
            <asp:GridView ID="allRecordsGrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true">
                <%--Theme Properties --%>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                <Columns>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("firstName") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("lastName") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address Line 1">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("addressLine1") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address Line 2">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("addressLine2") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Postal Code">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("postalCode") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("emailAddress") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Phone Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("mobilePhoneNumber") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Home Phone Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("homePhoneNumber") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time Entered Store">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("timeEnteredStore") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AM or PM">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("amPM") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Entered Store">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("dateEnteredStore") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("gender") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pregnant">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("pregnant") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="High Blood Pressure">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("highBloodPressure") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Diabetes">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("diabetes") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lung Diseases">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("lungDiseases") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Heart Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("heartDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Chronic Kidney Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("chronicKidneyDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dialysis Treatment">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("dialysisTreatment") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Liver Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("liverDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Immune Dificiency">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("immuneDeficiency") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView><br /> 

            <!--Shows a Particular Customer Records-->
            <asp:Label ID="particularCustomerRecordLabel" runat="server">Enter Full Name of Particular Customer</asp:Label><br />
            <asp:Label ID="particularCustomerFirstNameLabel" runat="server">First Name*</asp:Label>
            <asp:TextBox CssClass="form-control" ID="firstNameParticularRecord" runat="server" placeholder="Enter First Name"></asp:TextBox><br />
            <asp:Label ID="particularCustomerLastNameLabel" runat="server">Last Name*</asp:Label>
            <asp:TextBox CssClass="form-control" ID="lastNameParticularRecord" runat="server" placeholder="Enter Last Name"></asp:TextBox><br />
            <asp:Button CssClass="btn btn-primary" ID="particularSubmitRequestButton" runat="server" Text="Submit Request" OnClick="Admin_RequestParticular_Button" /><br />
            <asp:GridView ID="particularRecordGrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true">
                <%--Theme Properties --%>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
                <Columns>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("firstName") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("lastName") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address Line 1">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("addressLine1") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address Line 2">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("addressLine2") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Postal Code">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("postalCode") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Address">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("emailAddress") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Phone Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("mobilePhoneNumber") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Home Phone Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("homePhoneNumber") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Time Entered Store">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("timeEnteredStore") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="AM or PM">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("amPM") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date Entered Store">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("dateEnteredStore") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("gender") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pregnant">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("pregnant") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="High Blood Pressure">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("highBloodPressure") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Diabetes">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("diabetes") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Lung Diseases">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("lungDiseases") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Heart Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("heartDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Chronic Kidney Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("chronicKidneyDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dialysis Treatment">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("dialysisTreatment") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Liver Disease">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("liverDisease") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Immune Dificiency">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("immuneDeficiency") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        
    </form>
</body>
</html>
