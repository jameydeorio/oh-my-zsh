# zsh rainbow-summer theme with git integration
# use this to change your command-line life :)
# jameydeorio

function _prompt_info() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo $(git_prompt_info)
  fi
}

ZSH_THEME_HG_PROMPT_PREFIX=" [%{%B%F{blue}%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{%f%k%b%B%F{red}%}]"
ZSH_THEME_HG_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_HG_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%F{red}[%F{yellow}%n%F{green}@%F{blue}%m %F{magenta}%~%F{red}]%}$reset_color $(_prompt_info)
 🌈  🐝  🌸  '

RPROMPT='%{%B%F{blue}%}%@ - %D{%A, %B %d, %Y}%{%f%k%b%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}‹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[black]%}› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
