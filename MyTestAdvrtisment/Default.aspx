<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="MyTestAdvrtisment.Start" %>



<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
  <div style="text-align:center;">
       <link  href="StyleSheet1.css" rel="stylesheet" type="text/css" />
  
    <asp:Label runat="server" Font-Size="Larger" Text="Введите номер студенческого билета"></asp:Label>
    <br />
      <br />
      <br />
    <asp:TextBox Height="40" BorderColor="Black" BackColor="#ffff99" Width="450" Font-Size="X-Large"  runat="server" ID="TextBoxID"></asp:TextBox> 
      <br />
      <asp:Label runat="server" Text="Надо ввести: 123456789" ForeColor="LightGoldenrodYellow" Font-Size="Small" ></asp:Label>
    <br />
       <br />
      <br />
    <asp:Button runat="server"   CssClass="button4" Text="Войти" OnClick="Unnamed_Click" />

  </div>
</asp:Content>
