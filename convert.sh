#!/bin/bash
# converts minecraft.csv to minecraft.txt
cut -d',' -f2 < minecraft.csv | tail -n +2 | sort > minecraft.txt
