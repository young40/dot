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

# for Git ignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# 使用brew版本curl
alias curl=/usr/local/opt/curl/bin/curl

# for GFW
alias fq="proxychains4 zsh"
alias fq2="export http_proxy=http://127.0.0.1:1086;export https_proxy=http://127.0.0.1:1086;"
# alias ip="echo ipip.net:; curl myip.ipip.net; echo ip.sb:; curl -s https://api.ip.sb/geoip | jq '[.ip, .city, .region, .organization]';"

ip()
{
    TIME1=$SECONDS
    echo ipip.net:
    curl myip.ipip.net
    TIME2=$SECONDS
    echo 耗时: $((TIME2-TIME1)) 秒

    echo ip.sb:
    curl -s https://api.ip.sb/geoip | jq '[.ip, .city, .region, .organization]'
    TIME3=$SECONDS
    echo 耗时: $((TIME3-TIME2)) 秒
}

# for Org files
alias o="cd ~/org/ && git add . && git commit -m 'quick update' && git push && echo 'Org pushed'; cd -"

# for Lua
alias lua="lua -e 'package.path = package.path .. \";/Users/$USER/dot/?.lua\" require(\"lua-dump\")'"

# for React Native
alias rn=react-native

# for NeoVim
alias vim=nvim

# for TexturePacker unpack
alias up="python ~/dot/tool/unpacker.py"

# quick search file
alias s="find . | grep "

# color cat
alias catt="/bin/cat"
alias cat="pygmentize -g"

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
