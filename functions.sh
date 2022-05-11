# 使用Emacs打开文件 
openFileInEmacs()
{
    if [[ -d $1 || -f $1 ]]
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

ffmpegKillAC3DTS()
{
    if [[ -f $1 ]]
    then
        FILENAME=$1
        ffmpeg -i $1  -ac 6 -b:a 400k -vcodec copy -c:s copy -map 0:v -map 0:a -map 0:s "${FILENAME%.*}"_aac."${FILENAME##*.}"
    else
        echo "Not A File."
    fi
}

ffmpegKillAC3DTSNoSubtitle()
{
    if [[ -f $1 ]]
    then
        FILENAME=$1
        ffmpeg -i $1  -ac 6 -b:a 400k -vcodec copy -map 0:v -map 0:a "${FILENAME%.*}"_aac."${FILENAME##*.}"
    else
        echo "Not A File."
    fi
}
