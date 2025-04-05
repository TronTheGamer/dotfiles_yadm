# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

source ~/.config/nushell/zoxide.nu

# ####################################
# ENV VARIABLE EDITS
# ####################################
$env.PATH = $env.PATH | append "/home/yadu/.local/bin"
$env.EDITOR = "/home/yadu/.local/bin/zed"

# #####################################
# alias
# #####################################

alias ll = eza -l --all --icons=always --color=always
alias la = ls -la
alias ss = scoop-search
alias vim = nvim
# alias sudo = gsudo
# alias su = gsudo run
alias scig = gsudo scoop install --global
alias scup = gsudo scoop update --all --global
alias scun = gsudo scoop uninstall 
alias cls = clear
alias v = nvim
alias lg =  lazygit
alias lzd = lazydocker
alias y = yazi

# #####################################
# Functions
# #####################################



# def scig [packages: list<string>] {
#   gsudo scoop install --global $packages
# }

# 
# 
# def scup {
#     gsudo scoop update --global
#   }
# 
# def sccug [packages: list<strings>]{
#     gsudo scoop uninstall $packages
#   }


def --env zf [] {
  cd (zoxide query -i)
}
