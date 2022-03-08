<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SummaryBD.aspx.cs" Inherits="SummaryBD" %>

<form id="form1" runat="server">

<h2>Список участников</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="GuestResponseId" HeaderText="GuestResponseId" ReadOnly="True" SortExpression="GuestResponseId" />
            <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Электронный адрес" ReadOnly="True" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
            <asp:BoundField DataField="Rdata" DataFormatString="{0:d}" HeaderText="Дата регистрации" ReadOnly="True" SortExpression="Rdata" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="SampleContext" EntityTypeName="" Select="new (GuestResponseId, Name, Email, Phone, WillAttend, Rdata, Reports)" TableName="GuestResponses">
    </asp:LinqDataSource>
</form>