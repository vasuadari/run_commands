# source:https://unix.stackexchange.com/a/477909
autoload -Uz compinit
compinit

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

function setp {
  export PATH=$1:$PATH
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
setopt HIST_IGNORE_SPACE    # ignore commands starts with sapce
setopt APPEND_HISTORY       # write history only when closing
setopt EXTENDED_HISTORY     # add more info
setopt interactivecomments  # allow comments

HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTSIZE=100000

DEST="$HOME/.eendroroy-alacritty-theme"

setp "/usr/bin"
setp "/usr/local/bin"
setp "/usr/local/opt/libpq/bin"
setp "/opt/homebrew/opt/libxslt/bin"
setp "/opt/homebrew/opt/unzip/bin"
setp "/opt/homebrew/opt/curl/bin"
setp "/opt/homebrew/opt/coreutils/libexec/gnubin"
setp "/opt/homebrew/opt/openssl@3/bin"
setp "/opt/homebrew/opt/openssl@3/bin"
setp "/opt/homebrew/Cellar/wxwidgets/3.1.5/bin"
setp "/opt/homebrew/opt/erlang@22/bin"
setp "/opt/homebrew/opt/erlang@23/bin"
setp "/opt/homebrew/opt/node@12/bin"
setp /opt/homebrew/Cellar/tree-sitter/0.20.6/bin
setp /opt/homebrew/Cellar/neovim/0.6.1/bin
setp "/opt/homebrew/opt/imagemagick@6/bin"
setp /opt/homebrew/Cellar/mtr/0.95/sbin
setp /Users/vasu/.local/bin
setp /opt/homebrew/Cellar/dnsmasq/2.86/sbin
setp /opt/homebrew/Cellar/tmux/3.3a/bin
setp ${KREW_ROOT:-$HOME/.krew}/bin
setp /Users/vasu/.asdf/installs/nodejs/16.13.1/bin
setp /opt/homebrew/Cellar/libpq/15.1/bin
setp /opt/homebrew/Cellar/zoxide/0.8.3/bin
setp /opt/homebrew/Cellar/curl/8.8.0/bin
setp /opt/homebrew/Cellar/lua-language-server/3.9.3/bin
setp /opt/homebrew/Cellar/sops/3.9.1/bin
set /Users/vasu/.asdf/shims

for i in $(ls ~/.profile.d)
do
  . ~/.profile.d/$i
done

export TAG_SEARCH_PROG=rg
export LANG=en_US.UTF-8
export DECK_KONG_ADDR="http://localhost:8001"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
export PATH="/opt/homebrew/opt/mysql-client@5.7/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client@5.7/bin:$PATH"

eval "$(direnv hook zsh)"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export DIRENV_LOG_FORMAT=""
# eval "$(atuin init zsh)"

# source /Users/vasu/.config/broot/launcher/bash/br
export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"
export ELS_INSTALL_PREFIX="/Users/vasu/.elixir-ls/release"

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
