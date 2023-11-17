<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Desmp2.Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Upload de archivos</h1>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField CommandName="Descargar" Text="Bot&#243;n" ButtonType="Button" ShowHeader="True" HeaderText="Descargar"></asp:ButtonField>
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Text="Seleccion archivo a subir"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</asp:Content>