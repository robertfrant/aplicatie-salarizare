<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StergereAngajati.aspx.cs" Inherits="Aplicatie.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="STERGERE ANGAJATI"></asp:Label>
    <br />
    <asp:Label ID="lblNume" runat="server" Text="NUME:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPrenume" runat="server" Text="PRENUME:"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnCauta" runat="server" OnClick="btnCauta_Click" Text="Cauta" />
    <br />
    <br />
    <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:GridView ID="gvAngajati" runat="server" AutoGenerateColumns="False" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvAngajati_SelectedIndexChanged" Visible="False">
        <Columns>
            <asp:CommandField SelectText="Selecteaza" ShowCancelButton="False" ShowSelectButton="True" />
            <asp:BoundField DataField="NUME" HeaderText="NUME" SortExpression="NUME" />
            <asp:BoundField DataField="PRENUME" HeaderText="PRENUME" SortExpression="PRENUME" />
            <asp:BoundField DataField="SALAR_BAZA" HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:angajati %>" DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :SALAR_BAZA)" ProviderName="<%$ ConnectionStrings:angajati.ProviderName %>" SelectCommand="SELECT &quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot; FROM &quot;ANGAJATI&quot; WHERE ((&quot;NUME&quot; = :NUME) AND (&quot;PRENUME&quot; = :PRENUME))" UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;SALAR_BAZA&quot; = :SALAR_BAZA WHERE &quot;NR_CRT&quot; = :NR_CRT">
        <DeleteParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtNume" Name="NUME" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPrenume" Name="PRENUME" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnStergere" runat="server" OnClick="btnStergere_Click" OnClientClick="return confirm('Sigur doriți ștergerea angajatului selectat?');" Text="Sterge" Visible="False" />
</asp:Content>
