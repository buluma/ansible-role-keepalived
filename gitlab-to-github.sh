#!/bin/zsh

# Arguments:
#   ${1}: Username
#   ${2}: Repository

# Clone the repo from GitLab using the `--mirror` option.
# git clone --mirror "git@gitlab.com:${1}/${2}.git"
# git add . && git commit -m "Local push"
#
# # Push to GitHub using the `--mirror` option. The `--no-verify` option skips any hooks.
# # git -C "${2}" push --no-verify --mirror "git@github.com:${1}/${2}.git"
# # git push --no-verify --mirror git@gitlab.com:buluma/ansible-role-keepalived.git
# git push origin-new

# Set push URL to the mirror location.
# git -C "${2}" remote set-url --push origin "git@github.com:${1}/${2}.git"
# git remote set-url --push origin-new git@gitlab.com:buluma/ansible-role-keepalived.git

# To periodically update the repo on GitHub with what you have in GitLab.
# git -C "${2}" fetch -p origin
# git -C "${2}" push --no-verify --mirror


# V3rsion 2
# git remote add origin-new git@gitlab.com:buluma/ansible-role-keepalived.git
echo "Pushing to GitLab.."

git remote -v
git add . && git commit -m "Local push"
git push gitlab
# git push origin
