#!/bin/bash

if [ -z "$1" ]; then
    echo "Add the month lowercase as first arg" && exit
fi

TWEETS="$HOME/Documents/projects/ottosocial/tweet"
MONTH_NUMBER=$(date -d "01 $1" +"%m")
CURRENT_YEAR=$(date +%Y)
TWEETS_MONTH=$(grep -P "^$CURRENT_YEAR-$MONTH_NUMBER" "$TWEETS")
FILE="../content/post/tweets-$1-$CURRENT_YEAR.md"

rm -f "$FILE" && touch "$FILE"

cat >> "$FILE"<< EOF
+++
date = $(date +"%Y-%m-%d")
draft = "false"
title = "Tweets From ${1^} $CURRENT_YEAR"
tags = [
    'tweets',
]
+++
EOF

sed -E -e "s/^/## /" -e "s/\s[0-9]{2}:[0-9]{2}//" -e "s/\|/\n\n/g" -e "s/,/\n\n/" -e "s/$/\n/" -e "s/\"//g" <<< "$TWEETS_MONTH" >> "$FILE"
