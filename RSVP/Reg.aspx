<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" MasterPageFile="~/Site.master" UnobtrusiveValidationMode="None" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
            <h1>Приглашаем на семинар</h1>
            <p></p>
        </div>
            <div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <label>Ваше имя:</label><asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="&quot;Заполните поле имени&quot;" ForeColor="Red">&quot;Не оставляйте поле пустым&quot;</asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Ваш email:</label><asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="&quot;Заполните поле адреса&quot;" ForeColor="Red">&quot;Не оставляйте поле пустым&quot;</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="E-mail is not in a valid format" Display="Dynamic" ForeColor="Red">Адрес введен неверно!!!</asp:RegularExpressionValidator>
            </div>
            <div>
                <label>Ваш телефон:</label><asp:TextBox ID="phone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" ErrorMessage="&quot;Заполните поле ввода телефона&quot;" ForeColor="Red">&quot;Не оставляйте поле пустым&quot;</asp:RequiredFieldValidator>
            </div>
            <div> 
                <label>Вы будете делать доклад?</label> <asp:CheckBox ID="CheckBoxYN" runat="server" />
            </div>
            <div>
                Введите название доклада: <asp:TextBox ID="TextBoxTitle2" runat="server" Width="345px"></asp:TextBox>
            </div>
            <div>
                Введите аннотацию доклада: <asp:TextBox ID="TextBoxTextAnnot2" runat="server" Width="345px"></asp:TextBox>
            </div>
            <div> Введите название доклада: <asp:TextBox ID="TextBox1" runat="server" Width="345px"></asp:TextBox>
            </div>
            <div> Введите аннотацию доклада: <asp:TextBox ID="TextBox2" runat="server" Width="345px"></asp:TextBox>
            </div>
<div>
<button type="submit">Отправить ответ на приглашение RSVP</button>
</div>

</asp:Content>

