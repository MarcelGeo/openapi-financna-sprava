# BASH implementacia pre open api financnej spravy

Postupne sa bude rozsitovat funkcionalita. Aktuálne len ziskavame zoznam dostupnych registrov.

## Získanie aturizačného kľúča

1. Na [stránke finančnej správy](https://opendata.financnasprava.sk/page/openapi) vyplníme kontaktné údaje
2. Kľúč príde mailom

## Import autorizačného kľúča

Môžeme využiť súbor s názvom **key** do parent priečinku s ./config súborom alebo uložiť kľúč do premennej (export OAFS_KEY=[kľúč]).

