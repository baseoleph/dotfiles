# system logs
alias logs="tail -f /var/log/syslog | ccze -A"

# direcory usage
alias diru="du -h --max-depth 1 ~ | sort -h"

# nvim
alias vim="nvim"

alias p="python3"
alias pp="pip3"

# django
alias runserver="p manage.py runserver"

# add aliases
alias addalias="nvim ~/.bash_aliases && source ~/.bashrc"

# mkdir && cd
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

# check and update
alias aptupd="sudo apt update"
alias aptupg="sudo apt upgrade"
alias aptlis="sudo apt list --upgradable"
alias aptins="sudo apt install"

# flatpak apps
alias telegram="flatpak run org.telegram.desktop"
alias gitkraken="flatpak run com.axosoft.GitKraken"


# compile and run program
run ()
{
	g++ -o /tmp/.out -std=c++11 "$1" && /tmp/.out
}

trun ()
{
	g++ -o /tmp/.out -std=c++11 "$1" && time /tmp/.out
}

vrun()
{
	g++ -o /tmp/.out -std=c++11 "$1" && valgrind /tmp/.out
}
