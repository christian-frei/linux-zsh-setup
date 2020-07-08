# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

### end auto config ######################

# aliases
alias cdjunk="cd ~/dev/junk"
alias cddev="cd ~/dev"
alias junkremoval="rm -rf ~/dev/junk/*"
alias setupJakartaeeProject="~/dev/scripts/jakartaee-starter/setupJakartaeeProject.sh"
alias setupWebProject="~/dev/scripts/webdevelop-starter/setupWebProject.sh"

# java
export JAVA_14_HOME="/usr/java/jdk-14"
export JAVA_11_HOME="/usr/java/jdk-11.0.2"
export JAVA_HOME="$JAVA_14_HOME"
alias j14='export JAVA_HOME="$JAVA_14_HOME" && echo JAVA_HOME="$JAVA_HOME" && export PATH="$JAVA_HOME"/bin:"$PATH"'
alias j11='export JAVA_HOME="$JAVA_11_HOME" && echo JAVA_HOME="$JAVA_HOME" && export PATH="$JAVA_HOME"/bin:"$PATH"'

# browser-sync
alias bsync='browser-sync start -s src -f src -b "google-chrome" --no-notify'

# system variables
export M2_HOME="/usr/share/maven"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xms256m -Xmx512m"

# PATH
export PATH=$JAVA_HOME/bin:$PATH

# starship
eval "$(starship init zsh)"
