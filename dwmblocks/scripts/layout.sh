#!/usr/bin/env bash

layout=$(xkblayout-state print "%s")

case "$layout" in
    us) echo "EN" ;;
    ru) echo "RU" ;;
    *)  echo "$layout" ;;
esac
