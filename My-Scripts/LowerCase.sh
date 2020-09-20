#!/usr/bin/env bash

echo -n "Enter String Uppercase: "

read -r x

echo "$x" | tr '[:upper:]' '[:lower:]'
