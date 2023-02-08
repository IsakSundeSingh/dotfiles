# quick aliases
alias gst "git status"
alias python /usr/local/bin/python3 # Damn macOS
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# language
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8


# editors and pager options
set -gx VISUAL code
set -gx EDITOR $VISUAL
set -gx PAGER less
set -gx BAT_THEME TwoDark
set -gx SSH_KEY_PATH $HOME/.ssh/rsa_id
set -gx N_PREFIX $HOME/.n
set -gx GOPATH $HOME/.go

# Parallel make, use all available cores
set -gx MAKEFLAGS -j(sysctl -n hw.ncpu)

# Don't feel like I need those bytecode files
set -gx PYTHONDONTWRITEBYTECODE pythonplz

# Less flags:
#  F - Quit if one screen
#  R - Raw control chars (for color)
#  E - Quit at EOF
#  S - Chop long lines
#  X - No termcap init, prevents clearing of screen before starting less
set -gx LESS FRESX

# path
set -gx PATH $N_PREFIX/bin /usr/local/bin /usr/bin /usr/sbin /bin /sbin
set -a PATH $HOME/.local/bin
set -a PATH $HOME/.cargo/bin
set -a PATH $HOME/.dotnet/tools
set -a PATH $GOPATH/bin

# dotnet root required for some dotnet tools
set -gx DOTNET_ROOT /opt/dotnet/

# init starship prompt
starship init fish | source

# Use exa when typing ls if it is installed
if test -e ~/.cargo/bin/exa; or test -e /usr/bin/exa
    abbr -a -g l exa
    abbr -a -g ls exa
    abbr -a -g ll "exa -l"
    abbr -a -g lll "exa -la"
    abbr -a -g tree "exa --tree --sort=size --long --color-scale --no-permissions --no-user --no-time --level=3"
end

# Search git diffs for the following phrase and print the author, date and hash of the commits containing it (with colors)
abbr -a -g gits 'git log --format="%C(cyan)%an - %Creset%as (%C(yellow)%h%Creset)" -i -S'
