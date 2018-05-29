#!/bin/bash

reflector --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist