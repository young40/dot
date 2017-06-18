# 使用Emacs打开文件 
openFileInEmacs()
{
    if [ -f $1 ]
    then
        open -a /Applications/Emacs.app "$1"
    else
        echo "create \"$1\"?"
        echo "press \"Enter\" to create, otherwise for not"
        read key

        if [[ "$key" = "" ]]; then
            touch "$1"
            open -a /Applications/Emacs.app "$1"
        fi
    fi
}

# 使用终端中emacs打开文件
# emacs使用daemon模式
openFileInEmacsDaemon()
{
    if [ `ps aux | grep emacs | grep daemon | wc -l` -eq 1 ]
    then
        echo "Emacs Daemon Ready..."
    else
        emacs --daemon
    fi
    emacsclient -c "$@"
}
