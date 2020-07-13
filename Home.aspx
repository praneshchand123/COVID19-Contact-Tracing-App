<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="COVID19_Web_Application_App.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.aspx">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.aspx">Admin<span class="sr-only"></span></a>
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
    <div class="container-fluid">
        <div class="jumbotron">
            <h1 style="text-align:center">Welcome to COVID-19 Contact Tracing</h1>
        </div>
    </div>
    
    <form id="form1" runat="server">
        <div class="form-group">
            <!---First Name Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" ID="fnameLabel" runat="server">First Name*</asp:Label>
            <div class="col-sm-10">
                <asp:Textbox id="firstName" runat="server" placeholder="Enter First Name" class="form-control col-sm-3" />
            </div>
        </div> 
        <div class="form-group">
            <!---Last Name Entry -->
                <asp:Label CssClass="custom-control-label col-sm-2" id="lNameLabel" runat="server">Last Name*</asp:Label>
            <div class="col-sm-10">
                <asp:Textbox id="lastName" runat="server" placeholder="Enter Last Name" class="form-control col-sm-3"/>
            </div>
        </div>
        <div class="form-group">
            <!--ADD A Date of Birth Calendar similar to how the dateenteredstore calendar is done-->
            <asp:Label CssClass="custom-control-label col-sm-2" ID="dateOfBirthLabel" runat="server">Date of Birth*</asp:Label><br />
            <div class="col-sm-10">
                <asp:TextBox ID="dateOfBirth" runat="server" placeholder="Click on Calendar"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/icons8-calendar-16.png" ImageAlign="AbsBottom" OnClick="ImageButton2_Click" /><br />
                <div class="form-group">
                    <asp:Label CssClass="custom-control-label col-sm-2" ID="yearLabel" runat="server">Year*</asp:Label>
                    <asp:Label CssClass="custom-control-label" ID="monthLabel" runat="server">Month*</asp:Label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="yearDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="yearDropDownList_SelectedIndexChanged"></asp:DropDownList>
                        <asp:DropDownList ID="monthDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="monthDropDownList_SelectedIndexChanged"></asp:DropDownList>
                        <div class="form-group">
                                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <!---Address Line 1 Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="aLine1Label" runat="server">Address Line 1*</asp:Label><br/>
            <div class="col-sm-10">
                <asp:Textbox id="addressLine1" runat="server" placeholder="Enter Unit/Number Street Name" CssClass="form-control col-sm-4" /><br/>
            </div>
        </div>
        <div class="form-group">
            <!---Address Line 2 Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="aLine2Label" runat="server">Address Line 2*</asp:Label><br/>
            <div class="col-sm-10">
                <asp:Textbox id="addressLine2" runat="server" placeholder="Enter Suburb" CssClass="form-control col-sm-4" /><br/>
            </div>
        </div>
        <div class="form-group">
            <!---Postal Code Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="pCodeLabel" runat="server">Postal Code*</asp:Label><br/>
            <div class="col-sm-10">
                <asp:Textbox id="postalCode" runat="server" placeholder="Enter Postal/Zip Code" CssClass="form-control col-sm-2" /><br/>
            </div>
        </div>
        <div class="form-group">
            <!---Email Address Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="eAddressLabel" runat="server">Email Address*</asp:Label><br/>
            <div class="col-sm-10">
                <asp:Textbox id="emailAddress" runat="server" placeholder="Enter Email Address" CssClass="form-control col-sm-4"/><br/>
            </div>
        </div>
        <div class="form-group">
            <!---Mobile Phone Number  Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="mPhoneNumberLabel" runat="server">Mobile Phone Number*</asp:Label><br />
            <div class="col-sm-10">
                <asp:Textbox id="mobilePhoneNumber" runat="server" placeholder="Enter Mobile Phone Number" CssClass="form-control col-sm-2"/><br/>
            </div>
        </div>
        <div class="form-group">
            <!---Home Phone Number Entry -->
            <asp:Label CssClass="custom-control-label col-sm-2" id="hPhoneNumberLabel" runat="server">Home Phone Number*</asp:Label><br />
            <div class="col-sm-10">
                <asp:Textbox id="homePhoneNumber" runat="server" placeholder="Enter Home Phone Number" CssClass="form-control col-sm-2"/><br/>
            </div>
        </div>
        
        
        
        

        
        

        <!---Time Entered Store Entry -->
        <asp:Label id="tEnteredStoreLabel" runat="server">Time Entered Store*</asp:Label><br/>
        <asp:Textbox id="timeEnteredStore" runat="server" TextMode="Time" placeholder="Enter Time of Entry" Width="193px"/>
        <asp:DropDownList ID="amPmList" runat="server" AutoPostBack="true">
            <asp:ListItem Value="0">--- Select AM or PM ---</asp:ListItem>
            <asp:ListItem>AM</asp:ListItem>
            <asp:ListItem>PM</asp:ListItem>
        </asp:DropDownList><br />



        <!---Date Entered Store Entry NEED TO FIX CALENDAR -->
        <asp:Label ID="label1" runat="server">Date Entered Store*</asp:Label><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Click on Calendar"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons8-calendar-16.png" ImageAlign="AbsBottom" OnClick="ImageButton1_Click" />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#999999" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar><br /> 
        
        <!---Gender DropDownList -->
        <asp:Label ID="genderLabel" runat="server">Gender*</asp:Label>
        <asp:DropDownList CssClass="btn btn-secondary" ID="genderList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="genderList_SelectedIndexChanged">
            <asp:ListItem Value="0">--- Select Gender ---</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Gender Diverse</asp:ListItem>
        </asp:DropDownList><br />

        <!--- Are you preganant RadioButtons NEED TO COME UP AFTER CLICKING ON FEMALE FROM DROPDOWNLIST-->
        <asp:Label ID="pregnantLabel" runat="server">Are you Pregnant?*</asp:Label>
        <asp:RadioButton ID="RadioYes_pregnant" Text="Yes" runat="server" GroupName="pregnant" />
        <asp:RadioButton ID="RadioNo_pregnant" Text="No" runat="server" GroupName="pregnant" /><br />

        <!---Additional Questions Label-->
        <asp:Label ID="aquestionsLabel" runat="server">Additional Questions</asp:Label><br />

        <!---Pre existing Medical Conditions Label-->
        <asp:Label ID="hdetailsLabel" runat="server">Pre-existing Medical Conditions:</asp:Label><br />

        <!-- Does the Person have High Blood Pressure RadioButtons-->
        <asp:Label ID="hBloodPressureLabel" runat="server">Do you have High Blood Pressure?*</asp:Label>
        <asp:RadioButton ID="RadioYes_highBloodPressure" Text="Yes" runat="server" GroupName="hbpressure" />
        <asp:RadioButton ID="RadioNo_highBloodPressure" Text="No" runat="server" GroupName="hbpressure" /><br />

        <!---Does the person have Diabetes RadioButtons-->
        <asp:Label ID="diabetesLabel" runat="server">Do you have Diabetes?*</asp:Label>
        <asp:RadioButton ID="RadioYes_diabetes" Text="Yes" runat="server" GroupName="diabetes" />
        <asp:RadioButton ID="RadioNo_diabetes" Text="No" runat="server" GroupName="diabetes" /><br />

        <!-- Does the person have respiratory diseases RadioButtons-->
        <asp:Label ID="lDiseasesLabel" runat="server">Do you have serious respiratory disease such as chronic lung disease or moderate to severe asthma?*</asp:Label>
        <asp:RadioButton ID="RadioYes_lungDiseases" Text="Yes" runat="server" GroupName="ldiseases" />
        <asp:RadioButton ID="RadioNo_lungDiseases" Text="No" runat="server" GroupName="ldiseases" /><br />

        <!-- Does the person have heart conditions RadioButtons-->
        <asp:Label ID="hConditionsLabel" runat="server">Do you have a heart condition?*</asp:Label>
        <asp:RadioButton ID="RadioYes_heartDisease" Text="Yes" runat="server" GroupName="hdisease" />
        <asp:RadioButton ID="RadioNo_heartDisease" Text="No" runat="server" GroupName="hdisease" /><br />

        <!-- Does the person have Chronic Kidney Disease RadioButtons-->
        <asp:Label ID="cKidneyDiseaseLabel" runat="server">Do you have Chronic Kidney Disease?*</asp:Label>
        <asp:RadioButton ID="RadioYes_chronicKidneyDisease" Text="Yes" runat="server" GroupName="ckdisease" />
        <asp:RadioButton ID="RadioNo_chronicKidneyDisease" Text="No" runat="server" GroupName="ckdisease" /><br />

        <!-- Does the person undergo dialysis Radiobuttons-->
        <asp:Label ID="dialysisLabel" runat="server">Do you undergo Dialysis Treatment?*</asp:Label>
        <asp:RadioButton ID="RadioYes_dialysis" Text="Yes" runat="server" GroupName="dialysistreatment" />
        <asp:RadioButton ID="RadioNo_dialysis" Text="No" runat="server" GroupName="dialysistreatment" /><br />

        <!--Does the person have liver disease RadioButtons-->
        <asp:Label ID="lDiseaseLabel" runat="server">Do you have Liver Disease?*</asp:Label>
        <asp:RadioButton ID="RadioYes_liverDisease" Text="Yes" runat="server" GroupName="liverdisease" />
        <asp:RadioButton ID="RadioNo_liverDisease" Text="No" runat="server" GroupName="liverdisease" /><br />

        <!--Does the person have immune deficiency RadioButtons-->
        <asp:Label ID="immuneDificiencyLabel" runat="server">Do you have other Serious Illnesses which means your Immune System doesn't work as well?*</asp:Label>
        <asp:RadioButton ID="RadioYes_immuneDifficiencyDisease" Text="Yes" runat="server" GroupName="immunedeficiencydiseases" />
        <asp:RadioButton ID="RadioNo_immuneDifficiencyDisease" Text="No" runat="server" GroupName="immunedeficiencydiseases" /><br />

   

        <!---Submit Details Button -->
        <asp:Button CssClass="btn btn-outline-primary" id="submit" Text="Submit" OnClick="Form_Submission" runat="server"></asp:Button><br/>
    </form>
</body>
</html>
