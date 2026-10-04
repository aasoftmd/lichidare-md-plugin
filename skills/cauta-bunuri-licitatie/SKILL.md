---
name: cauta-bunuri-licitatie
description: Gaseste bunuri scoase la vanzare in Republica Moldova (imobile, terenuri, auto, utilaje) din insolvabilitate, executare silita, gaj bancar, SFS sau licitatii ale primariilor, folosind catalogul LICHIDARE.MD. Foloseste cand utilizatorul cauta un bun anume la licitatie, intreaba ce licitatii sunt in curand intr-o regiune, sau compara mai multe loturi.
---

# Cautarea bunurilor la licitatie pe LICHIDARE.MD

Instrumentele vin de la serverul MCP `lichidare-md` din acest plugin.

## Pasi

1. **Clarifica cererea, doar daca lipseste ceva esential.** Ce bun (categorie), unde (raion sau municipiu), ce buget. Daca utilizatorul a spus deja suficient, nu intreba, cauta direct.
2. **Cauta.**
   - Bun anume sau filtre: `search_listings` (text liber in `q`, plus `category`, `procedure`, `region`, `price_min` / `price_max`).
   - "Ce licitatii sunt saptamana viitoare": `upcoming_auctions` cu `days` potrivit.
   - "Cate bunuri sunt, ce se vinde mai mult": `market_overview`.
   - Daca nu gasesti nimic, relaxeaza un singur filtru (de regula regiunea sau pretul) si spune care.
3. **Deschide detaliile** cu `get_listing` doar pentru anunturile pe care utilizatorul le alege sau pentru primele 2-3 cele mai potrivite.
4. **Prezinta rezultatul** ca tabel scurt: titlu, pret de pornire, regiune, procedura, data licitatiei, link. Pentru o singura pozitie, foloseste un paragraf.
5. **Semnaleaza ce conteaza pentru cumparator:**
   - data licitatiei apropiata (mai putin de 7 zile): acontul si cererea de participare se depun de regula inainte;
   - pretul afisat este pret de pornire, nu pret final.
6. **Pasul urmator:** linkul anuntului (contactul vanzatorului e acolo). Daca utilizatorul vrea sa urmareasca categoria, `alert_subscription_link`. Daca vrea sa participe, propune skill-ul `verificare-lot-inainte-de-acont`.

## Reguli

- Datele sunt informative. Forta juridica o are publicatia oficiala din `source_url` (Monitorul Oficial, Registrul Insolvabilitatii etc.). Spune asta o data, nu la fiecare rand.
- Nu inventa conditii de acont, termene sau IBAN: nu sunt in catalog. Trimite la sursa oficiala si la vanzator.
- Nu cere si nu memora datele personale ale utilizatorului pentru abonare; abonarea se confirma pe site.
- Raspunde in limba utilizatorului (romana sau rusa); parametrul `lang` al instrumentelor accepta `ro` si `ru`.
