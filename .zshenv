# brew env
eval "$(/opt/homebrew/bin/brew shellenv)"

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=/opt/homebrew/bin/nvim

# proxy settings
# export http_proxy="http://192.168.1.1:5578"
# export https_proxy="http://192.168.1.1:5578"
# export all_proxy="socks5://192.168.1.1:5579"

# proxytoggle
# proxytoggle () {
#     if [[ $http_proxy ]]
#     then
#         unset http_proxy
#         unset https_proxy
#         unset all_proxy
#         echo "Proxy ON"
#     else
#         export http_proxy="http://192.168.1.1:5578"
#         export https_proxy="http://192.168.1.1:5578"
#         export all_proxy="socks5://192.168.1.1:5579"
#         echo "Proxy OFF"
#     fi
# }

# alias
alias vim='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'


# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }


# set DISPLAY environment
export DISPLAY=:0

# sidecar function
sidecar_toggle () { osascript -e '
  tell application "System Preferences"
    activate
    reveal pane id "com.apple.preference.displays"
    delay 1
    tell application "System Events" to click first pop up button of first window of application process "System Preferences" of application "System Events"
    delay 1
    tell application "System Events" to click second menu item of first menu of first pop up button of first window of application process "System Preferences" of application "System Events"
    quit
  end tell'; }

. "$HOME/.cargo/env"
