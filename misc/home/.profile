export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/colorscripts:$PATH"
export PATH="$HOME/.config/rofi/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR=nvim
export GTK_OVERLAY_SCROLLING=1

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb -merge "$HOME/.Xresources"
xrandr -r 75
