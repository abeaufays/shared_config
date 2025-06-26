autoload -Uz vcs_info
setopt PROMPT_SUBST

precmd() { 
    vcs_info
}

virtualenv_info() {
  [[ -n "$VIRTUAL_ENV" ]] && echo "%F{cyan}($(basename $VIRTUAL_ENV))%f "
}

export VIRTUAL_ENV_DISABLE_PROMPT=1
zstyle ':vcs_info:*:*:*' formats '%F{8}[%r]%f%S %F{30}(%b)%f'
zstyle ':vcs_info:*' nvcsformats '%~'
zstyle ':vcs_info:*' actionformats '%F{8}[%r]%f%S %F{30}(%b)%f%F{2}[%a]%f'

PROMPT='${vcs_info_msg_0_}
%B>%b '
RPROMPT='$(virtualenv_info)[%*]'