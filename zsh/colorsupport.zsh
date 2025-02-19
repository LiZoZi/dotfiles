if [ -x /usr/bin/dircolors ]; then
    test -r ~/.config/zsh/.dircolors && eval "$(dircolors -b ~/.config/zsh/.dircolors)" || eval "$(dircolors -b)"
fi
