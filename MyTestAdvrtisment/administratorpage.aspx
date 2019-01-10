<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administratorpage.aspx.cs" Inherits="MyTestAdvrtisment.administratorpage" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head"  runat="server">
  
 
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
     <asp:DetailsView CssClass="table" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
         <Fields>
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
             <asp:BoundField DataField="Имя_и_Отчество" HeaderText="Имя_и_Отчество" SortExpression="Имя_и_Отчество" />
             <asp:BoundField DataField="Название_конкурсной_работы" HeaderText="Название_конкурсной_работы" SortExpression="Название_конкурсной_работы" />
             <asp:BoundField DataField="Номинация_конкурсной_работы" HeaderText="Номинация_конкурсной_работы" SortExpression="Номинация_конкурсной_работы" />
             <asp:BoundField DataField="Дисциплина" HeaderText="Дисциплина" SortExpression="Дисциплина" />
             <asp:BoundField DataField="На_каком_уровне_апробирована_анкета" HeaderText="На_каком_уровне_апробирована_анкета" SortExpression="На_каком_уровне_апробирована_анкета" />
             <asp:BoundField DataField="Полное_название_организации_где_работаете" HeaderText="Полное_название_организации_где_работаете" SortExpression="Полное_название_организации_где_работаете" />
             <asp:BoundField DataField="Должность" HeaderText="Должность" SortExpression="Должность" />
             <asp:BoundField DataField="Город_населенный_пункт" HeaderText="Город_населенный_пункт" SortExpression="Город_населенный_пункт" />
             <asp:BoundField DataField="Мобильный_телефон" HeaderText="Мобильный_телефон" SortExpression="Мобильный_телефон" />
             <asp:BoundField DataField="Электронная_почта" HeaderText="Электронная_почта" SortExpression="Электронная_почта" />
             <asp:BoundField DataField="Откуда_о_нас_узнали" HeaderText="Откуда_о_нас_узнали" SortExpression="Откуда_о_нас_узнали" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
         </Fields>
       

     </asp:DetailsView>


    


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [MyTable] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [MyTable] ([Фамилия], [Имя_и_Отчество], [Название_конкурсной_работы], [Номинация_конкурсной_работы], [Дисциплина], [На_каком_уровне_апробирована_анкета], 
        [Полное_название_организации_где_работаете], [Должность], [Город_населенный_пункт], [Мобильный_телефон], [Электронная_почта], [Откуда_о_нас_узнали])
        VALUES (@Фамилия, @Имя_и_Отчество, @Название_конкурсной_работы, @Номинация_конкурсной_работы, @Дисциплина, @На_каком_уровне_апробирована_анкета, 
        @Полное_название_организации_где_работаете, @Должность, @Город_населенный_пункт, @Мобильный_телефон, @Электронная_почта, @Откуда_о_нас_узнали)"
        SelectCommand="SELECT * FROM [MyTable]" 
        UpdateCommand="UPDATE [MyTable] SET [Фамилия] = @Фамилия, [Имя_и_Отчество] = @Имя_и_Отчество, 
        [Название_конкурсной_работы] = @Название_конкурсной_работы, [Номинация_конкурсной_работы] = @Номинация_конкурсной_работы, [Дисциплина] = @Дисциплина, 
        [На_каком_уровне_апробирована_анкета] = @На_каком_уровне_апробирована_анкета, [Полное_название_организации_где_работаете] = @Полное_название_организации_где_работаете, 
        [Должность] = @Должность, [Город_населенный_пункт] = @Город_населенный_пункт, [Мобильный_телефон] = @Мобильный_телефон, [Электронная_почта] = @Электронная_почта, [Откуда_о_нас_узнали]
        = @Откуда_о_нас_узнали WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Фамилия" Type="String" />
            <asp:Parameter Name="Имя_и_Отчество" Type="String" />
            <asp:Parameter Name="Название_конкурсной_работы" Type="String" />
            <asp:Parameter Name="Номинация_конкурсной_работы" Type="String" />
            <asp:Parameter Name="Дисциплина" Type="String" />
            <asp:Parameter Name="На_каком_уровне_апробирована_анкета" Type="String" />
            <asp:Parameter Name="Полное_название_организации_где_работаете" Type="String" />
            <asp:Parameter Name="Должность" Type="String" />
            <asp:Parameter Name="Город_населенный_пункт" Type="String" />
            <asp:Parameter Name="Мобильный_телефон" Type="String" />
            <asp:Parameter Name="Электронная_почта" Type="String" />
            <asp:Parameter Name="Откуда_о_нас_узнали" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Фамилия" Type="String" />
            <asp:Parameter Name="Имя_и_Отчество" Type="String" />
            <asp:Parameter Name="Название_конкурсной_работы" Type="String" />
            <asp:Parameter Name="Номинация_конкурсной_работы" Type="String" />
            <asp:Parameter Name="Дисциплина" Type="String" />
            <asp:Parameter Name="На_каком_уровне_апробирована_анкета" Type="String" />
            <asp:Parameter Name="Полное_название_организации_где_работаете" Type="String" />
            <asp:Parameter Name="Должность" Type="String" />
            <asp:Parameter Name="Город_населенный_пункт" Type="String" />
            <asp:Parameter Name="Мобильный_телефон" Type="String" />
            <asp:Parameter Name="Электронная_почта" Type="String" />
            <asp:Parameter Name="Откуда_о_нас_узнали" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>


    


    </asp:Content>
