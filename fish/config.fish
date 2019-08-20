# quick aliases
alias gst "git status"
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# language
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8

set -gx BROWSER google-chrome-stable

# editors and pager options
set -gx VISUAL code
set -gx EDITOR $VISUAL
set -gx PAGER less
set -gx BAT_THEME TwoDark
set -gx SSH_KEY_PATH $HOME/.ssh/rsa_id
set -gx N_PREFIX $HOME/.n
set -gx GOPATH $HOME/.go

# Parallel make, use all available cores
set -gx MAKEFLAGS -j(nproc)

# Don't feel like I need those bytecode files
set -gx PYTHONDONTWRITEBYTECODE please

# Less flags:
#  F - Quit if one screen
#  R - Raw control chars (for color)
#  E - Quit at EOF
#  S - Chop long lines
#  X - No termcap init, prevents clearing of screen before starting less
set -gx LESS FRESX

# path
set -gx PATH /usr/local/bin /usr/bin /usr/sbin /bin /sbin
set -a PATH $HOME/.local/bin
set -a PATH $HOME/.cargo/bin
set -a PATH $HOME/.dotnet/tools
set -a PATH $N_PREFIX/bin
set -a PATH $GOPATH/bin

# dotnet root required for some dotnet tools
set -gx DOTNET_ROOT /opt/dotnet/
