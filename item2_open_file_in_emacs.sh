#!/bin/bash

# exec &> ~/logfile.txt

# In iTerm2 Session preferences <Advanced> pane setup Semantic History to:
#
# [Run coprocess...]
# ~/dot/item2_open_file_in_emacs.sh +\2 \1

if [[ $1 == "+" ]]; then
    shift
fi

openInFinder()
{
    ext=${1##*.}

    extArray=(
        "png"
        "jpg"
        "pdf"
    )

    for ex in ${extArray[@]}
    do
        if [ "$ext" = "$ex" ]; then
            open $1
            exit
        fi
    done

    if [ -d "$1" ]; then
        open $1
        exit
    fi
}

openInFinder $1
openInFinder $2

/usr/local/bin/emacsclient -q -n -a "" $1 $2 ||\
open -a /Applications/Emacs.app/Contents/MacOS/Emacs $1 || \
open -a /Applications/Emacs.app/Contents/MacOS/Emacs $2 &

