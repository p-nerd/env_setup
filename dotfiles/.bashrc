alias cpa=~/.bin/cpa.sh

function git-all {
  git add .
  if [ "$1" != "" ]
  then
      git commit -m "$1"
  else
      git commit -m Updates
  fi
  git push
}
