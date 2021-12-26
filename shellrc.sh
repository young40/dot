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
alias fq2="export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;"
alias fq3="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"
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
ORGWDIR=" -C ~/Work/Org "
alias o="git $ORGWDIR add . && git $ORGWDIR commit -m 'quick update' && git $ORGWDIR push && echo 'Org pushed'"
alias oi="git $ORGWDIR diff"
# for Hugo Org Blog
OBWDIR=" -C ~/Work/Young40Blog "
alias ob="git $OBWDIR pull && git $OBWDIR add . && git $OBWDIR commit -m 'quick update' && git $OBWDIR push && echo 'Blog content stored.'"

# for Lua
alias lua="lua -e 'package.path = package.path .. \";/Users/$USER/dot/?.lua\" require(\"lua-dump\")'"
alias lf="luafmt -w replace"
alias lc="luacheck"

# for React Native
alias rn=react-native

# for NeoVim
if [ -f /usr/local/bin/nvim ]
then
    alias vim=nvim
fi

# for TexturePacker unpack
alias up="python ~/dot/tool/unpacker.py"

# quick search file
alias s="find . | grep -i "
alias sc="find . | grep "

#fzf
alias f=fzf

# for JSON
js()
{
    cat $1 | jq
}

# for homebrew
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# for thefuck
if [ -f /usr/local/bin/thefuck ]
then
    eval "$(thefuck --alias)"
fi

# for Unity
alias uig="cp ~/dot/Resource/UnityIgnore ./.gitignore"
alias uap="sh ~/dot/tool/UnityAddMissingPackage.sh"

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

export PATH="/usr/local/sbin:$PATH"

MY_NAME=`whoami`
export PATH="$PATH:/Users/${MY_NAME}/Library/Android/sdk/platform-tools"
