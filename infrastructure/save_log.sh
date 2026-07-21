#!/bin/bash
MESSAGE=$1
echo "## $(date)" >> infrastructure/deployment_log.md
echo "$MESSAGE" >> infrastructure/deployment_log.md
echo "-----------------------------------" >> infrastructure/deployment_log.md
git add infrastructure/deployment_log.md
git commit -m "docs: update deployment log - $MESSAGE"
git push origin main
