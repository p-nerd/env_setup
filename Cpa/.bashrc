alias cpa=~/.bin/cpa.sh

function git-all {
  git add .
  if [ "$1" != "" ]
  then
      git commit -m "$1"
  else
      git commit -m update
  fi
  git push
}