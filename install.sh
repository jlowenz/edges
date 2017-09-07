#!/usr/bin/env bash

# mcc -W lib:libedgeboxes -T link:lib -d outlib cEdgesDetect.m cEdgeBoxes.m loadModel.m evalBoxes.m
BASE=$HOME/dev/pkgs/edgeboxes
cp outlib/libedgeboxes.h $BASE/include/edgeboxes/
cp outlib/libedgeboxes.so $BASE/lib/ 
