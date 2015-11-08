# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(git)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vim'
export HISTSIZE=1000000

source /etc/bash_completion.d/g4d

# search in history
bindkey '^t' history-incremental-pattern-search-backward

alias g5tap='git5 export --sq --tap-options=detach,email --tap-project=moonshine.gateway_pdh_dependent,moonshine,moonshine_opt,happyhour.asan,happyhour.opt,private_data_hub,private_data_hub.opt,caribou.coproc,caribou.coproc.fastbuild,pinax,pinax.msan'
alias valid_configs='blaze test indexing/moonshine/gateway/production/configs/valid-configs_test'
alias vimo='vim -Nu ~/.vimrc.olimp'
alias generic_corpus=/google/data/ro/teams/generic-corpus/generic_corpus
# Stolen from Ansley
alias borgquota-cil-legacy="/home/build/static/projects/borg-sre/contracts/borgquota-cil-legacy.par"
alias borgquota=/google/data/ro/projects/borg-sre/contracts/borgquota.par
alias bt_contract=/google/data/ro/projects/roma/live/contracts_cli/bt_contract.par
alias btcfg=/google/data/ro/projects/bigtable/contrib/btcfg/btcfg
alias contracts_cli=/google/data/ro/projects/roma/live/contracts_cli/contracts_cli.par
alias g5diff="git5 diff --name_only | sed -e 's/google3\///g'"
alias gitdiff="git diff --name-only | uniq | sed -e 's/google3\///g'"
alias gclfmt=/google/data/ro/projects/borg/gclfmt
alias pubsub=/google/data/ro/buildstatic/projects/goops/pubsub
alias pubsubcfg=/google/data/ro/projects/goops/pubsub2cfg
alias storage_contract=/google/data/ro/projects/roma/live/contracts_cli/storage_contract.par

git() {
  if [[ $1 == 'merge' ]]; then
    echo 'Use git5 merge, not git merge. git merge does not understand how to merge the READONLY link and it can corrupt your branch, so stay away from it.  type "unset -f git" to remove this warning';
  else
    command git "$@";
  fi;
}

source $ZSH/oh-my-zsh.sh

