# source:https://unix.stackexchange.com/a/477909
autoload -Uz compinit
compinit

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure 

for i in $(ls ~/.profile.d)
do
  . ~/.profile.d/$i
done

export PATH="/usr/local/opt/libpq/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DEST="$HOME/.eendroroy-alacritty-theme"
export PATH="/opt/homebrew/opt/libxslt/bin:$PATH"
export PATH="/opt/homebrew/opt/unzip/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH="/opt/homebrew/Cellar/wxwidgets/3.1.5/bin:$PATH"
export PATH="/opt/homebrew/opt/erlang@22/bin:$PATH"
export PATH="/opt/homebrew/opt/erlang@23/bin:$PATH"
export PATH="/opt/homebrew/opt/node@12/bin:$PATH"
export PATH=/Users/vasu/.asdf/installs/rust/1.60.0/bin:$PATH
