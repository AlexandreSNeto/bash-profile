# Base Functions
function fnUpdate() {
   BP_CURR_DIR=$PWD
   mkdir -p c:/bpTemp && cd $_
   git clone git@github.com:robsonrosa/bash-profile.git
   cp -R c:/bpTemp/bash-profile/dist/. ~/
   rm -rf c:/bpTemp
   cd $BP_CURR_DIR
   clear
   if [ -z $1 ]; 
      then source ~/.bash_profile; echo 'Everything is up to date and your current context is [base]'
      else change $1; echo 'Everything is up to date and your current context is ['$1']'
   fi
}

function fnChange() {
   rm -rf ~/.bash_profile
   cp -R ~/.bash_profile-$1 ~/.bash_profile
   source ~/.bash_profile
}

# Base 
alias update='fnUpdate'
alias change='fnChange'
alias reset='source ~/.bash_profile'

alias version='echo base version 0.1.1'