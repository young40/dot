source functions.sh

# for Emacs
alias eo='openFileInEmacs'

# 使用brew版本curl
export PATH="/usr/local/opt/curl/bin:$PATH"

# for GFW
alias fq="proxychains4 zsh"
alias ip="echo ip.gs:; curl ip.gs; echo ipip.net:; curl myip.ipip.net"

if [ -f shell-private-key.sh ]
then
   source shell-private-key.sh
fi
