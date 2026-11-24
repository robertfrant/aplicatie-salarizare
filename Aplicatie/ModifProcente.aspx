<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifProcente.aspx.cs" Inherits="Aplicatie.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="MODIFICARE PROCENTE"></asp:Label>
<br />
<asp:Label ID="Label3" runat="server" Text="CAS (%)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtCAS" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCAS" ErrorMessage="Introduceti CAS!" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCAS" ErrorMessage=" Intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
<br />
<asp:Label ID="Label4" runat="server" Text="CASS (%)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtCASS" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCASS" ErrorMessage="Introduceti CASS" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtCASS" ErrorMessage=" Intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
<br />
<asp:Label ID="Label5" runat="server" Text="IMPOZIT (%)"></asp:Label>
&nbsp;
<asp:TextBox ID="txtImpozit" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtImpozit" ErrorMessage="Introduceti impozit!" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtImpozit" ErrorMessage=" Intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
<br />
<asp:Label ID="Label6" runat="server" Text="Parola:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtParola" runat="server" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtParola" ErrorMessage="Introduceti parola!" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<asp:Button ID="btnModifica" runat="server" OnClick="btnModifica_Click" Text="Modifica procente" />
<br />
<asp:Label ID="lblMesaj" runat="server"></asp:Label>
<br />
</asp:Content>
