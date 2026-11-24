echo "Pruning local branches from origin"
git remote prune origin
echo "Deleting pruned branches"
git branch -vv | awk '/: gone]/{print $1}' | xargs -r git branch -D
