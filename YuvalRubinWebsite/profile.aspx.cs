using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(bool)Session["isLoggedIn"])
        {
            Response.Redirect("Unauthorized.aspx");
            return;
        }

        if (!IsPostBack)
        {
            string loggedInUser = Convert.ToString(Session["userName"]).Trim();
            LoadUserProfile(loggedInUser);
        }

    }

    private void LoadUserProfile(string username)
    {

        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\StudentH\source\repos\usernameusername6\YuvalRubinWebsite\YuvalRubinWebsite\App_Data\Database.mdf;Integrated Security=True";


        string query = "SELECT user_name, first_name, last_name, mail , phone, gender, reg_date FROM Users WHERE user_name = @Username";

        using (SqlConnection conn = new SqlConnection(connString))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                cmd.Parameters.AddWithValue("@Username", username);

                try
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        lblUsername.Text = reader["user_name"].ToString();
                        lblFirstName.Text = reader["first_name"].ToString();
                        lblLastName.Text = reader["last_name"].ToString();
                        lblEmail.Text = reader["mail"].ToString();
                        lblPhone.Text = reader["phone"].ToString();
                        lblGender.Text = reader["gender"].ToString();
                        lblReg.Text = Convert.ToDateTime(reader["reg_date"]).ToString("dd/MM/yyyy");
                    }
                    else
                    {
                        lblUsername.Text = "User not found.";
                    }
                    reader.Close();
                }
                catch (Exception) { }
            }
        }
    }
}