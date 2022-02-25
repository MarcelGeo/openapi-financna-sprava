# Ziskanie dostupnych zoznamov z APi
./iz.sh -al | jq

# Ziskanie detailu o zozname ds_dph_oud
./iz.sh -l ds_dph_oud | jq

# Ziskanie vsetkych platitelov DPH na strane 1 (defaultna hodnota)
./iz.sh -d ds_dphs | jq

# Ziskanie stranu 2 z platitelov DPH
./iz.sh -d ds_dphs -p 2 | jq

# Najdeme v zozname platitelov DPH vsetkych podla ic_dph SK2020317068
./iz.sh -d ds_dphs -s SK2020317068 -c ic_dph | jq


