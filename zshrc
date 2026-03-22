######################
# ZSHRC
#####################


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

#Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins
#plugins=(web-search timer python git emoji common-aliases colored-man-pages)
#plugins=(emoji timer)
plugins=(emoji)

#load plugins
source $ZSH/oh-my-zsh.sh
export TERM="xterm-256color"


PROMPT="%{$fg_bold[green]%}%{$USER@$HOST%}: %{$fg_bold[white]%}%4d%{$reset_color%}
%{$fg_bold[white]%}>> %{$reset_color%}"


#tab complete - and _ are the same
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

HIST_STAMPS="yyyy-mm-dd"



# Alias definitions.
#cd -P will not follow symlinks, it will take you to the actual folder
alias cd='cd -P'

alias ssh-sacla='ssh padams@xhpcfep.hpc.spring8.or.jp'
alias ssh-maxwell='ssh patricka@max-display007.desy.de'
alias ssh-s3df='ssh padams@s3dflogin.slac.stanford.edu'
alias ssh-davinci='ssh pat@davinci.icm.uu.se'




start-conda (){

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# everyday working env
conda activate env

}


source ${HOME}/.ghcup/env


