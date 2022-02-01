#!/bin/sh

cupd=$(checkupdates | wc -l)
printf "%s\n" "$cupd"
