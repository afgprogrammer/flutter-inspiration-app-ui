#!/bin/bash

# Generate Flutter web build
flutter build web

# Checkout to the gh-pages branch
git checkout gh-pages

# Delete existing files in the gh-pages branch
git rm -r .

# Copy the contents of the build/web folder to the root directory
cp -R build/web/. .

# Add and commit the changes
git add .
git commit -m "Add Flutter web build for GitHub Pages"

# Push the changes to the gh-pages branch
git push origin gh-pages

# Switch back to the previous branch
git checkout -
```