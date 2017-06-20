openSimulator()
{
    app="`echo $1`runtime/mac/mahjonghn-desktop$2.app/Contents/MacOS/mahjonghn-desktop"

    rm -rf "`echo $1`src_et"
    $app -console disable -workdir $1
}

alias v="openSimulator ~/Work/Sichuan/sichuan_debug/"
alias v2="openSimulator ~/Work/Sichuan/sichuan_debug/ 2"
alias v3="openSimulator ~/Work/Sichuan/sichuan_debug/ 3"
alias v4="openSimulator ~/Work/Sichuan/sichuan_debug/ 4"

alias vf="openSimulator ~/Work/Sichuan/sichuan_debug/"
alias vf2="openSimulator ~/Work/Sichuan/sichuan_debug/ 2"
alias vf3="openSimulator ~/Work/Sichuan/sichuan_debug/ 3"
alias vf4="openSimulator ~/Work/Sichuan/sichuan_debug/ 4"
