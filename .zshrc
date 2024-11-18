# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History settings
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000


# Zsh options
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -v
export KEYTIMEOUT=1


# Completion system
fpath+=(/usr/share/zsh/plugins/zsh-completions/src)
zstyle :compinstall filename '/home/mrjxtr/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{A-Z}={a-z}'


# Aliases
alias nv="nvim"
alias cfgchad="cd ~/.config/nvim/ && nvim ."
alias cfgnvim="nv ~/.config/nvim/init.vim"
alias cfgvim="nv ~/.vimrc"
alias cfgp10k="nv ~/.p10k.zsh"
alias cfgtmux="nv ~/.tmux.conf"
alias cfgzsh="nv ~/.zshrc"
alias cls="clear"
alias desk='cd ~/Desktop'
alias home='cd ~'
alias proj='cd ~/Projects'
alias wrep='cd ~/Projects/work'
alias chrome='google-chrome-stable'

# Utility Aliases
alias camon='sudo modprobe uvcvideo'
alias camoff='sudo modprobe -r uvcvideo'

source /usr/share/zsh/plugins/alias-tips/alias-tips.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mrjxtr/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mrjxtr/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mrjxtr/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mrjxtr/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
