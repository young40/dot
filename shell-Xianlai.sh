openSimulator()
{
    # dir=/Users/young40/Work/sichuan/mahjong/
    appDir="/Users/young40/Work/Simulator/"
    dir=/Users/young40/Work/QuDZZ/ddzlua/devproject/
    app="${appDir}/mac/mahjonghn-desktop$1.app/Contents/MacOS/mahjonghn-desktop"

    rm -rf "${dir}src_et"
    rm -rf "${dir}../src_et"
    $app -console disable -writable-path "${dir}ZZGamewritefiles" -workdir $dir $2 $3
}

openSimulatorForCurrent()
{
    openSimulator $1 -workdir $(pwd)
}

alias  v="openSimulator 1"
alias v2="openSimulator 2"
alias v3="openSimulator 3"
alias v4="openSimulator 4"

alias y="openSimulatorForCurrent 1"

xianlaigit()
{
    git config --local user.name "Yangshiling(杨世玲)"
    git config --local user.email "yangshiling@xianlai-inc.com"
    echo "git config updated in local dir"
}

alias p="cat /Users/young40/Work/闲徕文档/2019-03-23-测试环境手机号/趣斗地主测试环境账号.txt"
