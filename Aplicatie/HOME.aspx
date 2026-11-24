<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="Aplicatie.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Aplicație pentru calculul salariilor</h2>

    <p>
        Această aplicație permite gestionarea angajaților unei firme și
        calculul automat al salariilor, pe baza unor formule prestabilite
        și a unor procente configurabile.
    </p>

    <hr />

    <h3>Instrucțiuni generale de utilizare</h3>

    <ul>
        <li>
            <b>Adăugare angajați</b> – permite introducerea unui nou angajat
            în baza de date. Valorile implicite sunt aplicate automat.
        </li>
        <li>
            <b>Actualizare date</b> – permite modificarea salariului de bază,
            sporului procentual, primelor și reținerilor.
        </li>
        <li>
            <b>Ștergere angajați</b> – permite eliminarea unui angajat din sistem.
        </li>
        <li>
            <b>Calcul salarii</b> – salariile sunt recalculate automat la orice
            modificare de date sau de procente.
        </li>
    </ul>

    <hr />

    <h3>Meniul de tipărire</h3>

    <ul>
        <li>
            <b>Stat de plată</b> – afișează lista tuturor angajaților, cu totaluri
            pe coloanele TOTAL_BRUT și VIRAT_CARD.
        </li>
        <li>
            <b>Fluturași</b> – generează fluturașii de salariu pentru toți
            angajații sau pentru un angajat selectat.
        </li>
    </ul>

    <hr />

    <h3>Configurare procente</h3>

    <p>
        Procentele pentru CAS, CASS și IMPOZIT pot fi modificate din
        meniul <b>MODIF_PROCENTE</b>. Accesul este protejat prin parolă.
        După modificare, salariile sunt recalculate automat.
    </p>

    <hr />

    
</asp:Content>
