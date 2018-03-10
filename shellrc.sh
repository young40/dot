source ~/dot/functions.sh

# for Emacs
alias eo=openFileInEmacs
alias em=openFileInEmacsDaemon
alias emk="emacsclient -e '(kill-emacs)'"

# for Git
alias gdi="git diff"
alias gdk="git diff --cached"
alias gdf="git difftool"
alias gdc="git difftool --cached"

alias gsfl="git submodule foreach git pull"
alias gsfp="git submodule foreach --recursive git push"
alias gsfs="git submodule foreach --recursive git status"
alias gsfr="git submodule foreach --recursive"

# 使用brew版本curl
alias curl=/usr/local/opt/curl/bin/curl

# for GFW
alias fq="proxychains4 zsh"
alias ip="echo ip.gs:; curl ip.gs; echo ipip.net:; curl myip.ipip.net"

# for Org files
alias o="cd ~/org/ && git add . && git commit -m 'quick update' && git push && echo 'Org pushed'; cd -"

# for Lua
alias lua="lua -e 'package.path = package.path .. \";/Users/$USER/dot/?.lua\" require(\"lua-dump\")'"

# for thefuck
eval "$(thefuck --alias)"

# for Xianlai
if [ -f ~/dot/shell-Xianlai.sh ]
then
    source ~/dot/shell-Xianlai.sh
fi

if [ -f ~/dot/shell-private-key.sh ]
then
   source ~/dot/shell-private-key.sh
fi

# for autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
