source functions.sh

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
export PATH="/usr/local/opt/curl/bin:$PATH"

# for GFW
alias fq="proxychains4 zsh"
alias ip="echo ip.gs:; curl ip.gs; echo ipip.net:; curl myip.ipip.net"

if [ -f shell-private-key.sh ]
then
   source shell-private-key.sh
fi
