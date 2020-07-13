using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace COVID19_Web_Application_App
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        string connectionString = @"Data Source=PRANESHCHAND-PC\SQLEXPRESS;Initial Catalog=COVID19ContactTracing;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Admin_RequestAll_Button(object sender, EventArgs e)
        {
            DataTable dtbl1 = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlDataAdapter command = new SqlDataAdapter("SELECT * FROM [COVID19ContactTracing].[dbo].[ContactTracing]", connection);
                command.Fill(dtbl1);
            }
            allRecordsGrid.DataSource = dtbl1;
            allRecordsGrid.DataBind();
        }

        protected void Admin_RequestParticular_Button(object sender, EventArgs e) {
            DataTable dtbl2 = new DataTable();
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string fname = firstNameParticularRecord.Text;
                string lname = lastNameParticularRecord.Text;
                string strQuery = "SELECT * FROM [COVID19ContactTracing].[dbo].[ContactTracing] WHERE firstName = @firstName AND lastName = @lastName";
                command.SelectCommand.Parameters.AddWithValue("@firstName", fname);
                command.SelectCommand.Parameters.AddWithValue("@lastName", lname);
                SqlDataAdapter command = new SqlDataAdapter(strQuery, connection);
                command.Fill(dtbl2);
            }
            particularRecordGrid.DataSource = dtbl2;
            particularRecordGrid.DataBind();

        }


    }
}


