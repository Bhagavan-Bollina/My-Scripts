#!/usr/bin/env bash

echo -n 'Enter the First Number: '

read -r x

echo -n 'Enter the Second Number: '

read -r y

echo "$x + $y = $((x+y))"
