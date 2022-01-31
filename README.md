# BASH implementacia pre open api financnej spravy

Postupne sa bude rozsitovat funkcionalita. Aktuálne len ziskavame zoznam dostupnych registrov.

## Získanie aturizačného kľúča

1. Na [stránke finančnej správy](https://opendata.financnasprava.sk/page/openapi) vyplníme kontaktné údaje
2. Kľúč príde mailom

## Import autorizačného kľúča

Môžeme využiť súbor s názvom **key** do parent priečinku s ./config súborom alebo uložiť kľúč do premennej (export OAFS_KEY=[kľúč]).

## Súbory

### iz.sh

Vyhľadávanie v REST API pre OpenData FS Information Lists API.

Zoznam všetkých dostupných zoznamov (information lists):

``` bash
./iz.sh -al | jq
```

Detail o zozname Zoznam platiteľov DPH s číslom účtu správcu dane vedeným pre daňový subjekt.

```bash
./iz.sh -l ds_dph_oud | jq
```

Result:

- každý zoznam je identifkovaný podľa atribútu *slug*
- atribút *searchable* definuje vyhľadávacuie stĺpce

```json
{
  "name": "Zoznam platiteľov DPH s číslom účtu správcu dane vedeným pre daňový subjekt",
  "slug": "ds_dph_oud",
  "url": "https://report.financnasprava.sk/ds_dph_oud.zip",
  "update_date": "2022-01-31 05:05:02",
  "searchable": [
    "ic_dph"
  ]
}
```

Vyhľadávanie v jednotlivých zoznamoch podľa atribútu *slug=ds_dphs* a stĺpca *ic_dph* s hodnotou *SK2020317068*. V zozname platitelov DPH nájdeme spoločnosť s ICDPH *SK2020317068*

``` bash
# Nájdeme v zozname platitelov DPH všetkých podľa ic_dph SK2020317068
./iz.sh -ds ds_dphs -s SK2020317068 -c ic_dph | jq
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
