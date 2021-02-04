tag: terminal
and tag: user.git
-
# Standard commands
(git|get) add all: "git add -A\n"
(git|get) add patch: "git add . -p\n"
(git|get) add: "git add "
(git|get) add everything: "git add -u\n"
(git|get) bisect: "git bisect "
(git|get) blame: "git alame "
(git|get) branch: "git branch "
(git|get) remote branches: "git branch --remote\n"
(git|get) branch <user.text>: "git branch {text}"
(git|get) checkout: "git checkout "
(git|get) checkout master: "git checkout master\n"
(git|get) checkout <user.text>: "git checkout {text}"
(git|get) cherry pick: "git cherry-pick "
(git|get) clone: "git clone "
(git|get) commit message <user.text>: "git commit -m '{text}'"
(git|get) commit message:
	 "git commit -m ''"
	 key(left)
(git|get) commit amend: "git commit --amend --no-edit\n"
(git|get) commit: "git commit\n"
(git|get) diff (colour|color) words: "git diff --color-words "
(git|get) diff: "git diff "
(git|get) diff cached: "git diff --cached\n"
(git|get) fetch: "git fetch\n"
(git|get) fetch <user.text>: "git fetch {text}"
(git|get) fetch prune: "git fetch --prune\n"
(git|get) in it: "git init\n"
(git|get) log all: "git log\n"
(git|get) log all changes: "git log -c\n"
(git|get) log: "git log "
(git|get) log changes: "git log -c "
(git|get) merge: "merge.bat "
(git|get) merge <user.text>:"merge.bat {text}"
(git|get) move: "git mv "
(git|get) new branch: "git checkout -b "
(git|get) pull: "git pull\n"
(git|get) pull origin: "git pull origin "
(git|get) pull rebase: "git pull --rebase\n"
(git|get) pull fast forward: "git pull --ff-only\n"
(git|get) pull <user.text>: "git pull {text} "
(git|get) push: "git push\n"
(git|get) push origin: "git push origin "
(git|get) push up stream origin: "git push -u origin"
(git|get) push set upstream: "git push --set-upstream origin "
(git|get) push <user.text>: "git push {text} "
(git|get) push tags: "git push --tags\n"
(git|get) rebase: "git rebase\n"
(git|get) rebase continue: "git rebase --continue"
(git|get) rebase skip: "git rebase --skip"
(git|get) remove: "git rm "
(git|get) (remove|delete) branch: "git branch -d "
(git|get) (remove|delete) remote branch: "git push --delete origin "
(git|get) reset: "git reset "
(git|get) reset soft: "git reset --soft "
(git|get) reset hard: "git reset --hard "
(git|get) restore: "git restore "
(git|get) restore staged: "git restore --staged "
(git|get) resolve keep theirs: "git checkout --theirs ."
(git|get) resolve keep ours: "git checkout --ours ."
(git|get) remote: "git remote"
(git|get) remote add: "git remote add "
(git|get) remote (remove|delete): "git remote rm "
(git|get) remote show: "git remote -v\n"
(git|get) remote show origin: "git remote show origin\n"
(git|get) add upstream: "git remote add upstream "
(git|get) show: "git show "
(git|get) stash pop: "git stash pop\n"
(git|get) stash: "git stash\n"
(git|get) stash apply: "git stash apply\n"
(git|get) stash list: "git stash list\n"
(git|get) stash show: "git stash show"
(git|get) status: "git status\n"
(git|get) submodule add:  "git submodule add "
(git|get) tag: "git tag "

# Convenience
git edit config: "git config --local -e\n"

git clone clipboard:
  insert("git clone ")
  edit.paste()
  key(enter)
git diff highlighted:
    edit.copy()
    insert("git diff ")
    edit.paste()
    key(enter)
git diff clipboard:
    insert("git diff ")
    edit.paste()
    key(enter)
git add highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    key(enter)
git add clipboard:
    insert("git add ")
    edit.paste()
    key(enter)
git commit highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    insert("\ngit commit\n")
