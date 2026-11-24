<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizareDate.aspx.cs" Inherits="Aplicatie.WebForm2" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ACTUALIZARE DATE ANGAJATI"></asp:Label>  <br />
    <asp:Label ID="Nume" runat="server" Text="Nume"></asp:Label>
    <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>  <br />
    <asp:Label ID="Prenume" runat="server" Text="Prenume"></asp:Label>
    <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnCauta" runat="server" Text="Cauta" OnClick="btnCauta_Click" />
    <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
    <asp:DetailsView ID="dvAngajat" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="50px" Width="551px" DataKeyNames="NR_CRT">
        <Fields>
            <asp:BoundField DataField="NR_CRT" HeaderText="NR_CRT" ReadOnly="True" SortExpression="NR_CRT" />
            <asp:TemplateField HeaderText="NUME" SortExpression="NUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Numele este obligatoriu" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NUME") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("NUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PRENUME" SortExpression="PRENUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Prenumele este obligatoriu" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Salariul trebuie sa fie &gt; 0" ForeColor="Red" MaximumValue="1000000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SPOR_PROCENT" SortExpression="SPOR_PROCENT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Sporul trebuie sa fie intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Premiile nu pot fi negative" ForeColor="Red" MaximumValue="1000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RETINERI" SortExpression="RETINERI">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("RETINERI") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Retinerile nu pot fi negative" ForeColor="Red" MaximumValue="1000000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("RETINERI") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("RETINERI") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField CancelText="Anulare" EditText="Editare" ShowEditButton="True" UpdateText="Salvare" />
        </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:angajati %>" ProviderName="<%$ ConnectionStrings:angajati.ProviderName %>" SelectCommand="SELECT &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;, &quot;NR_CRT&quot; FROM &quot;ANGAJATI&quot; WHERE ((&quot;NUME&quot; = :NUME) AND (&quot;PRENUME&quot; = :PRENUME))" DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;, &quot;NR_CRT&quot;) VALUES (:NUME, :PRENUME, :SALAR_BAZA, :SPOR_PROCENT, :PREMII_BRUTE, :RETINERI, :NR_CRT)" UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR_PROCENT&quot; = :SPOR_PROCENT, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;RETINERI&quot; = :RETINERI WHERE &quot;NR_CRT&quot; = :NR_CRT">
    <DeleteParameters>
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NUME" Type="String" />
        <asp:Parameter Name="PRENUME" Type="String" />
        <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
        <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
        <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
        <asp:Parameter Name="RETINERI" Type="Decimal" />
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="txtNume" Name="NUME" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="txtPrenume" Name="PRENUME" PropertyName="Text" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="NUME" Type="String" />
        <asp:Parameter Name="PRENUME" Type="String" />
        <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
        <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
        <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
        <asp:Parameter Name="RETINERI" Type="Decimal" />
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="NR_CRT">
        <Columns>
            <asp:CommandField CancelText="Anulare" EditText="Editare" ShowEditButton="True" UpdateText="Salvare" />
            <asp:BoundField DataField="NR_CRT" HeaderText="NR_CRT" SortExpression="NR_CRT" ReadOnly="True" />
            <asp:TemplateField HeaderText="NUME" SortExpression="NUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Numele este obligatoriu" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("NUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PRENUME" SortExpression="PRENUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Prenumele este obligatoriu" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Salariul trebuie sa fie &gt; 0" ForeColor="Red" MaximumValue="100000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SPOR_PROCENT" SortExpression="SPOR_PROCENT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Sporul trebuie sa fie intre 0 si 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("SPOR_PROCENT") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="Premiile nu pot fi negative" ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RETINERI" SortExpression="RETINERI">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("RETINERI") %>'></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="Retinerile nu pot fi negative" ForeColor="Red" MaximumValue="100000" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("RETINERI") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:angajati %>" ProviderName="<%$ ConnectionStrings:angajati.ProviderName %>" SelectCommand="SELECT &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;NR_CRT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot; FROM &quot;ANGAJATI&quot;" DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;NUME&quot;, &quot;PRENUME&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;NR_CRT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;) VALUES (:NUME, :PRENUME, :SALAR_BAZA, :SPOR_PROCENT, :NR_CRT, :PREMII_BRUTE, :RETINERI)" UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR_PROCENT&quot; = :SPOR_PROCENT, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;RETINERI&quot; = :RETINERI WHERE &quot;NR_CRT&quot; = :NR_CRT">
        <DeleteParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
</asp:Content>
