#!/bin/bash

mkdir long-history
cd long-history
git init

# Set your email and name (must match GitHub!)
git config user.name "Your Name"
git config user.email "your_verified_email@example.com"

for year in {2006..2024}; do
    date_string="$year-01-01T12:00:00"
    echo "Year $year" > file.txt
    git add file.txt
    GIT_COMMITTER_DATE="$date_string" git commit --date="$date_string" -m "Commit in $year"
done
