<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiplomInfo.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="MyTestAdvrtisment.DiplomInfo" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Название_конкурсной_работы" HeaderText="Название_конкурсной_работы" SortExpression="Название_конкурсной_работы" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
            <asp:BoundField DataField="Имя_и_Отчество" HeaderText="Имя_и_Отчество" SortExpression="Имя_и_Отчество" />
        </Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Название_конкурсной_работы], [Фамилия], [Имя_и_Отчество] FROM [MyTable] WHERE ([Название_конкурсной_работы] = @Название_конкурсной_работы)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Название_конкурсной_работы" QueryStringField="param" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
