#!/bin/bash

# Create a new repository on the command line
echo "# FraudDetectionProject" >> README.md
git init
git add -A
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/mohamedamineelabidi/FraudDetectionProject.git
git push -u origin main

# Or push an existing repository from the command line
#git remote add origin https://github.com/mohamedamineelabidi/FraudDetectionProject.git
#git branch -M main
#git push -u origin main
