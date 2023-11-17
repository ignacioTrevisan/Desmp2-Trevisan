<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Desmp2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="TextBox1" type="email" runat="server" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="El email es incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="textbox1">*</asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo Email es obligatorio" ControlToValidate="textbox1">*
                                                                                                                                                                                                                                                   </asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo userName es obligatorio" ControlToValidate="textbox2">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Edad"></asp:Label>
    <asp:TextBox ID="TextBox3" Type="Number" runat="server" onkeydown="return false;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El campo edad es obligatorio" Text="*" ControlToValidate="textbox3"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="La edad debe ser mayor a 15 años" MinimumValue="15" MaximumValue="200" ControlToValidate="textbox3">*</asp:RangeValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Ingrese contraseña"></asp:Label>
    <asp:TextBox ID="pass" Type="Password" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Repita contraseña"></asp:Label>
    <asp:TextBox ID="rpass" Type="Password" runat="server" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ambo campos de los ingresos de contraseña son obligatorios" Text="*" ControlToValidate="rpass"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas deben ser identicas" ControlToCompare="pass" ControlToValidate="rpass">*</asp:CompareValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>