#!/bin/bash

find ./_wiki/ -type f -name "*.png" -exec rm {} \;


find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/quests -type f -name "*.png" -exec cp {} ./_wiki/items/quetes/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/jetons -type f -name "*.png" -exec cp {} ./_wiki/items/jetons/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/bags -type f -name "*.png" -exec cp {} ./_wiki/items/sacs/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/divers -type f -name "*.png" -exec cp {} ./_wiki/items/divers/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/keys -type f -name "*.png" -exec cp {} ./_wiki/items/keys/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/items/drops -type f -name "*.png" -exec cp {} ./_wiki/items/drops/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/consommable/tomes -type f -name "*.png" -exec cp {} ./_wiki/consommable/tomes/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/consommable/food -type f -name "*.png" -exec cp {} ./_wiki/consommable/nourriture/ \;
find ./Fritecraft_Items/assets/minecraft/optifine/cit/consommable/potions -type f -name "*.png" -exec cp {} ./_wiki/consommable/potions/ \;


find ./_wiki/ -type f -name "*.png" -exec convert -verbose \{} -scale 64x64 \{} \;


find ../Wiki/docs/pack/ -type f -name "*.png" -exec rm {} \;
cp -vR ./_wiki/* ../Wiki/docs/pack/

cd /root/Items/ && git add . && git commit -a -m "build commit `date`" && git push
cd /root/Wiki  && git add . && git commit -a -m "build commit `date`" && git push
