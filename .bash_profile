# change format of prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\H: [\W] $ \[$(tput sgr0)\]"

# add conda path
. /Users/sharma/miniconda3/etc/profile.d/conda.sh

# change color of folders in list view
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# change version of Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

#############
## Aliases ##
#############

# access work profile
if [ -f ~/.avaamo_bash ]; then
    . ~/.avaamo_bash
fi

# some ls aliases
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'

# alias for activating conda environment
alias coa="conda activate"
alias cod="conda deactivate"

# alias for jupyter notebook
alias nb="juypter notebook"

# alias for having a detatched working director for bash profile version control
alias dot='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

# alias for jupyter notebook
alias nb="jupyter notebook"

# alias for clearing the terminal
alias c="clear"

# some directory aliases
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

# alias for exiting
alias e="exit"

# alias for python
alias py="python"

# alias for ipython
alias ipy="ipython"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sharma/google-cloud-sdk/path.bash.inc' ]; then . '/Users/sharma/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sharma/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/sharma/google-cloud-sdk/completion.bash.inc'; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set terminal to vi mode
set -o vi
