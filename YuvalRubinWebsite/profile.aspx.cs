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
        
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

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
                        Username.Text = reader["user_name"].ToString();
                        FirstName.Text = reader["first_name"].ToString();
                        LastName.Text = reader["last_name"].ToString();
                        Email.Text = reader["mail"].ToString();
                        Phone.Text = reader["phone"].ToString();
                        Gender.Text = reader["gender"].ToString();
                        Reg.Text = Convert.ToDateTime(reader["reg_date"]).ToString("dd/MM/yyyy");
                    }
                }
                catch { }
            }
        }
    }
}