#!/bin/bash


apt-get -s dist-upgrade | grep -o "^[[:digit:]]\+"
