#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Define Editor
export EDITOR=nvim

# Aliases
alias c='clear'
alias relob='source ~/.bashrc'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias vs='sudo $EDITOR'
alias confb='$EDITOR ~/.bashrc'
alias wifi='nmtui'
alias rw='~/.config/waybar/reload.sh'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/.config"
alias cleanup='~/.config/scripts/cleanup.sh'
alias clwal='~/.config/sddm/scripts/wallpaper.sh'
alias chome='~/.config/sddm/scripts/cubo.sh'
if [ ! -f ~/.bash_history ]; then
    alias chfull='history -c'
else
    alias chfull='rm ~/.bash_history && history -c'
fi
alias exltx='pdflatex main.tex'

# Start Starship
eval "$(starship init bash)"

# Pfetch
echo ""
if [[ $(tty) == *"pts"* ]]; then
    pfetch
else
    if [ -f /bin/hyprctl ]; then
	echo "Start with command Hyprland"
    fi
fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/divon/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/divon/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

# LaTeX
export PATH="$PATH:/usr/local/texlive/2024/bin/x86_64-linux"
