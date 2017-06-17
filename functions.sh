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
