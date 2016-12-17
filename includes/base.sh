# Base Functions
function fnUpdate() {
   mkdir -p c:/bpTemp && cd $_
   git clone git@github.com:robsonrosa/bash-profile.git
   cp -R c:/bpTemp/bash-profile/profiles/. ~/
   rm -rf c:/bpTemp
   clear
   if [ -z $1 ]; 
      then reset; echo 'Everything is up to date and your current context is [base]'
      else change $1; echo 'Everything is up to date and your current context is ['$1']'
   fi
}

function fnChange() {
   rm -rf ~/.bash_profile
   cp -R ~/.bash_profile-$1 ~/.bash_profile
   reset
}

# Base 
alias update='fnUpdate'
alias change='fnChange'
alias reset='source ~/.bash_profile'