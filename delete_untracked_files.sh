#!/bin/zsh

# @param string $successMessage
function logSuccess() {
    local successMessage=$1
    local green="\e[32m"
    local endColor="\e[0m" # reset color.

    echo -e "${green}[SUCCESS]: ${successMessage}${endColor}"
}

# @param string $errorMessage
function logError() {
    local errorMessage=$1
    local red="\e[31m"
    local endColor="\e[0m" # reset color.

    echo -e "${red}[ERROR]: ${errorMessage}${endColor}"
}

function printDirectoryInfo() {
    local currentDir=$(basename $(pwd))
    local repositoryName=$(git remote get-url origin | awk -F/ '{print $NF}')

    echo -e "\n========================================================="
    echo -e "$currentDir : $repositoryName"
    echo -e "========================================================="
}

function gitCleanForce() {
    if ! git clean -f -d; then
        logError "delete untracked files failed."
        return 1 # means false.
    fi

    # logSuccess "deleted fully merged local branch."
}

function main() {
  dirs=(
    "~/Desktop"
    "~/Downloads"
  )

  for dir in "${dirs[@]}"; do
    cd $dir
    printDirectoryInfo

    if gitCleanForce; then
      logSuccess "deleted untracked files."
    else
      logError "git clean failed."
    fi
  done
}

main
