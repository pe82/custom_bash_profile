export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias ll='ls -lahF'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias grep='grep --color=auto'
alias findword='grep -rnw . -e'
alias findall='grep -rn . -e' 

# Add custom `git lol` if not already there
if ! git config --get alias.lol >/dev/null; then
  git config --global alias.lol "log --graph --decorate \
    --pretty=format:'%C(yellow)%h%Creset %C(auto)%d%Creset - %s %Cgreen(%cr)%Creset %C(bold blue)<%an>%Creset' \
    --abbrev-commit --all"
fi
