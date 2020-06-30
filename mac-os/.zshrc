### env variables
export JAVA_HOME=$(/usr/libexec/java_home -v14)
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_14_HOME=$(/usr/libexec/java_home -v14)
export PATH="/usr/local/opt/maven@3.5/bin:$PATH"

### alias
alias cddev='cd ~/dev'
alias cdjunk='cd ~/dev/junk'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java14='export JAVA_HOME=$JAVA_14_HOME'
alias junkRemoval='rm -rf ~/dev/junk/* && echo "junk removed."'
alias setupWebProject='~/dev/scripts/webdevelop-starter/setupWebProject.sh'

### prompt
autoload -U promptinit; promptinit
# prompt spaceship
prompt pure
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
