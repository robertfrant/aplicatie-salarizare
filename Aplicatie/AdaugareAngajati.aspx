<%@ Page Title="Adaugare angajati"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="AdaugareAngajati.aspx.cs"
    Inherits="Aplicatie.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label2" runat="server"
        Font-Bold="True"
        Font-Size="X-Large"
        Text="ADAUGARE ANGAJATI">
    </asp:Label>

    <br /><br />

   
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            NR_CRT:
            <asp:Label ID="NR_CRTLabel1" runat="server" Text='<%# Eval("NR_CRT") %>' />
            <br />
            NUME:
            <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' />
            <br />
            PRENUME:
            <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' />
            <br />
            SALAR_BAZA:
            <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <%--NR_CRT:--%>
            <asp:TextBox ID="NR_CRTTextBox" runat="server" Text='<%# Bind("NR_CRT") %>' Visible="False" />
            <br />
            NUME:
            <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NUMETextBox" ErrorMessage="Adauga un nume" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            PRENUME:
            <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PRENUMETextBox" ErrorMessage="Adauga un prenume" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            SALAR_BAZA:
            <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SALAR_BAZATextBox" ErrorMessage="Valoare numerica pozitiva" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SALAR_BAZATextBox" ErrorMessage="Introdu salarul" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            SPOR_PROCENT:&nbsp;<asp:TextBox ID="SPORTextBox" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'>0</asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="SPORTextBox" ErrorMessage="Trebuie sa fie intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SPORTextBox" ErrorMessage=" Introdu spor" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            PREMII_BRUTE:&nbsp;<asp:TextBox ID="PREMIITextBox" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'>0</asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PREMIITextBox" ErrorMessage="Trebuie sa fie un numar pozitiv" ValidationExpression="^\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PREMIITextBox" ErrorMessage="Introdu premii" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Adauga" BorderStyle="Outset" />
            &nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            NR_CRT:
            <asp:Label ID="NR_CRTLabel" runat="server" Text='<%# Eval("NR_CRT") %>' />
            <br />
            NUME:
            <asp:Label ID="NUMELabel" runat="server" Text='<%# Bind("NUME") %>' />
            <br />
            PRENUME:
            <asp:Label ID="PRENUMELabel" runat="server" Text='<%# Bind("PRENUME") %>' />
            <br />
            SALAR_BAZA:
            <asp:Label ID="SALAR_BAZALabel" runat="server" Text='<%# Bind("SALAR_BAZA") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Adauga" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server"
        ProviderName="<%$ ConnectionStrings:angajati.ProviderName %>"
        ConnectionString="<%$ ConnectionStrings:angajati %>"

        SelectCommand="SELECT &quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot; FROM &quot;ANGAJATI&quot;"

        InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :SALAR_BAZA, :SPOR_PROCENT, :PREMII_BRUTE)"

        UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;SALAR_BAZA&quot; = :SALAR_BAZA WHERE &quot;NR_CRT&quot; = :NR_CRT"

        DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT">

        <InsertParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </UpdateParameters>

        <DeleteParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </DeleteParameters>

    </asp:SqlDataSource>

</asp:Content>
