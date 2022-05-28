export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/colorscripts:$PATH"
export PATH="$HOME/.config/rofi/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=nvim
export GTK_OVERLAY_SCROLLING=1

if [ "$TERM" = "linux" ] ; then
    printf '%b' '\e]P00f0f0f
                 \e]P1ac8aac
                 \e]P28aac8b
                 \e]P3aca98a
                 \e]P48f8aac
                 \e]P5ac8aac
                 \e]P68aabac
                 \e]P7e7e7e7
                 \e]P84c4c4c
                 \e]P9c49ea0
                 \e]PA9ec49f
                 \e]PBc4c19e
                 \e]PCa39ec4
                 \e]PDc49ec4
                 \e]PE9ec3c4
                 \e]PFf5f5f5
                 \ec'
    clear
fi
