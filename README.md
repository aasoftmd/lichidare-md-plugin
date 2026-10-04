# LICHIDARE.MD pentru Claude

Plugin oficial al platformei [LICHIDARE.MD](https://lichidare.md): catalogul bunurilor scoase la vanzare in Republica Moldova din proceduri de insolvabilitate, executare silita, gaj bancar, bunuri confiscate SFS si licitatii ale primariilor.

## Ce contine

**Server MCP** `lichidare-md` (`https://mcp.lichidare.md/mcp`), doar citire, fara autentificare:

| Instrument | Ce face |
| --- | --- |
| `search_listings` | Cautare dupa text, categorie, procedura, regiune, interval de pret, doar loturi cu licitatie |
| `get_listing` | Detaliile unui anunt: loturi, preturi de pornire, data licitatiei, sursa oficiala |
| `upcoming_auctions` | Licitatiile din urmatoarele N zile |
| `market_overview` | Statistica agregata a catalogului |
| `alert_subscription_link` | Linkul formularului de alerte pe e-mail (criteriile se bifeaza pe formular) si canalul Telegram |

**Skills**
- `cauta-bunuri-licitatie`: fluxul de cautare si comparare a loturilor
- `verificare-lot-inainte-de-acont`: lista de verificare inainte de participarea la licitatie

## Exemple de intrebari

- "Ce terenuri agricole sunt la licitatie in raionul Nisporeni luna aceasta?"
- "Gaseste tractoare din gaj bancar sub 500 000 lei."
- "Ce licitatii sunt in Chisinau saptamana viitoare?"
- "Ce trebuie sa verific inainte sa depun acontul pentru lotul 8927?"
- "Какие квартиры продаются с торгов в Кишинёве?"

## Date si confidentialitate

- Datele provin din surse publice oficiale si sunt informative; forta juridica o are publicatia oficiala indicata in fiecare anunt.
- Serverul nu cere autentificare, nu colecteaza date personale ale utilizatorului si nu intoarce datele de contact ale vanzatorilor (contactul se face prin pagina anuntului).
- Serverul nu stocheaza parametrii cererilor si nici textul conversatiei; se inregistreaza doar erorile tehnice. Platforma de gazduire pastreaza jurnalele standard de acces HTTP.

## Privacy Policy

Politica de confidentialitate: https://lichidare.md/privacy.php. Rezumat: serverul MCP nu colecteaza date personale ale utilizatorilor Claude; parametrii de cautare se folosesc doar pentru a raspunde la cerere si nu se stocheaza; nu se transmit tertilor; contact: office@lichidare.md.

## Suport

office@lichidare.md, +373 69 072 200, https://lichidare.md/contact.php

Operatorul datelor: Muntean Oleg (persoana fizica), administratorul platformei LICHIDARE.MD. Detalii: https://lichidare.md/privacy.php.
