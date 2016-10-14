#!/bin/bash

# OpenAssistant 0.01
# 2016 General Public License V3
# By Andrew Vavrek, Clayton G. Hobbs, Jezra

# assist.sh - Launch Script

# OpenAssistant Global Variables

export ASSISTNAME="assistant"
export USERNAME="my friend"
export VOICE="/usr/bin/festival --tts"
export BROWSER="firefox"
export CONFIGDIR="./etc"
export KEYPRESS="xvkbd -xsendevent -secure -text"
export TERMINAL="xfce4-terminal -x"

# Gstreamer Library Path

export GSTREAMER_LIB_PATH=/usr/lib/gstreamer-1.0

# Add Local Binary Directory To Path

export PATH="$HOME/bin:../assist/bin:$PATH"

# Make OpenAssistant Files Executable

chmod -R +x ../assist/*

# Launch OpenAssistant In Continuous Mode 
# With History Of 20 Recent Commands

python3.5 assistant.py -c -H 20

# Launch Gui (buggy): use "./assistant.py -i G"
# Launch In 'continuous' Listen Mode: add "-C"
# Use Mic Other Than System Default: add "-m <device Number>"
# Find Mic Device Number: "cat /proc/asound/cards" Or "arecord -l"
# Pass Each Word As A Separate Argument: add "-p"
# Run Command Each Valid Sentence: "--valid-sentence-command=/path/to/command"
# Run Command Each Invalid Sentence: "--invalid-sentence-command=/path/to/command"

# Default Arguments Configured In "./etc/commands.json"
