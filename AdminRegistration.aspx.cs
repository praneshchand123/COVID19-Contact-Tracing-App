using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace COVID19_Web_Application_App
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminRegistrationFormButton_Click(object sender, EventArgs e)
        {
            //Admin details (connection)
            string fnameadmin = firstNameAdmin.Text;
            string lnameadmin = lastNameAdmin.Text;
            string eaddressadmin = emailAddressAdmin.Text;
            string password = passwordAdmin.Text;
            string rpassword = retypePasswordAdmin.Text;
            string cadmin = companyAdmin.Text;
            string branch = branchAdmin.Text;
            string caddressline1 = companyAddressLine1Admin.Text;
            string caddressline2 = companyAddressLine2Admin.Text;
            string aposition = positionAdmin.Text;

            //Connection to the database
            string connectionString;
            SqlConnection connection;
            connectionString = @"Data Source=PRANESHCHAND-PC\SQLEXPRESS;Initial Catalog=COVID19ContactTracing;Integrated Security=True";
            connection = new SqlConnection(connectionString);
            connection.Open();

            string strQuery = "INSERT INTO COVID19ContactTracing.dbo.AdminRegistration(firstName, lastName, email, password, retypePassword, company, branch, companyAddressLine1, companyAddressLine2, position) VALUES (@firstName, @lastName, @email, @password, @retypePassword, @company, @branch, @companyAddressLine1, @companyAddressLine2, @position)";

            SqlCommand command = new SqlCommand(strQuery, connection);

            //Adding Parameters (revised with AddWithValue)
            command.Parameters.AddWithValue("@firstName", fnameadmin);
            command.Parameters.AddWithValue("@lastName", lnameadmin);
            command.Parameters.AddWithValue("@email", eaddressadmin);
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.AddWithValue("@retypePassword", rpassword);
            command.Parameters.AddWithValue("@company", cadmin);
            command.Parameters.AddWithValue("@branch", branch);
            command.Parameters.AddWithValue("@companyAddressLine1", caddressline1);
            command.Parameters.AddWithValue("@companyAddressLine2", caddressline2);
            command.Parameters.AddWithValue("@position", aposition);

            command.ExecuteNonQuery();

            connection.Close();



        }
    }
}