if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cls='clear'
# alias bat='batcat'
alias vim='nvim'
alias EDITOR='nvim'

alias appimage-builder='appimage-builder-1.1.1.dev32+g2709a3b-x86_64.AppImage'

alias fd='fd'
alias lg='lazygit'
alias ncf='nvim ~/.config/fish/'
alias fman='bash -c "compgen -c|fzf|xargs man"'
alias zf='z --list | fzf | awk \'{$1=""; sub(/^ /, ""); print}\' | read -l dir && cd $dir'
alias ls='eza --long --color=always --icons'
alias ll='eza -a -l --color=always --icons'

bass export EDITOR='/usr/bin/nvim'

# --------------------------------------------------------------------------
# ---------- FZF COMMANDS --------------------------------------------------
# --------------------------------------------------------------------------

if status is-interactive && test -f ~/.config/fish/custom/git_fzf.fish
    source ~/.config/fish/custom/git_fzf.fish
    git_fzf_key_bindings
end

source /usr/share/fzf/key-bindings.fish
# set -U FZF_LEGACY_KEYBINDINGS 1
set -U FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
# fzf_configure_bindings --directory=\ct --processes=\ck   #REQUIRES fzf.fish
set -U FZF_FIND_FILE_COMMAND "ag -l --hidden --ignore .git . \$dir 2> /dev/null"
set -U FZF_CD_WITH_HIDDEN_COMMAND "ag -l --hidden --ignore .git . \$dir 2> /dev/null"
set -U FZF_PREVIEW_FILE_CMD "head -n 15"
set -U FZF_PREVIEW_DIR_CMD ls

set -U FZF_FIND_FILE_OPTS "--reverse --inline-info --preview='bat {}' --bind shift-up:preview-page-up,shift-down:preview-page-down"
set -U FZF_CD_WITH_HIDDEN_OPTS "--reverse --preview='tree -C {}' "
set -U FZF_COMPLETE_OPTS "--reverse --inline-info --border"
set -U FZF_ENABLE_OPEN_PREVIEW 1


# FUNCTIONS
# ----------

function export
    if [ $argv ]
        set var (echo $argv | cut -f1 -d=)
        set val (echo $argv | cut -f2 -d=)
        set -g -x $var $val
    else
        echo 'export var=value'
    end
end

# function starship_transient_prompt_func
#     starship module character
# end

function starship_transient_rprompt_func
    starship module time
end

# starship init fish | source
# export GZ_SIM_SYSTEM_PLUGIN_PATH=$HOME/ardupilot_gazebo/build:$GZ_SIM_SYSTEM_PLUGIN_PATH
# export GZ_SIM_RESOURCE_PATH=$HOME/ardupilot_gazebo/models:$HOME/ardupilot_gazebo/worlds:$GZ_SIM_RESOURCE_PATH

# enable_transience

xhost +local:root

# $PATH=/home/es-yadu/flutter/SDK/flutter/bin:$PATH

cls
