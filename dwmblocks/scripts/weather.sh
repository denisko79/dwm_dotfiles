#!/usr/bin/env bash

city="Yaroslavl"   # ← поменяй на свой город

weather=$(curl -s "wttr.in/$city?format=1")

echo "$weather"
