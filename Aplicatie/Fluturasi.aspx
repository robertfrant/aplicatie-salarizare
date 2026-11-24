<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fluturasi.aspx.cs" Inherits="Aplicatie.WebForm6" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="FLUTURASI SALARII"></asp:Label>
    <br />
<br />
<asp:Button ID="btnGenereaza" runat="server" Text="Genereaza fluturasi" OnClick="btnGenereaza_Click" />
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:Label ID="lblNume" runat="server" Text="NUME: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPrenume" runat="server" Text="PRENUME:"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnCautare" runat="server" OnClick="btnCautare_Click" Text="Genereaza fluturasul angajatului" />
    <br />
<br />
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" Height="50px" Width="350px" ToolPanelView="None" />
<br />
</asp:Content>
