---
name: verificare-lot-inainte-de-acont
description: Lista de verificare inainte de a depune acontul pentru un bun vandut in insolvabilitate, executare silita sau gaj bancar in Republica Moldova. Foloseste cand utilizatorul a ales un lot de pe LICHIDARE.MD si intreaba ce trebuie verificat, ce riscuri are sau cum participa la licitatie.
---

# Verificarea lotului inainte de acont

Scopul este ca utilizatorul sa stie ce sa verifice si unde, nu sa primeasca o opinie juridica. Pentru o concluzie pe cazul concret, recomanda un jurist sau avocat.

## 1. Datele lotului

Apeleaza `get_listing` cu id-ul ales si retine: procedura, vanzatorul si rolul lui, data licitatiei, pretul de pornire, sursa oficiala (`source_url`).

## 2. Lista de verificare

Prezinta lista adaptata procedurii. Pentru fiecare punct: ce se verifica, unde, de ce conteaza.

**Pentru orice procedura**
- Publicatia oficiala: deschide `source_url` si confrunta pretul, componenta lotului, data, ora si locul licitatiei. Catalogul poate contine erori de preluare; publicatia oficiala prevaleaza.
- Conditiile de participare: marimea acontului, termenul si contul pentru achitare, documentele cerute, termenul de depunere a cererii. Se iau din publicatie sau de la vanzator, nu din catalog.
- Starea reala a bunului: vizionare inainte de licitatie; pentru utilaje, verifica daca sunt demontabile si cine suporta demontarea si transportul.
- Costurile suplimentare: taxe de inregistrare, eventual TVA, transport, evaluare.

**Imobile si terenuri**
- Extrasul din Registrul bunurilor imobile (ASP): proprietar, suprafata, destinatie, sarcini (ipoteci, interdictii, sechestre).
- Daca sarcinile se sting prin vanzare sau trec la cumparator depinde de procedura si de lege: verifica textul legal in vigoare pe legis.md sau cu un jurist, nu presupune.
- Ocupantii, chiriasii, datoriile la utilitati.

**Transport si bunuri mobile**
- Registrul garantiilor reale mobiliare: gajuri inregistrate pe bun.
- Pentru vehicule: datele de inmatriculare, kilometrajul, actele.

**Dupa procedura**
- Insolvabilitate: vanzatorul este administratorul autorizat sau lichidatorul; verifica in Registrul Insolvabilitatii (reginsolv.md) ca procedura si dosarul sunt cele indicate.
- Executare silita: vanzatorul este executorul judecatoresc; verifica datele executorului si numarul procedurii de executare.
- Gaj bancar: vanzarea o face banca creditoare; clarifica cu banca daca vanzarea este directa sau prin licitatie si ce acte transmite la semnare.
- SFS si primarii: verifica regulamentul licitatiei publicat de organizator.

**Semnale de atentie**
- Publicatia oficiala mentioneaza o licitatie repetata sau un pret redus fata de runda anterioara: bunul nu s-a vandut; afla de ce (pret, stare, litigii).
- Licitatie in mai putin de 5 zile lucratoare: termenul pentru acont poate fi deja depasit.

## 3. Pasul urmator

- Contactul vanzatorului: pagina anuntului (`url`).
- Daca utilizatorul vrea asistenta la verificare sau reprezentare, mentioneaza ca pe pagina principala LICHIDARE.MD exista un formular de asistenta juridica cu juristi independenti. Mentioneaza o singura data, fara insistenta.

## Reguli

- Nu cita articole de lege din memorie. Daca utilizatorul cere temeiul legal, spune ce act normativ reglementeaza si recomanda verificarea redactiei in vigoare pe legis.md.
- Nu evalua daca pretul este "bun" pe baza de presupuneri; poti compara doar cu alte anunturi gasite prin `search_listings`, spunand clar ca este o comparatie de catalog, nu o evaluare.
- Raspunde in limba utilizatorului.
