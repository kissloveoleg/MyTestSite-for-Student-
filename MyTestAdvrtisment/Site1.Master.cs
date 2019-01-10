using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
namespace MyTestAdvrtisment
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        HttpCookie cookie;
        SqlConnection _connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            cookie = Request.Cookies["OlegCookie2018"];

            if(cookie!=null)
            {
                if(cookie.Value=="admin")
                {
                    WelcomeLabel.Text = "Добро пожаловать, " + cookie.Value;
                    LabelOut.Text = "Вы вошли как " + cookie.Value;
                    Table1.Visible = false;
                    LabelOut.Visible = true;
                    OutButton.Visible = true;
                    AdminHyperLink.Visible = true;
                }
                else
                {
                    AdminHyperLink.Visible = false;
                    WelcomeLabel.Text = "Добро пожаловать, " + cookie.Value;
                LabelOut.Text = "Вы вошли как " + cookie.Value;
                Table1.Visible = false;
                LabelOut.Visible = true;
                OutButton.Visible = true;
                }
            }
            else
            {
                AdminHyperLink.Visible = false;
                WelcomeLabel.Text = "Добро пожаловать, Гость";
                Table1.Visible = true;
                LabelOut.Visible = false;
                OutButton.Visible = false;
            }

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            cookie = Request.Cookies["OlegCookie2018"];
            if(cookie!=null&& TextBoxSearch.Text != null)
            {
                Response.Redirect("DiplomInfo.aspx?param="+TextBoxSearch.Text);
            }
           
            
            
           
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

            cookie = new HttpCookie("OlegCookie2018");
            cookie.Expires= DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
           
        }

        protected void UserAccessClick(object sender, EventArgs e)
        {
            
            //SQL запрос с поиском юзера по логину
            string coonectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            _connection = new SqlConnection(coonectionString);
            _connection.Open();
            SqlCommand cmd = new SqlCommand("SELECT Password FROM Users WHERE Login = @MyLogin AND Password = @MyPassword ", _connection);
            cmd.Parameters.AddWithValue("MyLogin", LoginTextBox.Text);
            cmd.Parameters.AddWithValue("MyPassword", PasswordTextBox.Text);
            if ((string)cmd.ExecuteScalar() != null)
            {
 
                
                cookie = new HttpCookie("OlegCookie2018", LoginTextBox.Text);
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);

                Response.Redirect("Default.aspx");
            }
            else { ErorrLabel.Visible = true; }
        }
    }
}