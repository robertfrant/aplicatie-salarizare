<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StatPlata.aspx.cs" Inherits="Aplicatie.WebForm5" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="STAT DE PLATA"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="ID mai mare decat:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cauta" />
&nbsp;&nbsp;
    <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Informatii suplimentare:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtInfo" runat="server" Visible="False" Width="300px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnPrint" runat="server" OnClick="btnPrint_Click" Text="Salveaza PDF" Visible="False" />
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ToolPanelView="None" />
</asp:Content>
