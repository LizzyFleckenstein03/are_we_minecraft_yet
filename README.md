# Are We Minecraft Yet?

A simple script for [mineclonia](https://codeberg.org/mineclonia/mineclonia/) to compare it's list of items to Minecraft 1.19, going by descriptions. It has some flaws, but it gives an overview.

Items with `not_in_creative_inventory` group are ignored to hide technical/state items, this leads to some wrong cases like barrier blocks (which aren't in creative inventory in minecraft either.)

- `./extract.sh` extracts the current list of items from mineclonia to `mineclonia.txt` (this obviously requires minetest and mineclonia to be installed)
- `./convert.sh` converts `minecraft.csv` to `minecraft.txt`
- `./compare.sh` compares `mineclonia.txt` to `minecraft.txt`

[delta](https://github.com/dandavison/delta) is used to compare the files, but you can also use `diff` or `git diff`.

`minecraft.csv` is taken from a [google doc](https://docs.google.com/spreadsheets/d/1-Jf8VpmG-V2ytZ0ppAEDtVSaVYEjQ-CYAZMt-eQMNxQ/edit#gid=984941200) by CommandLeo (File -> Download -> CSV).
