if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias cls='clear'
# alias bat='batcat'
alias vim='nvim'

alias appimage-builder='appimage-builder-1.1.1.dev32+g2709a3b-x86_64.AppImage'

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

# $PATH=/home/es-yadu/flutter/SDK/flutter/bin:$PATH
