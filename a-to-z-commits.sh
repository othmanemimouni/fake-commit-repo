#!/bin/bash

mkdir github-a-to-z
cd github-a-to-z
git init

# Set your GitHub user info
git config user.name "Othmane Mimouni"
git config user.email "utrshall@gmail.com"  # Use a verified GitHub email

# Letters A to Z and years
letters=( {A..Z} )
years=( {2000..2025} )

# Loop A-Z
for i in "${!letters[@]}"; do
  letter=${letters[$i]}
  year=${years[$i]:-2025}

  echo "$letter" > file.txt
  git add file.txt

  commit_date="$year-01-01T12:00:00"

  git commit --date="$commit_date" -m "Commit $letter"
  GIT_COMMITTER_DATE="$commit_date" git commit --date="$commit_date" -m "Commit $letter"
done
