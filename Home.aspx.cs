using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace COVID19_Web_Application_App
{
    
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                //Pregnant Question
                pregnantLabel.Visible = false;
                RadioYes_pregnant.Visible = false;
                RadioNo_pregnant.Visible = false;

                //Hides the DateEnteredStore calendar
                Calendar1.Visible = false;

                //Hides Date of Birth Calendar Calendar
                yearLabel.Visible = false;
                monthLabel.Visible = false;
                yearDropDownList.Visible = false;
                monthDropDownList.Visible = false;
                Calendar2.Visible = false;

                DataSet years = new DataSet();
                years.ReadXml(Server.MapPath("~/Year.xml"));
                yearDropDownList.DataTextField = "Number";
                yearDropDownList.DataValueField = "Number";
                yearDropDownList.DataSource = years;
                yearDropDownList.DataBind();

                DataSet months = new DataSet();
                months.ReadXml(Server.MapPath("~/Month.xml"));
                monthDropDownList.DataTextField = "Name";
                monthDropDownList.DataValueField = "Number";
                monthDropDownList.DataSource = months;
                monthDropDownList.DataBind();
            }
        }

        protected void Form_Submission(object sender, EventArgs e) {
            //Personal Details
            string fname = firstName.Text;
            string lname = lastName.Text;
            string aline1 = addressLine1.Text;
            string aline2 = addressLine2.Text;
            string pcode = postalCode.Text;
            string eaddress = emailAddress.Text;
            string mphonenumber = mobilePhoneNumber.Text;
            string hphonenumber = homePhoneNumber.Text;
            string testore = timeEnteredStore.Text;
            //string destore = dateEnteredStore.Text;

            //Pregnant RadioButtons
            string pregnant = string.Empty;
            if (RadioYes_pregnant.Checked)
            {
                pregnant = "Yes";
            }
            else {
                pregnant = "No";
            }

            //Pre-existing Health Conditions
            //High Blood Pressure RadioButtons
            string hbpressure = string.Empty;
            if (RadioYes_highBloodPressure.Checked)
            {
                hbpressure = "Yes";
            }
            else {
                hbpressure = "No";
            }

            //Diabetes RadioButtons
            string diabetes = string.Empty;
            if (RadioYes_diabetes.Checked) {
                diabetes = "Yes";
            } else {
                diabetes = "No";
            }

            //Lung Diseases RadioButtons
            string ldiseases = string.Empty;
            if (RadioYes_lungDiseases.Checked) {
                ldiseases = "Yes";
            } else
            {
                ldiseases = "No";
            }

            //Heart Disease RadioButtons
            string hdisease = string.Empty;
            if (RadioYes_heartDisease.Checked) {
                hdisease = "Yes";
            } else {
                hdisease = "No";
            }

            //Chronic Kidney Disease RadioButtons
            string ckdisease = string.Empty;
            if (RadioYes_chronicKidneyDisease.Checked)
            {
                ckdisease = "Yes";
            }
            else {
                ckdisease = "No";
            }

            //Dialysis Treatment RadioButtons
            string dialysistreatment = string.Empty;
            if (RadioYes_dialysis.Checked)
            {
                dialysistreatment = "Yes";
            }
            else {
                dialysistreatment = "No";
            }

            //Liver Disease RadioButtons
            string liverdisease = string.Empty;
            if (RadioYes_liverDisease.Checked)
            {
                liverdisease = "Yes";
            }
            else {
                liverdisease = "No";
            }

            //Immune Deficiency RadioButtons
            string immunedeficiency = string.Empty;
            if (RadioYes_immuneDifficiencyDisease.Checked)
            {
                immunedeficiency = "Yes";
            }
            else {
                immunedeficiency = "No";
            }

            //Connection to the database
            string connectionString;
            SqlConnection connection;
            connectionString = @"Data Source=PRANESHCHAND-PC\SQLEXPRESS;Initial Catalog=COVID19ContactTracing;Integrated Security=True";
            connection = new SqlConnection(connectionString);
            connection.Open();

            // Insert SQL Query
            string strQuery = "INSERT INTO COVID19ContactTracing.dbo.ContactTracing(firstName, lastName, addressLine1, addressLine2, postalCode, emailAddress, mobilePhoneNumber, homePhoneNumber, timeEnteredStore, amPm, dateEnteredStore, gender, pregnant, highBloodPressure, diabetes, lungDiseases, heartDisease, chronicKidneyDisease, dialysisTreatment, liverDisease, immuneDeficiency) VALUES (@firstName, @lastName, @addressLine1, @addressLine2, @postalCode, @emailAddress, @mobilePhoneNumber, @homePhoneNumber, @timeEnteredStore, @amPm, @dateEnteredStore, @gender, @pregnant, @highBloodPressure, @diabetes, @lungDiseases, @heartDisease, @chronicKidneyDisease, @dialysisTreatment, @liverdisease, @immuneDeficiency)"; 

            //Building Command
            SqlCommand command = new SqlCommand(strQuery, connection);

            //Adding Parameters (revised with AddWithValue)
            command.Parameters.AddWithValue("@firstName", fname);
            command.Parameters.AddWithValue("@lastName",lname);
            command.Parameters.AddWithValue("@addressLine1", aline1);
            command.Parameters.AddWithValue("@addressLine2", aline2);
            command.Parameters.AddWithValue("@postalCode", pcode);
            command.Parameters.AddWithValue("@emailAddress", eaddress);
            command.Parameters.AddWithValue("@mobilePhoneNumber", mphonenumber);
            command.Parameters.AddWithValue("@homePhoneNumber", hphonenumber);
            command.Parameters.AddWithValue("@timeEnteredStore", testore);
            command.Parameters.AddWithValue("@amPm", amPmList.SelectedItem.Value);
            command.Parameters.AddWithValue("@gender", genderList.SelectedItem.Value);
            command.Parameters.AddWithValue("@pregnant", pregnant);
            //command.Parameters.AddWithValue("@dateEnteredStore", destore);
            command.Parameters.AddWithValue("@highBloodPressure", hbpressure);
            command.Parameters.AddWithValue("@diabetes", diabetes);
            command.Parameters.AddWithValue("@lungDiseases", ldiseases);
            command.Parameters.AddWithValue("@heartDisease", hdisease);
            command.Parameters.AddWithValue("@chronicKidneyDisease", ckdisease);
            command.Parameters.AddWithValue("@dialysisTreatment", dialysistreatment);
            command.Parameters.AddWithValue("@liverDisease", liverdisease);
            command.Parameters.AddWithValue("@immuneDeficiency", immunedeficiency);



            command.ExecuteNonQuery();
            

            Response.Write("***Connected to Database Sucessfully...***");
            Response.Write(DateTime.Now.ToLongDateString());
            Response.Write(DateTime.Now.ToLongTimeString());


            connection.Close();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e) { 
        
            if (Calendar1.Visible) {
                Calendar1.Visible = false;
            }
            else {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e) {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible) {
                yearLabel.Visible = false;
                monthLabel.Visible = false;
                yearDropDownList.Visible = false;
                monthDropDownList.Visible = false;
                Calendar2.Visible = false;
            } else
            {
                yearLabel.Visible = true;
                monthLabel.Visible = true;
                yearDropDownList.Visible = true;
                monthDropDownList.Visible = true;
                Calendar2.Visible = true;
            }
        }

        protected void yearDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt16(yearDropDownList.SelectedValue);
            int month = Convert.ToInt16(monthDropDownList.SelectedValue);

            Calendar2.VisibleDate = new DateTime(year, month, 1);
            Calendar2.SelectedDate = new DateTime(year, month, 1);
            
        }

        protected void monthDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int year = Convert.ToInt16(yearDropDownList.SelectedValue);
            int month = Convert.ToInt16(monthDropDownList.SelectedValue);

            Calendar2.VisibleDate = new DateTime(year, month, 1);
            Calendar2.SelectedDate = new DateTime(year, month, 1);
        }

        protected void genderList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //If female option is selected in the dropdown menu before showing pregnancy question below it otherwise pregnancy question should not be visible
            if (genderList.SelectedItem.Text == "Female")
            {
                pregnantLabel.Visible = true;
                RadioYes_pregnant.Visible = true;
                RadioNo_pregnant.Visible = true;
            } else
            {
                pregnantLabel.Visible = false;
                RadioYes_pregnant.Visible = false;
                RadioNo_pregnant.Visible = false;
            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            dateOfBirth.Text = Calendar2.SelectedDate.ToShortDateString();
        }
    }
}