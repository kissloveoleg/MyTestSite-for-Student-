<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="MyTestAdvrtisment.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head"  runat="server">
  
 
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   
      <asp:Table CssClass="table" runat="server" Height="56px" Width="500px">  
        <asp:TableRow> <asp:TableCell >Фамилия*</asp:TableCell><asp:TableCell><br /> <asp:TextBox ID="TextBoxLastName"  runat="server"></asp:TextBox> <br /> <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" 
            runat="server"
            ControlToValidate="TextBoxLastName"
            ErrorMessage="Не может быть пустым!"
            Font-Size="8"           
            ForeColor="Red">
        </asp:RequiredFieldValidator> </asp:TableCell>  </asp:TableRow>
        <asp:TableRow><asp:TableCell>Имя и отчество*</asp:TableCell><asp:TableCell><br /> <asp:TextBox runat="server" ID="TextBoxName"></asp:TextBox><br /><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2" 
            runat="server"
            ControlToValidate="TextBoxName"
            ErrorMessage="Не может быть пустым!"
            Font-Size="8"           
            ForeColor="Red">
        </asp:RequiredFieldValidator> </asp:TableCell></asp:TableRow>
        <asp:TableRow><asp:TableCell>Название конкурсной работы*</asp:TableCell><asp:TableCell><br /> <asp:TextBox runat="server" ID="TextBoxDiplomName"></asp:TextBox> <br /><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3" 
            runat="server"
            ControlToValidate="TextBoxDiplomName"
            ErrorMessage="Не может быть пустым!"
            Font-Size="8"           
            ForeColor="Red">
        </asp:RequiredFieldValidator> </asp:TableCell> </asp:TableRow>
        <asp:TableRow><asp:TableCell>Номинация конкурсной работы*</asp:TableCell><asp:TableCell> <asp:DropDownList runat="server" ID="DDL1"> 
                                                                                                        <asp:ListItem Text="Учебный проект"></asp:ListItem>
                                                                                                        <asp:ListItem Text="Воспитательный проект"></asp:ListItem>
                                                                                                        <asp:ListItem Text="Школьный проект"></asp:ListItem>
                                                                                                        <asp:ListItem Text="On-line образовательный ресурс"></asp:ListItem>
                                                                                                        <asp:ListItem Text="Учебно-методическое обеспечение"></asp:ListItem>
                                                                                                 </asp:DropDownList> </asp:TableCell> </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Дисциплина*</asp:TableCell><asp:TableCell> <br /> <asp:TextBox ID="TextBoxDiszipl"  runat="server"></asp:TextBox> <br /> <asp:Label runat="server" ForeColor="LightSkyBlue" Text="Наример: Биология, математика"></asp:Label><br /><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4" 
            runat="server"
            ControlToValidate="TextBoxDiszipl"
            ErrorMessage="Не может быть пустым!"
            Font-Size="8"           
            ForeColor="Red">
        </asp:RequiredFieldValidator>  </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Была ли апробирована ваша анкета?</asp:TableCell><asp:TableCell>  
                                                                                                        <asp:RadioButtonList  ID="RadioButtonList1" runat="server" AutoPostBack="true">
                                                                                                                         <asp:ListItem  Text="Да" Value="yes"></asp:ListItem>
                                                                                                                         <asp:ListItem  Text="Нет" Value="no"></asp:ListItem>
                                                                                                       </asp:RadioButtonList>    </asp:TableCell> </asp:TableRow>
         <asp:TableRow ID="TableRowApprobir" Visible="false"> <asp:TableCell>Если да, то на каком уровне?</asp:TableCell> <asp:TableCell> <asp:TextBox runat="server" ID="Textbox2"></asp:TextBox> </asp:TableCell> </asp:TableRow>


        <asp:TableRow> <asp:TableCell>Полное название организации где работаете</asp:TableCell><asp:TableCell> <br /> <asp:TextBox runat="server" ID="TextBoxOrganization"></asp:TextBox><br /> <br /> </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Должность</asp:TableCell><asp:TableCell> <br /> <asp:TextBox runat="server" ID="TextBoxDolzhnost"></asp:TextBox> <br /> <br /> </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Город или населенный пункт*</asp:TableCell><asp:TableCell><br /> <asp:TextBox runat="server" ID="TextBoxCitiy" ForeColor="LightGray"></asp:TextBox><br /><asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5" 
            runat="server"
            ControlToValidate="TextBoxCitiy"
            ErrorMessage="Не может быть пустым!"
            Font-Size="8"           
            ForeColor="Red"></asp:RequiredFieldValidator>  </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Мобильный телефон*</asp:TableCell><asp:TableCell><br /> <asp:TextBox runat="server" ID="TextBoxPhoneNumber"></asp:TextBox> <br /><asp:RegularExpressionValidator runat="server"
            ID="RegularExpressionValidator1"
            ControlToValidate="TextBoxPhoneNumber"
            ErrorMessage="Введите правильный номер"
            Font-Size="8"
            ForeColor="Red" ValidationExpression="^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$"
            ></asp:RegularExpressionValidator> </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Электроная почта*</asp:TableCell><asp:TableCell><br /> <asp:TextBox runat="server" ID="TextBoxEmail"></asp:TextBox> <br /><asp:RegularExpressionValidator runat="server"
            ID="RegularExpressionValidator2"
            ControlToValidate="TextBoxEmail"
            ErrorMessage="Неверный формат почты"
            Font-Size="8"
            ForeColor="Red" ValidationExpression="^([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$"></asp:RegularExpressionValidator> </asp:TableCell>  </asp:TableRow>
        <asp:TableRow> <asp:TableCell>Как вы о нас узнали</asp:TableCell><asp:TableCell><asp:ListBox runat="server" ID="ListBoxAdvertisment">
                                                                                                       <asp:ListItem Text="Сайт МОН"></asp:ListItem>
                                                                                                       <asp:ListItem Text="Сайт Майкрософт"></asp:ListItem>
                                                                                                       <asp:ListItem Text="Сайт сети 'Партнерское обучение' "></asp:ListItem>
                                                                                                       <asp:ListItem Text="Областное управление образованием"></asp:ListItem>
                                                                                                       <asp:ListItem Text="Городское управление образованием"></asp:ListItem>
                                                                                                       <asp:ListItem Text="Osvita.com"></asp:ListItem>           
                                                                                         </asp:ListBox>
                                                                                          <br />Свой вариант <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox>  </asp:TableCell>  </asp:TableRow>
        
    </asp:Table>

    
            <br />
            <asp:CheckBox runat="server" ID="CheckBoxResult"  Text="Я даю соглашение на обработку личных данных" AutoPostBack="true" />
            <br />
            <asp:Button runat="server" ID="ButtonResult" OnClick="ButtonResult_Click" Visible="false" Text="Зарегистрироваться" CssClass="button4" />
            <br />
            <asp:Label runat="server" ID="ResultLabel" Width="600" Height="50" ForeColor="White" Font-Size="20" BackColor="Gold" Visible="false" >Данные внесены в БД, спасибо за участие!</asp:Label>
       <%-- </div>--%>
</asp:Content> 
