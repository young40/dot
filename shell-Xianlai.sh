openSimulator()
{
    dir=/Users/young40/Work/sichuan/mahjong/
    app="`echo $dir`runtime/mac/mahjonghn-desktop$1.app/Contents/MacOS/mahjonghn-desktop"

    rm -rf "${dir}src_et"
    $app -console disable -workdir $dir $2 $3
}

openSimulatorForUpdateDir()
{
    rm -rf /Users/young40/Work/sichuan/for_sichuan_debug_update/src_et/
    openSimulator $1 -workdir /Users/young40/Work/sichuan/for_sichuan_debug_update
}

alias  v="openSimulator 1"
alias v2="openSimulator 2"
alias v3="openSimulator 3"
alias v4="openSimulator 4"


alias  vf="openSimulatorForUpdateDir 1"
alias vf2="openSimulatorForUpdateDir 2"
alias vf3="openSimulatorForUpdateDir 3"
alias vf4="openSimulatorForUpdateDir 4"
