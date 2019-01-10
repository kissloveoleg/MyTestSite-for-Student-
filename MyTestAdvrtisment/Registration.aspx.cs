using System;
using System.Data.SqlClient;
using System.Configuration;

namespace MyTestAdvrtisment
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection _connection;
        protected void Page_Load(object sender, EventArgs e)
        {



            if (RadioButtonList1.SelectedValue == "yes")
            {
                TableRowApprobir.Visible = true;
            }
            if (RadioButtonList1.SelectedValue == "no")
            {
                TableRowApprobir.Visible = false;
            }
            if (CheckBoxResult.Checked)
            ButtonResult.Visible = true;




            if(!CheckBoxResult.Checked)
            ButtonResult.Visible = false;


        }

        protected void ButtonResult_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {


                string coonectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                _connection = new SqlConnection(coonectionString);
                _connection.Open();
                SqlCommand command = new SqlCommand("INSERT INTO MyTable(Фамилия,Имя_и_Отчество,Название_конкурсной_работы,Номинация_конкурсной_работы,Дисциплина,На_каком_уровне_апробирована_анкета,Полное_название_организации_где_работаете,Должность,Город_населенный_пункт,Мобильный_телефон,Электронная_почта,Откуда_о_нас_узнали)VALUES(@LastName,@FirstName,@DiplomName,@Nomination,@Disziplina,@Level,@JobName,@Dolzhn,@City,@Telephone,@Email,@Advertisment)", _connection);


                command.Parameters.AddWithValue("LastName", TextBoxLastName.Text);
                command.Parameters.AddWithValue("FirstName", TextBoxName.Text);
                command.Parameters.AddWithValue("DiplomName", TextBoxDiplomName.Text);
                command.Parameters.AddWithValue("Nomination", DDL1.SelectedItem.Text);
                command.Parameters.AddWithValue("Disziplina", TextBoxDiszipl.Text);
                command.Parameters.AddWithValue("Level", Textbox2.Text);
                command.Parameters.AddWithValue("JobName", TextBoxOrganization.Text);
                command.Parameters.AddWithValue("Dolzhn", TextBoxDolzhnost.Text);
                command.Parameters.AddWithValue("City", TextBoxCitiy.Text);
                command.Parameters.AddWithValue("Telephone", TextBoxPhoneNumber.Text);
                command.Parameters.AddWithValue("Email", TextBoxEmail.Text);
                if (TextBox5.Text != null) { command.Parameters.AddWithValue("Advertisment", TextBox5.Text); }
                else { command.Parameters.AddWithValue("Advertisment", ListBoxAdvertisment.SelectedItem.Text); }

                command.ExecuteNonQuery();
                _connection.Close();

                ResultLabel.Visible = true;



            }
            
        }
        protected void Page_UnLoad(object sender, EventArgs e)
        {
            
        }

        
       
    }
}