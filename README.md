# BASH implementacia pre open api financnej spravy

Postupne sa bude rozsitovat funkcionalita. Aktuálne len ziskavame zoznam dostupnych registrov.

## Získanie aturizačného kľúča

1. Na [stránke finančnej správy](https://opendata.financnasprava.sk/page/openapi) vyplníme kontaktné údaje
2. Kľúč príde mailom

## Import autorizačného kľúča

Môžeme využiť súbor s názvom **key** do parent priečinku s ./config súborom alebo uložiť kľúč do premennej (export OAFS_KEY=[kľúč]).

## Súbory

### ds_dphs_search.sh

Vyhladavanie zo zoznamu subjektov registrovaných k DPH

``` bash
# Najdeme v zozname platitelov DPH vsetkych podla ic_dph SK2020317068
# popis všetkých argumentov je v súbore!
ds_dphs_search.sh SK2020317068 | jq
```

Result

```json
{
  "page": 1,
  "pages": 1,
  "itemsCount": 1,
  "itemsPerPage": 1000,
  "data": [
    {
      "ic_dph": "SK2020317068",
      "ico": "31333532",
      "nazov_ds": "ESET, spol. s r.o.",
      "obec": "Bratislava - mestská časť Petržalka",
      "psc": "85101",
      "ulica_cislo": "Einsteinova 24",
      "stat": "Slovensko",
      "druh_reg_dph": "§4",
      "datum_reg": "11.10.2000",
      "datum_zmeny_druhu_reg": null
    }
  ]
}
```

``` bash
# Njademe v zozanme platitelov DPH konkretne zaznamy podla ic_dph SK2020317068
# popis všetkých argumentov je v súbore!
ds_dphs_search.sh SK2020317068 | jq '.data[]'
```

Result

```json
{
  "ic_dph": "SK2020317068",
  "ico": "31333532",
  "nazov_ds": "ESET, spol. s r.o.",
  "obec": "Bratislava - mestská časť Petržalka",
  "psc": "85101",
  "ulica_cislo": "Einsteinova 24",
  "stat": "Slovensko",
  "druh_reg_dph": "§4",
  "datum_reg": "11.10.2000",
  "datum_zmeny_druhu_reg": null
}
```
