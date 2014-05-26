if [ "$color_prompt" = yes ]; then
    PS2='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]'
else
    PS2='${debian_chroot:+($debian_chroot)}\u@\h:'
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS2="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS2"
    ;;
*)
    ;;
esac
