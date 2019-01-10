using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Drawing;
namespace MyTestAdvrtisment
{
    public partial class Start : System.Web.UI.Page
    {
        SqlConnection _connection;
        string connection_result;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
           
            try
            {
                string coonectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            _connection = new SqlConnection(coonectionString);
            _connection.Open();
            SqlCommand command = new SqlCommand("SELECT Студенческий FROM StudentsTable WHERE Студенческий=" + TextBoxID.Text,_connection);

            SqlDataReader reader = command.ExecuteReader();
            
            while (reader.Read())
            {
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    connection_result=(reader.GetName(i) + ": " + reader[i]);
                }              
            }
                if (connection_result == null)
                {
                    TextBoxID.Text = "Такого студента нету в базе даных"; reader.Close();
                    _connection.Close();
                }
                else
                {     
                    reader.Close();
                    _connection.Close();
                    Response.Redirect("Registration.aspx");
                }
            }
            catch(Exception ex)
            {
                TextBoxID.Font.Size = 2;
                TextBoxID.Text = "Возникла ошибка при нахождении судента, обратитесь в тех поддержку";
                TextBoxID.Font.Size = 9;
            }
           

         
            
        }

        protected void TextBoxID_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}