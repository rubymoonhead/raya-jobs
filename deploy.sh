#!/usr/bin/env sh

# abort on errors
set -e

# build to create new vue project
npm run build

# save the latest commit hash as a string
LOGSTRING=$(git log)
COMMIT=$(echo $LOGSTRING | awk '{print $2}')

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m "deploy (commit: $COMMIT)"

# if you're using SSH key authentication
# git push -f git@github.com:<username>/<repo>.git master:gh-pages

# if you're using HTTPS/2FA authentication
# git push -f https://github.com/<username>/<repo>.git master:gh-pages
git push -f https://github.com/rubymoonhead/raya-jobs.git master:gh-pages

# if you're deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:rubymoonhead/raya.jobs.git master:gh-pages

cd ..
