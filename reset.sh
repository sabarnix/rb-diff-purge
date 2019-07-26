ReleasesFile=RELEASES
rm -rf wt-app
git worktree prune
rm -rf wt-diffs
git worktree prune

git branch -D release/2.0.0
git push --delete origin release/2.0.0
IFS=$'\n' GLOBIGNORE='*' command eval 'releases=($(cat "$ReleasesFile"))'
for existingRelease in "${releases[@]}"
do
    echo "$existingRelease"
    git branch -D release/"$existingRelease"
    git push --delete origin release/"$existingRelease"
done
rm -rf RELEASES
touch RELEASES