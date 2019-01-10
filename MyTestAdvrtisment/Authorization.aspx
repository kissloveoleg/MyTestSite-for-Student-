<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authorization.aspx.cs" Inherits="MyTestAdvrtisment.Authorization" MasterPageFile="~/Site1.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
  
   

     <div style="text-align:center; ">
         <asp:Table runat="server" CssClass="table">
          
                 <asp:TableRow> <asp:TableCell > Имя </asp:TableCell> <asp:TableCell> <br /> <asp:TextBox runat="server" ID="NameTextBox"></asp:TextBox> <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="NameTextBox" ErrorMessage="Не может быть пустым!" Font-Size="8" ForeColor="Red"></asp:RequiredFieldValidator> </asp:TableCell> </asp:TableRow> 
                 <asp:TableRow> <asp:TableCell > Фамилия </asp:TableCell> <asp:TableCell> <br /> <asp:TextBox runat="server" ID="LastNameTextBox"></asp:TextBox> <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" ControlToValidate="LastNameTextBox" ErrorMessage="Не может быть пустым!" Font-Size="8" ForeColor="Red"></asp:RequiredFieldValidator> </asp:TableCell> </asp:TableRow>
                 <asp:TableRow> <asp:TableCell > Логин </asp:TableCell> <asp:TableCell> <br /> <asp:TextBox runat="server" ID="LoginTextBox"></asp:TextBox>  <br />  <asp:Label runat="server" ID="ErrorLabel" Text="Данный логин уже занят" ForeColor="Red" Visible="false"></asp:Label>   <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  runat="server" ControlToValidate="LoginTextBox" ErrorMessage="Не может быть пустым!" Font-Size="8" ForeColor="Red"></asp:RequiredFieldValidator> </asp:TableCell> </asp:TableRow>
                 <asp:TableRow> <asp:TableCell > Пароль </asp:TableCell> <asp:TableCell> <asp:RegularExpressionValidator
                     runat="server"
                     ID="RegularValidator1" 
                     ControlToValidate="PasswordTextBox"
                     ErrorMessage ="Строчные и прописные латинские буквы, цифры, спецсимволы. Минимум 8 символов"
                      Font-Size="6"
                      ForeColor="Red"
                      ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator> <br /> <asp:TextBox runat="server" ID="PasswordTextBox" TextMode="Password"></asp:TextBox> <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Не может быть пустым!" Font-Size="8" ForeColor="Red"></asp:RequiredFieldValidator>
                        </asp:TableCell> </asp:TableRow>
                 <asp:TableRow> <asp:TableCell > Повторите пароль </asp:TableCell> <asp:TableCell> <asp:CompareValidator runat="server" ID="CompareValidator1" ErrorMessage="Пароли должны совпадать" ForeColor="Red" ControlToValidate="Password2TextBox" ControlToCompare="PasswordTextBox"></asp:CompareValidator> <br /> <asp:TextBox TextMode="Password" runat="server" ID="Password2TextBox"></asp:TextBox> <br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" ControlToValidate="Password2TextBox" ErrorMessage="Не может быть пустым!" Font-Size="8" ForeColor="Red"></asp:RequiredFieldValidator>  </asp:TableCell> </asp:TableRow>               
                               
             </asp:Table>
         <br />
        <asp:Button runat="server" Text="Зарегистрироваться" CssClass="button4"  OnClick="Unnamed_Click" />
         </div>
       


    
</asp:Content>