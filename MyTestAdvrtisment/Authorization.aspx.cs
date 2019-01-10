using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace MyTestAdvrtisment
{
    public partial class Authorization : System.Web.UI.Page
    {
        SqlConnection _connection;
        HttpCookie cookie;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                try
                {


                    string coonectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                    _connection = new SqlConnection(coonectionString);
                    _connection.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO Users(Login,Password,Имя,Фамилия)VALUES(@Login,@Password,@Name,@LastName)", _connection);

                    command.Parameters.AddWithValue("Login", LoginTextBox.Text);
                    command.Parameters.AddWithValue("Password", Password2TextBox.Text);
                    command.Parameters.AddWithValue("Name", NameTextBox.Text);
                    command.Parameters.AddWithValue("LastName", LastNameTextBox.Text);
                    command.ExecuteNonQuery();
                    _connection.Close();



                    cookie = new HttpCookie("OlegCookie2018", LoginTextBox.Text);
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);

                    Response.Redirect("Default.aspx");
                    ErrorLabel.Visible = false;
                }
                catch(Exception ex)
                {
                    ErrorLabel.Visible = true;
                    LoginTextBox.ToolTip = ex.Message;
                }
            }
         
        }
    }
}