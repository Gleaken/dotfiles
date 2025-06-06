# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zinit directory and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if not exists
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add p10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# load autocomplition
autoload -U compinit && compinit


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybinding
# bindkey '^p' history-search-backward
# bindkey '^n' history-search-forward

# History setup
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Keybindings
bindkey -e

#Aliases
alias ls='ls --color'
alias vi='nvim'
alias mux=tmuxinator

# Shell integrations
eval "$(fzf --zsh)"

#PATH
export PATH="$PATH:/home/janusz/.local/share/JetBrains/Toolbox/scripts:/home/janusz/.dotnet:/home/janusz/bin"
export PATH="$PATH:/home/janusz/.dotnet/tools"
export PATH="$PATH:/home/janusz/.config/scripts"
export PATH="$PATH:/home/janusz/.local/share/gem/ruby/3.4.0/bin"
export EDITOR=nvim
export SA_PASSWORD="Strong_)Pass"
export DOTNET_ROOT=$HOME/.dotnet

# Load Angular CLI autocompletion.
#source <(ng completion script)

