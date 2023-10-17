#!/bin/bash

# compter_entites.sh

an=$1
type=$2

grep $an ./2018_*_* | grep $type | wc -l
