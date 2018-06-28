# change format of prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u@\H: [\W] $ \[$(tput sgr0)\]"

# add conda path
. /Users/sharma/miniconda3/etc/profile.d/conda.sh

# alias for avaamo environment
alias avaamo="conda activate avaamo"

# alias for jupyter notebook
alias nb="jupyter notebook"

# change color of folders in list view
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# alias for having a detatched working director for bash profile version control
alias dot='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'

# change version of Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
