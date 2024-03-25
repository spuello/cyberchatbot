#!/bin/bash

# Navigate to the working directory
cd /path/to/your/working/directory

# Add all changes to the staging area
git add .

# Commit the changes with the message "WIP"
git commit -m "WIP"
git push -f
