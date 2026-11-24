# Aplicație de salarizare

Aplicație web pentru gestionarea angajaților unei firme și calculul automat al salariilor, realizată ca proiect de master.

## Funcționalități

- **Gestiune angajați**: adăugare, actualizare și ștergere, cu validări pe câmpuri.
- **Calcul automat al salariilor** prin proceduri stocate Oracle (`RECALCULEAZA_SALARII`), refăcut la orice modificare.
- **Procente configurabile** pentru CAS, CASS și impozit (`UPDATE_PROCENTE`), cu acces protejat prin parolă.
- **Rapoarte Crystal Reports**: stat de plată cu totaluri și fluturași de salariu, cu export PDF.
- **Banner dinamic** cu AJAX (UpdatePanel + Timer).

## Tehnologii

C# · ASP.NET Web Forms · .NET Framework 4.7.2 · Oracle Database (PL/SQL) · Crystal Reports · Bootstrap 5

## Rulare

1. Deschide `Aplicatie.sln` în Visual Studio și restaurează pachetele NuGet.
2. Instalează SAP Crystal Reports runtime pentru Visual Studio.
3. Configurează conexiunea Oracle în `Aplicatie/Web.config` (tabela `ANGAJATI` și procedurile stocate).
4. Rulează proiectul cu IIS Express.
