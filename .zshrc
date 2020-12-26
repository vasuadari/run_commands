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
