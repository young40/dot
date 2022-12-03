source ~/dot/functions.sh
source ~/dot/tool/item2-tab-color.sh

# for Emacs
alias eo=openFileInEmacs
alias em=openFileInEmacsDaemon
alias emk="emacsclient -e '(kill-emacs)'"

# for Git
alias gdi="git difftool --extcmd icdiff"
alias gdk="git difftool --cached --extcmd icdiff"
alias gdf="git icdiff"
alias gdc="git icdiff --cached"

alias gsfl="git submodule foreach git pull"
alias gsfp="git submodule foreach --recursive git push"
alias gsfs="git submodule foreach --recursive git status"
alias gsfr="git submodule foreach --recursive"

# for Git ignore
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# 使用brew版本curl
if [ -f /usr/local/opt/curl/bin/curl ]
then
alias curl=/usr/local/opt/curl/bin/curl
fi

# for GFW
fq()
{
    local ip="127.0.0.1"
    if [ -n "$1" ]
    then
        ip=$1
    fi

    export https_proxy=http://$ip:7890 http_proxy=http://$ip:7890 all_proxy=socks5://$ip:7890
}
alias fq2="proxychains4 zsh"

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
if [ -d ~/Work/Org ]
then
    ORGWDIR=" -C ~/Work/Org "
    alias o="git $ORGWDIR add . ; git $ORGWDIR commit -m 'quick update' ; git $ORGWDIR push && echo 'Org pushed'"
    alias oi="git $ORGWDIR diff"
fi

# for Hugo Org Blog
OBCDIR=" ~/Work/Young40Blog"
OBCGIT="git -C $OBCDIR "
OBDGIT="git -C $OBCDIR/public "
alias obc="dotnet $OBCDIR/tools/ConsoleApp2.dll"
alias ob="$OBCGIT pull && obc && $OBCGIT add . && $OBCGIT commit -m 'quick update' && $OBCGIT push && echo 'Blog content stored.'"
alias obd="$OBDGIT pull && echo 'Updated.' && cd $OBCDIR && obc && hugo && cd - && $OBDGIT add . && $OBDGIT commit -m 'Quick Deploy' && $OBDGIT push && echo 'Quick Deploy Done.' "
alias obi="$OBCGIT diff org"

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
    alias vim=nvim -d -o
fi

# for TexturePacker unpack
alias up="python ~/dot/tool/unpacker.py"

# quick search file
alias s="find . -not -path \"./.git/*\" | grep -i "
alias sc="find . -not -path \"./.git/*\" | grep "

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
fuck()
{
    if [ -f /usr/local/bin/thefuck ]
    then
        eval "$(thefuck --alias)"
    fi
    fuck
}

# for Unity
alias uig="cp ~/dot/Resource/UnityIgnore ./.gitignore"
alias uap="sh ~/dot/tool/UnityAddMissingPackage.sh"

if [ -f ~/dot/shell-private-key.sh ]
then
   source ~/dot/shell-private-key.sh
fi

# for autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
[ -f /usr/share/autojump/autojump.sh ] && . /usr/share/autojump/autojump.sh

# for cat
alias c='pygmentize -O style=monokai -f console256 -g'

# for .DS_Store
alias dsstoreshow="find . -name .DS_Store"
alias dsstorermall="find . -name .DS_Store -delete"

# for $PATH
alias showPATH="tr ':' '\n' <<< \"$PATH\""

if uname -a | grep -qi '^Linux.*microsoft'; then
  alias open="explorer.exe"
fi

alias http="python3 -m http.server"
