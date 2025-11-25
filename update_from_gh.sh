#!/bin/bash

git co main && git pull upstream main && git pfc && git co personal-scripts && git rebase main && git pfc
