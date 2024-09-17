# **Git Guide**

## **Set up Git**
If you’re already using Git, have a client you like, and a GitHub account, you can skip this section. Otherwise, read on!

### **Install and configure Git, join GitHub**
If you’re not already using Git, you might need to [install]() and [configure]() it.
You’ll also need a GitHub account, which you can sign up for [here]().

## **Important Git terms**
When you install Git, it adds a manual entry for gitglossary. You can view this glossary by running man gitglossary. Below we’ve included the Git terms you’ll encounter most often along with their definitions from gitglossary.

**branch**
A “branch” is an active line of development. The most recent commit on a branch is referred to as the tip of that branch. The tip of the branch is referenced by a branch head, which moves forward as additional development is done on the branch. A single Git repository can track an arbitrary number of branches, but your working tree is associated with just one of them (the “current” or “checked out” branch), and HEAD points to that branch.

**cache**
Obsolete for: index

**checkout**
The action of updating all or part of the working tree with a tree object or blob from the object database, and updating the index and HEAD if the whole working tree has been pointed at a new branch.

**commit**
As a noun: A single point in the Git history; the entire history of a project is represented as a set of interrelated commits. The word “commit” is often used by Git in the same places other revision control systems use the words “revision” or “version”. Also used as a short hand for commit object.

As a verb: The action of storing a new snapshot of the project’s state in the Git history, by creating a new commit representing the current state of the index and advancing HEAD to point at the new

**fast-forward**
A fast-forward is a special type of merge where you have a revision and you are “merging” another branch’s changes that happen to be a descendant of what you have. In such these cases, you do not make a new merge commit but instead just update to their revision. This will happen frequently on a remote-tracking branch of a remote repository.

**fetch**
Fetching a branch means to get the branch’s head ref from a remote repository, to find out which objects are missing from the local object database, and to get them, too. See also git-fetch(1)

**hash**
In Git’s context, synonym for object name.

**head**
A named reference to the commit at the tip of a branch. Heads are stored in a file in $GIT_DIR/refs/heads/ directory, except when using packed refs. See also git-pack-refs(1).

**HEAD**
The current branch. In more detail: Your working tree is normally derived from the state of the tree referred to by HEAD. HEAD is a reference to one of the heads in your repository, except when using a detached HEAD, in which case it directly references an arbitrary commit.

**index**
A collection of files with stat information, whose contents are stored as objects. The index is a stored version of your working tree. Truth be told, it can also contain a second, and even a third version of a working tree, which are used when merging.

**pull**
Pulling a branch means to fetch it and merge it. See also git-pull(1)

**push**
Pushing a branch means to get the branch’s head ref from a remote repository, find out if it is a direct ancestor to the branch’s local head ref, and in that case, putting all objects, which are reachable from the local head ref, and which are missing from the remote repository, into the remote object database, and updating the remote head ref. If the remote head is not an ancestor to the local head, the push fails.

**rebase**
To reapply a series of changes from a branch to a different base, and reset the head of that branch to the result.

## **Get Yati Code**
Yati uses a forked-repo and rebase-oriented workflow. This means that all contributors create a fork of the [Yati repository]() they want to contribute to and then submit pull requests to the upstream repository to have their contributions reviewed and accepted. We also recommend you work on feature branches.

### **Step 1: Create your fork**
The following steps you’ll only need to do the first time you set up a machine for contributing to a given Yati project. You’ll need to repeat the steps for any additional Yati projects that you may work on.

The first thing you’ll want to do to contribute to Yati is fork (see how) the appropriate Yati repository.

### **Step 2: Clone to your machine**
Next, clone your fork to your local machine with the following command on your working directory
`git clone https://github.com/Fanelemenzi/Yati.git`

### **Step 3: Open Project on your IDE**
Once you cloned the project, open the cloned forlder with your prefered IDE or the [recommended](devenv.md) one. 

## **Working Copies**
When you work on Yati code, there are three copies of the Yati Git repository that you are generally concerned with:

* The main remote repository. This is the official Yati repository on GitHub. You probably don’t have write access to this repository.
* The origin remote: Your personal remote repository on GitHub. You’ll use this to share your code and create pull requests.
* local copy: This lives on your laptop or your remote dev instance, and is what you’ll use to make changes and create commits.

When you work on Yati code, you will end up moving code between the various working copies.

### **Workflows**
Sometimes you need to get commits. Here are some scenarios:

* You may fork the official Yati repository to your GitHub fork.
* You may fetch commits from the official Yati repository to your local copy.
* You occasionally may fetch commits from your forked copy.

Sometimes you want to publish commits. Here are some scenarios:

* You push code from your local copy to your GitHub fork. (You usually want to put the commit on a feature branch.)
* You submit a PR to the official Yati repo.

Finally, the Yati core team will occasionally want your changes!

* The Yati core team can accept your changes and add them to the official repo, usually on the `main` branch.

### **Relevant Git commands**
The following commands are useful for moving commits between working copies:

* `git fetch`: This grabs code from another repository to your local copy. (Defaults to fetching from your default remote, `origin`).
* `git fetch upstream`: This grabs code from the upstream repository to your local copy.
* `git push`: This pushes code from your local repository to one of the remotes.
* `git remote`: This helps you configure short names for remotes.
* `git pull`: This pulls code, but by default creates a merge commit (which you definitely don’t want). However, if you’ve followed our cloning documentation, this will do `git pull --rebase` instead, which is the only mode you’ll want to use when working on Yati.

## **Using Git as you work**
### **Know what branch you're working on**
When using Git, it’s important to know which branch you currently have checked out because most Git commands implicitly operate on the current branch. You can determine the currently checked out branch several ways.

One way is with git status:

```
$ git status
On branch issue-demo
nothing to commit, working directory clean 
```
Another is with git branch which will display all local branches, with a star next to the current branch:
```
$ git branch
* issue-demo
  main
```
To see even more information about your branches, including remote branches, use git branch -vva:
```
$ git branch -vva
* issue-123                 517468b troubleshooting tip about provisioning
  main                      f0eaee6 [origin/main] bug: Fix traceback in get_missed_message_token_from_address().
  remotes/origin/HEAD       -> origin/main
  remotes/origin/issue-1234 4aeccb7 Another test commit, with longer message.
  remotes/origin/main       f0eaee6 bug: Fix traceback in get_missed_message_token_from_address().
  remotes/upstream/main     dbeab6a Optimize checks of test database state by moving into Python.
```

### **Work on a feature branch**
One way to keep your work organized is to create a branch for each issue or feature. Recall from how Git is different that Git is designed for lightweight branching and merging. You can and should create as many branches as you’d like.

Next, from your main branch, create a new tracking branch, providing a descriptive name for your feature branch:

```
$ git checkout main
Switched to branch 'main'

$ git checkout -b issue-1755-fail2ban
Switched to a new branch 'issue-1755-fail2ban'
```

Alternatively, you can create a new branch explicitly based off `main` branch:
```
$ git checkout -b issue-1755-fail2ban upstream/main
Switched to a new branch 'issue-1755-fail2ban'
```
Now you're ready to work on the issue or feature.

### **Stage Changes**
Recall that files tracked with Git have possible three states: committed, modified, and staged.

To prepare a commit, first add the files with changes that you want to include in your commit to your staging area. You add both new files and existing ones. You can also remove files from staging when necessary.

#### **Get Status of working directory**
To see what files in the working directory have changes that have not been staged, use `git status`.

If you have no changes in the working directory, you’ll see something like this:

```
$ git status
On branch issue-123
nothing to commit, working directory clean
```

If you have unstaged changes, you'll see something like this:

```
On branch issue-123
Untracked files:
  (use "git add <file>..." to include in what will be committed)

        newfile.py

nothing added to commit but untracked files present (use "git add" to track)
```

#### **Stage additions with `git add`**
To add changes to your staging area, use git add <filename>. Because git add is all about staging the changes you want to commit, you use it to add new files as well as files with changes to your staging area.

Continuing our example from above, after we run git add newfile.py, we’ll see the following from git status:

```
On branch issue-123
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   newfile.py
```

You can view the changes in files you have staged with `git diff --cached`. To view changes to files you haven’t yet staged, just use `git diff`.

If you want to add all changes in the working directory, use **`git add -A`** [documentation]().

You can also stage changes using your graphical Git client.

If you stage a file, you can undo it with `git reset HEAD <filename>`. Here’s an example where we stage a file `test3.txt` and then unstage it:
```
$ git add test3.txt
On branch issue-1234
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   test3.txt

$ git reset HEAD test3.txt
git status
On branch issue-1234
Untracked files:
  (use "git add <file>..." to include in what will be committed)

        test3.txt

nothing added to commit but untracked files present (use "git add" to track)
```

#### **Commit Changes**
When you’ve staged all your changes, you’re ready to commit. You can do this with `git commit -m "My commit message."` to include a commit message.

Here’s an example of committing with the -m for a one-line commit message:

```
$ git commit -m "Add a test commit for docs."
[issue-123 173e17a] Add a test commit for docs.
 1 file changed, 1 insertion(+)
 create mode 100644 newfile.py
```
You can also use `git commit` without the `-m` option and your editor to open, allowing you to easily draft a multi-line commit message.

How long your commit message should be depends on where you are in your work. Using short, one-line messages for commits related to in-progress work makes sense. For a commit that you intend to be final or that encompasses a significant amount or complex work, you should include a longer message.

Keep in mind that your commit should contain a ‘minimal coherent idea’ and have a quality commit message.

Here’s an example of a longer commit message that will be used for a pull request:

```
Integrate Fail2Ban.

Updates Zulip logging to put an unambiguous entry into the logs such
that fail2ban can be configured to look for these entries.

Tested on my local Ubuntu development server, but would appreciate
someone testing on a production install with more users.

Fixes #1755.
```

The first line is the summary. It’s a complete sentence, ending in a period. It uses a present-tense action verb, “Integrate”, rather than “Integrates” or “Integrating”.

The following paragraphs are full prose and explain why and how the change was made. It explains what testing was done and asks specifically for further testing in a more production-like environment.

The final paragraph indicates that this commit addresses and fixes issue #1755. When you submit your pull request, GitHub will detect and link this reference to the appropriate issue. Once your commit is merged into upstream/main, GitHub will automatically close the referenced issue. See Closing issues via commit messages for details.

Note in particular that GitHub’s regular expressions for this feature are sloppy, so phrases like `Partially fixes #1234` will automatically close the issue. Phrases like `Fixes part of #1234` are a good alternative.

Make as many commits as you need to address the issue or implement your feature.

#### **Push your commits to Github**
As you’re working, it’s a good idea to frequently push your changes to GitHub. This ensures your work is backed up should something happen to your local machine and allows others to follow your progress. It also allows you to work from multiple computers without losing work.

Pushing to a feature branch is just like pushing to main:

```
$ git push origin <branch-name>
Counting objects: 6, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (6/6), 658 bytes | 0 bytes/s, done.
Total 6 (delta 3), reused 0 (delta 0)
remote: Resolving deltas: 100% (3/3), completed with 1 local objects.
To git@github.com:christi3k/zulip.git
 * [new branch]      issue-demo -> issue-
```
If you want to see what Git will do without actually performing the push, add the -n (dry-run) option: `git push -n origin <branch-name>`. If everything looks good, re-run the push command without -n.

If the feature branch does not already exist on GitHub, it will be created when you push and you’ll see `* [new branch]` in the command output.

## **Get and stay out of trouble**
Git is a powerful yet complex version control system. Even for contributors experienced at using version control, it can be confusing. The good news is that nearly all Git actions add information to the Git database, rather than removing it. As such, it’s hard to make Git perform actions that you can’t undo. However, Git can’t undo what it doesn’t know about, so it’s a good practice to frequently commit your changes and frequently push your commits to your remote repository.

### **Undo a merge commit**
A merge commit is a special type of commit that has two parent commits. It’s created by Git when you merge one branch into another and the last commit on your current branch is not a direct ancestor of the branch you are trying to merge in. This happens quite often in a busy project like Zulip where there are many contributors because upstream/zulip will have new commits while you’re working on a feature or bugfix. In order for Git to merge your changes and the changes that have occurred on zulip/upstream since you first started your work, it must perform a three-way merge and create a merge commit.

Merge commits aren’t bad, however, Zulip doesn’t use them. Instead Zulip uses a forked-repo, rebase-oriented workflow.

A merge commit is usually created when you’ve run git pull or git merge. You’ll know you’re creating a merge commit if you’re prompted for a commit message and the default is something like this:

```
Merge branch 'main' of https://github.com/yati

# Please enter a commit message to explain why this merge is necessary,
# especially if it merges an updated upstream into a topic branch.
#
# Lines starting with '#' will be ignored, and an empty message aborts
# the commit.
```
And the first entry for git log will show something like:

```
commit e5f8211a565a5a5448b93e98ed56415255546f94
Merge: 13bea0e e0c10ed
Author: Christie Koehler <ck@christi3k.net>
Date:   Mon Oct 10 13:25:51 2016 -0700

    Merge branch 'main' of https://github.com/yati
```

Some graphical Git clients may also create merge commits.
To undo a merge commit, first run git reflog to identify the commit you want to roll back to:

```
git reflog

e5f8211 HEAD@{0}: pull upstream main: Merge made by the 'recursive' strategy.
13bea0e HEAD@{1}: commit: test commit for docs.

```
Reflog output will be long. The most recent Git refs will be listed at the top. In the example above `e5f8211 HEAD@{0}`: is the merge commit made automatically by `git pull` and `13bea0e HEAD@{1}:` is the last commit I made before running `git pull`, the commit that I want to rollback to.

Once you’d identified the ref you want to revert to, you can do so with git reset:

```
git reset --hard 13bea0e
HEAD is now at 13bea0e test commit for docs.
```

### **Restore a lost commit**
We’ve mentioned you can use `git reset --hard` to rollback to a previous commit. What if you run `git reset --hard` and then realize you actually need one or more of the commits you just discarded? No problem, you can restore them with `git cherry-pick` (docs).

For example, let’s say you just committed “some work” and your `git log` looks like this:

```
* 67aea58 (HEAD -> main) some work
* 13bea0e test commit for docs.
```

You then mistakenly run `git reset --hard 13bea0e`:

```
git reset --hard 13bea0e
HEAD is now at 13bea0e test commit for docs.

git log
* 13bea0e (HEAD -> main) test commit for docs.
```
And then realize you actually needed to keep commit 67aea58. First, use git reflog to confirm that commit you want to restore and then run git cherry-pick <commit>:

```
git reflog
13bea0e HEAD@{0}: reset: moving to 13bea0e
67aea58 HEAD@{1}: commit: some work

git cherry-pick 67aea58
 [main 67aea58] some work
 Date: Thu Oct 13 11:51:19 2016 -0700
 1 file changed, 1 insertion(+)
 create mode 100644 test4.txt
```