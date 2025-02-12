# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

export EDITOR="neovim"
export VISUAL="$EDITOR"
export PATH=$PATH:$(go env GOPATH)/bin # for things like Air (Golang)

# Cargo
export PATH=$PATH:$HOME/.cargo/bin

# Android and Flutter things
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH=$HOME/.flutter/flutter/bin:$PATH # Flutter SDK

# The following lines were added by compinstall
zstyle :compinstall filename '/home/gabriel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
